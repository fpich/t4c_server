/*
 * T4C client 1.25 - reconstruction de la couche transport UDP
 * Source : désassemblage statique de t4c.exe, sans exécution.
 * Les marqueurs [CONFIRME]/[INFERENCE] indiquent le degré de certitude.
 */

#include <cstdint>
#include <cstddef>
#include <cstring>

// -----------------------------------------------------------------------------
// 11. Couche transport UDP — reconstruction approfondie
// -----------------------------------------------------------------------------

/*
 * Statut : [CONFIRME] sauf mention contraire.
 * Fonctions principales :
 *   0x45C550  : création/enqueue d'un datagramme sortant
 *   0x45C670  : préparation des headers + fragmentation
 *   0x45CD10  : traitement ACK/SAFE/déduplication/réassemblage entrant
 *   0x45D490  : thread de livraison vers la couche applicative
 *   0x45D5E0  : thread recvfrom()
 *   0x45D7D0  : thread sendto()
 *   0x45D970  : maintenance retransmission / pertes
 *
 * ATTENTION : l'endianness de ce header est DIFFERENTE de celle du TFCPacket.
 * Le header UDP est manipulé directement par du code x86 et est donc little-endian.
 * Les scalaires du TFCPacket applicatif restent, eux, lus en big-endian.
 */

#pragma pack(push, 1)
struct T4CTransportHeader {
    uint16_t control;        // +0x00 little-endian
    uint16_t declaredLength; // +0x02 little-endian
    uint32_t sequence;       // +0x04 little-endian
    uint32_t fragmentGroup;  // +0x08 little-endian
};
#pragma pack(pop)

static_assert(sizeof(T4CTransportHeader) == 12);

/* control :
 *   bits 0..7  = index du fragment (0 pour paquet non fragmenté)
 *   bit 8      = ACK       (0x0100)
 *   bit 9      = SAFE      (0x0200)
 *   bit 10     = FRAGMENT  (0x0400)
 *   bits 11..15= réservés ; le client rejette s'ils sont non nuls
 */
constexpr uint16_t TR_ACK      = 0x0100;
constexpr uint16_t TR_SAFE     = 0x0200;
constexpr uint16_t TR_FRAGMENT = 0x0400;
constexpr uint16_t TR_RESERVED = 0xF800;
constexpr size_t   UDP_MAX     = 1024;
constexpr size_t   TR_HDR      = 12;
constexpr size_t   FRAG_DATA   = 1012; // 1024 - 12

static uint32_t g_nextSequence; // global observé @0x5A6D88


// -----------------------------------------------------------------------------
// 11.1 Enqueue d'un payload applicatif
// -----------------------------------------------------------------------------

/*
 * Pseudo-code de @0x45C550.
 * Le paramètre appLen est la taille du payload fourni par la couche supérieure.
 * Le transport alloue appLen + 12 octets et copie le payload à buffer+12.
 */
TransportPacket* QueueOutgoing(
    sockaddr_in destination,
    const void* appData,
    uint32_t appLen,
    uint32_t retryDelayMs,
    uint32_t reliableCounter /* 0 => non SAFE */)
{
    TransportPacket* p = alloc_packet_object(); // objet interne ~0x2c octets
    p->buffer = malloc(appLen + TR_HDR);

    memcpy(p->buffer + TR_HDR, appData, appLen);
    p->address = destination;
    p->wireLength = appLen + TR_HDR;
    p->retryDelayMs = retryDelayMs;
    p->nextDeadline = 0xFFFFFFFF;
    p->retriesRemaining = reliableCounter;
    p->refCount = 0;

    enqueue_for_header_preparation(p);
    signal_worker();
    return p;
}


// -----------------------------------------------------------------------------
// 11.2 Construction d'un paquet non fragmenté
// -----------------------------------------------------------------------------

/*
 * @0x45C6EC..0x45C76D : paquet normal non SAFE.
 * @0x45CA01..0x45CAD5 : paquet SAFE non fragmenté.
 */
void PrepareUnfragmented(TransportPacket* p)
{
    T4CTransportHeader* h = (T4CTransportHeader*)p->buffer;

    // Le client conserve la longueur totale du datagramme dans les 16 bits hauts
    // du premier DWORD, donc dans declaredLength.
    h->declaredLength = (uint16_t)p->wireLength;
    h->fragmentGroup  = 0;
    h->sequence       = g_nextSequence++;

    if (p->retriesRemaining != 0) {
        h->control = TR_SAFE;

        /*
         * Le client ne suit qu'un petit nombre de SAFE simultanément.
         * @0x45CA75 compare le nombre d'éléments fiables à 5.
         * Si la limite est atteinte, le suivi de retransmission de ce paquet
         * est désactivé (p->retriesRemaining = 0).
         */
        if (reliable_queue_size() >= 5)
            p->retriesRemaining = 0;
        else
            insert_into_reliable_queue(p);
    }
    else {
        h->control = 0;
    }

    enqueue_send(p);
}


// -----------------------------------------------------------------------------
// 11.3 Fragmentation sortante
// -----------------------------------------------------------------------------

/*
 * @0x45C77F..0x45C9CB.
 * La fragmentation est déclenchée si wireLength > 1024.
 *
 * Nombre de fragments calculé par le client :
 *
 *     fragmentCount = floor((wireLength - 12) / 1012) + 1;
 *
 * Conséquence importante : si la taille du payload est exactement un multiple
 * de 1012, un fragment final supplémentaire est tout de même généré.
 */
void FragmentAndQueue(TransportPacket* original)
{
    const uint32_t originalWireLength = original->wireLength;
    const uint32_t appLen = originalWireLength - TR_HDR;
    const uint8_t fragmentCount =
        (uint8_t)((appLen / FRAG_DATA) + 1);

    // Valeur commune à tout le groupe, capturée AVANT l'incrément des séquences.
    const uint32_t groupId = g_nextSequence;

    for (uint32_t index = 0; index < fragmentCount; ++index) {
        TransportPacket* f = alloc_packet_object();
        f->buffer = malloc(UDP_MAX);
        f->address = original->address;
        f->retryDelayMs = original->retryDelayMs;
        f->nextDeadline = 0xFFFFFFFF;
        f->retriesRemaining = original->retriesRemaining;
        f->refCount = 0;

        const bool last = (index == fragmentCount - 1);
        const uint32_t srcOffset = index * FRAG_DATA;

        if (!last) {
            memcpy(f->buffer + TR_HDR,
                   original->buffer + TR_HDR + srcOffset,
                   FRAG_DATA);
            f->wireLength = UDP_MAX;
        }
        else {
            const uint32_t copiedBytes = appLen % FRAG_DATA;
            memcpy(f->buffer + TR_HDR,
                   original->buffer + TR_HDR + srcOffset,
                   copiedBytes);

            /*
             * QUIRK LEGACY CONFIRME : la longueur du dernier fragment n'est pas
             * calculée avec copiedBytes. L'assembleur fait :
             *
             *     wireLength = (originalWireLength % 1012) + 12;
             *
             * et non :
             *
             *     (appLen % 1012) + 12
             *
             * Cela peut laisser 12 octets supplémentaires non significatifs à la
             * fin d'un message fragmenté. Le réassembleur client présente la même
             * asymétrie, ce qui rend ce comportement cohérent avec lui-même.
             */
            f->wireLength = (originalWireLength % FRAG_DATA) + TR_HDR;
        }

        T4CTransportHeader* h = (T4CTransportHeader*)f->buffer;

        // L'index est directement placé dans le low byte de control.
        h->control = (uint16_t)(index & 0xFF) | TR_FRAGMENT;
        if (f->retriesRemaining != 0)
            h->control |= TR_SAFE;

        // Tous les fragments annoncent la longueur du datagramme ORIGINAL.
        h->declaredLength = (uint16_t)originalWireLength;

        // Chaque fragment a sa propre séquence.
        h->sequence = g_nextSequence++;

        // Mais tous partagent le même identifiant de groupe.
        h->fragmentGroup = groupId;

        if (f->retriesRemaining != 0) {
            if (reliable_queue_size() >= 5)
                f->retriesRemaining = 0;
            else
                insert_into_reliable_queue(f);
        }

        enqueue_send(f);
    }

    free(original->buffer);
    free(original);
}


// -----------------------------------------------------------------------------
// 11.4 Thread UDP de réception
// -----------------------------------------------------------------------------

/*
 * @0x45D5E0.
 * recvfrom() utilise un tampon de 0x400 octets.
 * Les datagrammes normaux doivent avoir une taille comprise entre 12 et 1024.
 * Un cas spécial d'un octet existe via un callback secondaire ; il semble lié
 * à une voie auxiliaire/contrôle et n'est pas nécessaire au TFCPacket normal.
 */
void ReceiveThread(SocketContext* ctx)
{
    uint8_t stackBuffer[1024];

    while (ctx->receiveThreadRunning) {
        sockaddr_in from{};
        int fromLen = 16;
        int n = recvfrom(ctx->socket,
                         (char*)stackBuffer,
                         1024,
                         0,
                         (sockaddr*)&from,
                         &fromLen);

        if (n < 0) {
            handle_socket_error();
            continue;
        }

        if (n >= 12 && n <= 1024) {
            TransportPacket* p = alloc_packet_object();
            p->address = from;
            p->wireLength = n;
            p->buffer = malloc(n);
            memcpy(p->buffer, stackBuffer, n);
            enqueue_received_datagram(p);
            signal_worker();
        }
        else if (n == 1 && ctx->singleByteCallback != nullptr) {
            // [INFERENCE] voie auxiliaire observée @0x45D737.
            ctx->singleByteCallback(stackBuffer[0], &from, &p->wireLength);
            enqueue_send(p);
        }
    }
}


// -----------------------------------------------------------------------------
// 11.5 ACK et SAFE entrants
// -----------------------------------------------------------------------------

/*
 * @0x45CD10.
 * Ordre réel du traitement :
 *   1) vérifier bits réservés
 *   2) si ACK => retirer l'élément fiable correspondant
 *   3) sinon, si SAFE => envoyer immédiatement un ACK
 *   4) déduplication sur sequence
 *   5) fragment / non fragment
 */
void ProcessIncoming(TransportPacket* p)
{
    T4CTransportHeader* h = (T4CTransportHeader*)p->buffer;

    if (h->control & TR_RESERVED) {
        drop(p);
        return;
    }

    // ----- ACK ---------------------------------------------------------------
    if (h->control & TR_ACK) {
        // ACK reconnu uniquement pour un datagramme de 12 octets.
        if (p->wireLength != TR_HDR) {
            drop(p);
            return;
        }

        // Dans le high byte, aucun flag autre que ACK n'est accepté.
        if ((h->control & 0xFE00) != 0) {
            drop(p);
            return;
        }

        TransportPacket* sent = find_reliable_by_sequence(h->sequence);
        if (sent != nullptr) {
            remove_from_reliable_queue(sent);
            sent->acked = true; // champ +0x24 mis à 1 dans l'objet interne
            enqueue_or_release_after_ack(sent);
        }

        drop(p);
        return;
    }

    // ----- SAFE : acquittement immédiat -------------------------------------
    if (h->control & TR_SAFE) {
        TransportPacket* ack = alloc_packet_object();
        ack->buffer = malloc(TR_HDR);
        ack->wireLength = TR_HDR;
        ack->address = p->address;
        ack->retriesRemaining = 0;
        ack->nextDeadline = 0xFFFFFFFF;

        /*
         * @0x45D000 initialise le premier DWORD à zéro puis positionne ACK.
         * sequence recopie exactement la séquence du paquet reçu.
         * Le champ +8 n'est pas explicitement initialisé dans ce bloc ; pour une
         * réimplémentation saine, 0 est la valeur naturelle.
         */
        T4CTransportHeader* ah = (T4CTransportHeader*)ack->buffer;
        ah->control = TR_ACK;
        ah->declaredLength = 0;
        ah->sequence = h->sequence;
        ah->fragmentGroup = 0; // recommandé ; assembleur : non explicitement écrit ici

        enqueue_send(ack);
    }

    // ----- Déduplication -----------------------------------------------------
    if (sequence_already_seen(h->sequence)) {
        // Important : pour un SAFE dupliqué, l'ACK a déjà été envoyé au-dessus.
        drop(p);
        return;
    }

    remember_sequence_in_ring_of_100(h->sequence); // globals 0x5A6BF4..0x5A6D84

    if (h->control & TR_FRAGMENT)
        ProcessFragment(p);
    else
        ProcessWholeDatagram(p);
}


// -----------------------------------------------------------------------------
// 11.6 Paquet non fragmenté entrant
// -----------------------------------------------------------------------------

void ProcessWholeDatagram(TransportPacket* p)
{
    T4CTransportHeader* h = (T4CTransportHeader*)p->buffer;

    // @0x45D43F : le low byte doit être nul.
    if ((h->control & 0x00FF) != 0) {
        drop(p);
        return;
    }

    // @0x45D447 : pas de group ID sur un paquet entier.
    if (h->fragmentGroup != 0) {
        drop(p);
        return;
    }

    enqueue_completed_transport_packet(p);
    signal_packet_thread();
}


// -----------------------------------------------------------------------------
// 11.7 Réassemblage des fragments
// -----------------------------------------------------------------------------

struct ReassemblyState {
    sockaddr_in address;
    uint8_t* buffer;
    uint32_t totalObjectLength;
    uint32_t expiresAt;
    uint32_t remainingFragments;
    // ... liens de liste / refcount internes
};

void ProcessFragment(TransportPacket* p)
{
    T4CTransportHeader* h = (T4CTransportHeader*)p->buffer;
    const uint32_t index = h->control & 0xFF;
    const uint32_t incomingPayload = p->wireLength - TR_HDR;

    /*
     * @0x45D0E1..0x45D108 :
     * index*1012 + wireLength - 12 <= declaredLength
     */
    if (index * FRAG_DATA + incomingPayload > h->declaredLength) {
        drop(p);
        return;
    }

    if (p->wireLength > UDP_MAX) {
        drop(p);
        return;
    }

    ReassemblyState* r = find_reassembly_by_group(h->fragmentGroup);

    if (r != nullptr) {
        memcpy(r->buffer + TR_HDR + index * FRAG_DATA,
               p->buffer + TR_HDR,
               incomingPayload);

        if (--r->remainingFragments == 0) {
            remove_from_reassembly_timeout_list(r);
            enqueue_completed_transport_packet((TransportPacket*)r);
            signal_packet_thread();
        }

        drop(p);
        return;
    }

    // Premier fragment vu pour ce groupe, quel que soit son index d'arrivée.
    r = alloc_reassembly_state();

    /*
     * QUIRK LEGACY CONFIRME @0x45D373..0x45D38F :
     *   allocation = declaredLength + 12
     *   objectLength = declaredLength + 12
     *
     * Comme declaredLength contient déjà la longueur totale du datagramme
     * original côté émetteur, ce choix ajoute encore 12 octets.
     */
    r->buffer = malloc((uint32_t)h->declaredLength + TR_HDR);
    r->totalObjectLength = (uint32_t)h->declaredLength + TR_HDR;
    r->address = p->address;

    memcpy(r->buffer, p->buffer, TR_HDR);
    memcpy(r->buffer + TR_HDR + index * FRAG_DATA,
           p->buffer + TR_HDR,
           incomingPayload);

    /*
     * @0x45D3F9..0x45D40E :
     * remaining = floor((declaredLength - 12) / 1012)
     *
     * Ceci correspond au nombre de fragments encore attendus après la création
     * de l'état, compte tenu du fragment supplémentaire produit quand la taille
     * est exactement divisible par 1012.
     */
    r->remainingFragments =
        ((uint32_t)h->declaredLength - TR_HDR) / FRAG_DATA;

    // GetTickCount() + 10000 ms.
    r->expiresAt = GetTickCount() + 10000;
    insert_reassembly_with_timeout(r);

    drop(p);
}


// -----------------------------------------------------------------------------
// 11.8 Livraison à la couche TFCPacket
// -----------------------------------------------------------------------------

/*
 * @0x45D490.
 * Le thread attend jusqu'à 60000 ms quand sa file est vide.
 * Pour chaque datagramme complet :
 *
 *     callback(sockaddr,
 *              packet->buffer + 12,
 *              packet->wireLength - 12);
 *
 * Le header transport n'est donc JAMAIS visible par le dispatcher TFCPacket.
 */
void PacketDeliveryThread(SocketContext* ctx)
{
    while (ctx->packetThreadRunning) {
        TransportPacket* p = wait_and_pop_completed(/*timeout=*/60000);
        if (!p)
            continue;

        ctx->applicationCallback(
            p->address,
            p->buffer + TR_HDR,
            p->wireLength - TR_HDR);

        free(p->buffer);
        free(p);
    }
}


// -----------------------------------------------------------------------------
// 11.9 Thread d'envoi et retransmission SAFE
// -----------------------------------------------------------------------------

/*
 * @0x45D7D0 : sendto()
 *
 * sendto(socket,
 *        p->buffer,
 *        p->wireLength,
 *        0,
 *        &p->address,
 *        16);
 *
 * Après l'envoi, si l'objet doit rester vivant (SAFE non acquitté), sa prochaine
 * échéance devient GetTickCount() + p->retryDelayMs.
 */
void SendThread(SocketContext* ctx)
{
    while (ctx->sendThreadRunning) {
        TransportPacket* p = wait_and_pop_send_queue(/*timeout=*/60000);
        if (!p)
            continue;

        if (!p->acked && p->refCount != 0) {
            sendto(ctx->socket,
                   (const char*)p->buffer,
                   p->wireLength,
                   0,
                   (sockaddr*)&p->address,
                   16);
        }

        --p->refCount;

        if ((p->retriesRemaining == 0 || p->acked) && p->refCount == 0) {
            free_packet(p);
        }
        else {
            p->nextDeadline = GetTickCount() + p->retryDelayMs;
        }
    }
}


// -----------------------------------------------------------------------------
// 11.10 Maintenance pertes / retransmissions
// -----------------------------------------------------------------------------

/*
 * @0x45D970, appelée via le thread wrapper @0x45DEE0.
 * La boucle dort 125 ms (0x7D) entre les balayages.
 */
void ReliableMaintenance(SocketContext* ctx)
{
    while (ctx->maintenanceRunning) {
        Sleep(125);
        uint32_t now = GetTickCount();

        for (TransportPacket* p : reliable_packets_by_deadline()) {
            if (p->nextDeadline == 0xFFFFFFFF || now < p->nextDeadline)
                continue;

            p->nextDeadline = 0xFFFFFFFF;
            --p->retriesRemaining;

            if (p->retriesRemaining != 0) {
                // Le même objet est remis dans la file send.
                ++p->refCount;
                enqueue_send(p);
                signal_sender();
                continue;
            }

            remove_from_reliable_queue(p);

            /*
             * Le log de perte ne contient PAS la séquence transport.
             * Le client construit temporairement un TFCPacket sur buffer+12,
             * lit son premier u16 applicatif, puis écrit :
             *
             *     "Lost Packet %u."
             *
             * où %u = ID du paquet applicatif TFCPacket.
             */
            TFCPacket tmp;
            tmp.AppendRaw(p->buffer + TR_HDR, p->wireLength /* valeur brute observée */);
            tmp.PrepareRead();
            uint16_t applicationPacketId = tmp.ReadU16();
            LogToPacketLost("Lost Packet %u.", applicationPacketId);

            release_packet_when_possible(p);
        }
    }
}
