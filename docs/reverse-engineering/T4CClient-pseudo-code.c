/*
 * T4C Client 1.25-ish - pseudo-code C/C++ reconstruit depuis t4c.exe
 * -----------------------------------------------------------------
 * Fichier de travail de reverse engineering. CE N'EST PAS le source original
 * et il n'est pas destiné à compiler tel quel.
 *
 * Binaire analysé : /mnt/data/t4c.exe
 * Format          : PE32 x86 / Windows GUI
 * Image base      : 0x00400000
 * Entry point     : 0x00520B0D
 * PE timestamp    : 2003-07-12
 * SHA-256         : 569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68
 * PDB référencé   : C:\\T4C Client\\T4C Workfiles\\T4C CLIENT\\Release\\T4C Client.pdb
 *
 * Légende :
 *   [CONFIRME] : directement visible dans l'assembleur.
 *   [CORROBORE] : assembleur + comportement/serveur Python existant concordent.
 *   [INFERE]    : nom ou sémantique déduits du contexte, à vérifier.
 *   [INCONNU]   : structure connue mais nom exact du champ non identifié.
 *
 * Les adresses @0x........ sont des VA du binaire original.
 */

#include <cstdint>
#include <string>
#include <vector>
#include <array>
#include <functional>

// -----------------------------------------------------------------------------
// 1. Primitives TFCPacket
// -----------------------------------------------------------------------------

class TFCPacket {
public:
    // [CONFIRME] @0x4B5AD0
    // Lit un octet et avance le curseur.
    uint8_t read_u8();

    // [CONFIRME] @0x4B5A40
    // Les deux octets sont reconstruits en BIG-ENDIAN/network order :
    //     value = (buf[p] << 8) | buf[p+1]
    uint16_t read_u16_be();

    int16_t read_i16_be() {
        return static_cast<int16_t>(read_u16_be());
    }

    // [CONFIRME] @0x4B5980
    // Les quatre octets sont reconstruits en BIG-ENDIAN :
    //     b0<<24 | b1<<16 | b2<<8 | b3
    uint32_t read_u32_be();

    int32_t read_i32_be() {
        return static_cast<int32_t>(read_u32_be());
    }

    // [CONFIRME] @0x4B5DB0
    // Le vrai code retourne le pointeur du buffer interne et sa taille totale.
    // Nom volontairement générique car cette fonction ne tient pas compte du
    // curseur comme un read_bytes() classique.
    void expose_raw_buffer(const uint8_t** data, int32_t* size) const;

    // [RECONSTRUCTION] idiome vu de très nombreuses fois dans le client.
    std::string read_string_u16() {
        const uint16_t n = read_u16_be();
        std::string s;
        s.resize(n);
        for (uint16_t i = 0; i < n; ++i)
            s[i] = static_cast<char>(read_u8());
        return s;
    }
};


// -----------------------------------------------------------------------------
// 2. Transport UDP / file de paquets (vue d'ensemble)
// -----------------------------------------------------------------------------

/*
 * NOTE : la reconstruction approfondie de la couche transport (endianness
 * little-endian du header, fragmentation, ACK/SAFE, réassemblage, threads)
 * se trouve maintenant dans le fichier dédié :
 *     docs/reverse-engineering/T4CClient-transport-udp.c
 *
 * Les éléments ci-dessous restent une vue d'ensemble de haut niveau.
 */

struct SocketAddress16 {
    uint8_t raw[16];
};

struct ReceivedDatagram {
    SocketAddress16 from;   // offsets +0x00..+0x0F
    uint8_t* bytes;         // +0x10 [CONFIRME]
    int32_t length;         // +0x14 [CONFIRME]
    // autres champs internes jusqu'à 0x2C octets [INCONNU]
};

class T4CSocketLike {
public:
    bool running;                         // champ réel non nommé
    std::function<void(SocketAddress16,
                       const uint8_t*,
                       int32_t)> onPayload; // callback réel à +0x1AC [CONFIRME]

    // Files/ring buffers/locks internes omis.
};


// [CONFIRME] fonction @0x45D490, chaîne "Packet Thread".
void PacketThread(T4CSocketLike* self)
{
    debug("Packet Thread");

    while (/* queued packet count @ self+0x1B4 */ > 0) {
        lock(/* critical section self+0xC8 */);

        if (/* queue empty */) {
            unlock(/* self+0xC8 */);

            // Attend jusqu'à 60 000 ms qu'un évènement signale un paquet.
            // @0x45D4DD..0x45D4EF
            if (wait_for_event(/* self+0xF4 */, 60000) == TIMEOUT)
                continue;

            lock(/* self+0xC8 */);
            if (/* still empty */) {
                unlock(/* self+0xC8 */);
                continue;
            }
        }

        ReceivedDatagram* p = pop_internal_ring_queue(self);
        unlock(/* self+0xC8 */);

        // C'est l'information la plus importante de cette fonction :
        // le header transport fait 12 octets.
        const uint8_t* appPayload = p->bytes + 12;
        const int32_t appLength   = p->length - 12;

        self->onPayload(p->from, appPayload, appLength);

        free(p->bytes);
        free(p);
    }
}


// [CONFIRME] fonction @0x45D5E0 : boucle recvfrom().
void UdpReceiveThread(T4CSocketLike* self)
{
    uint8_t temp[0x400]; // [CONFIRME] buffer stack de 1024 octets

    while (/* self+0x1BC != 0 */) {
        auto* p = static_cast<ReceivedDatagram*>(malloc(0x2C));
        zero_some_internal_fields(p);

        int fromLen = 16;
        p->length = recvfrom(
            /* socket self+0x14 */,
            temp,
            0x400,
            0,
            &p->from,
            &fromLen
        );

        if (p->length < 0) {
            // Le vrai code filtre plusieurs erreurs Winsock et peut alimenter
            // une structure de notification/erreur interne.
            handle_recv_error(self, WSAGetLastError());
            free(p);
            continue;
        }

        p->bytes = clone_bytes(temp, p->length);
        enqueue_received_datagram(self, p);
    }
}


// [CONFIRME à haut niveau] @0x45D7D0 et routine voisine autour de 0x45D970.
// Le code réel maintient une file d'envois/retransmissions et écrit
// "Lost Packet %u." dans "PacketLost.Log" lors de certains timeouts.
void ReliableSendAndLossMaintenance(T4CSocketLike* self)
{
    while (self->running) {
        for (auto& pending : pending_reliable_packets(self)) {
            if (pending.must_send_now()) {
                sendto(/* socket */, pending.datagram, pending.length,
                       /* flags */, pending.destination);
                pending.update_retry_deadline();
            }

            if (pending.considered_lost()) {
                append_log("PacketLost.Log", "Lost Packet %u.",
                           pending.sequence);
                retry_or_drop(pending);
            }
        }

        sleep_ms(125); // valeur observée dans la logique de maintenance
    }
}


// -----------------------------------------------------------------------------
// 3. Sauvegarde locale du mot de passe
// -----------------------------------------------------------------------------

// [CONFIRME] dans la logique utilisant "AccountPassword" : chaque octet du
// mot de passe sauvegardé est XORé avec 0x80. Ce n'est PAS du chiffrement fort.
std::string ObfuscateSavedPassword(std::string s)
{
    for (char& c : s)
        c = static_cast<char>(static_cast<uint8_t>(c) ^ 0x80);
    return s;
}

std::string DeobfuscateSavedPassword(std::string s)
{
    // XOR est involutif.
    return ObfuscateSavedPassword(std::move(s));
}


// -----------------------------------------------------------------------------
// 4. Bootstrap / connexion avant entrée en jeu
// -----------------------------------------------------------------------------

// [CONFIRME] énorme machine d'état @0x489D60, chaîne "Init Socket Func".
// Les noms des états sont reconstruits.
enum class BootstrapState : int {
    STARTING             = 0, // [INFERE]
    QUERYING_MOTD        = 1, // [INFERE]
    QUERYING_PATCH_INFO  = 2, // [INFERE]
    AUTHENTICATING_VER   = 3, // [INFERE]
    LOGIN_UI             = 6, // une transition vers 6 est visible après succès
    // autres états non encore nommés
};

struct BootstrapContext {
    BootstrapState state;
    std::string motdHtmlish;
    bool busyGuard;
};

// [CONFIRME] paquet 66 / 0x42 dans @0x489F63.
// Le client reçoit : u16 longueur, puis longueur octets.
std::string ParsePacket66_MessageOfTheDay(TFCPacket& p)
{
    const uint16_t len = p.read_u16_be();

    std::string out;
    // Le client alloue len + 500 environ; probablement pour les remplacements.
    out.reserve(len + 500);

    for (uint16_t i = 0; i < len; ++i) {
        const uint8_t c = p.read_u8();

        if (c == '\n') {
            // [CONFIRME] LF ignoré.
            continue;
        }
        if (c == '\r') {
            // [CONFIRME] CR devient exactement trois caractères : ' ', '<', '>'.
            // Cela ressemble à un marqueur de mise en page de l'ancien contrôle UI.
            out += " <>";
            continue;
        }

        out.push_back(static_cast<char>(c));
    }

    return out;
}


// [CONFIRME] sous-dispatch du bootstrap dans @0x489D60.
void DispatchPreSessionPacket(BootstrapContext& ctx,
                              uint16_t packetId,
                              TFCPacket& p)
{
    switch (packetId) {
    case 10: // @0x48AD6A [sémantique exacte à confirmer]
        debug("Sending code 10.");
        HandleBootstrapCode10(p);
        break;

    case 14: // @0x48A97A, chaîne "Receive Registration"
        debug("Receive Registration");
        HandleRegistrationResponse(p);
        break;

    case 66: // traité explicitement dans la phase MOTD @0x489F63
        ctx.motdHtmlish = ParsePacket66_MessageOfTheDay(p);
        break;

    case 91: // @0x48A1D7 [CORROBORE avec QUERY_PATCH_SERVER_INFO]
        HandlePatchServerInformation(p);
        break;

    case 99: { // @0x48AC75, chaîne "Received server version authentication"
        debug("Received server version authentication");
        const uint32_t result = p.read_u32_be();

        if (result == 1) {
            // [CONFIRME] le code place l'UI/la machine d'état sur la valeur 6.
            ctx.state = BootstrapState::LOGIN_UI;
        } else {
            ShowWrongServerVersion();
        }
        break;
    }

    default:
        debug("Unknow packet type [%u]", packetId);
        break;
    }
}


void InitSocketAndBootstrap(BootstrapContext& ctx)
{
    // [CONFIRME] garde globale @0x69879C empêchant une réentrée.
    if (ctx.busyGuard)
        return;
    ctx.busyGuard = true;

    switch (ctx.state) {
    case BootstrapState::QUERYING_MOTD:
        // Le client construit/envoie une requête 66 puis attend la réponse.
        SendPacket(/* id = */ 66);
        PollAndDispatchBootstrapPackets(ctx);
        break;

    case BootstrapState::QUERYING_PATCH_INFO:
        // Le code contient une logique de retry autour de l'ID 91.
        SendPacket(/* id = */ 91);
        PollAndDispatchBootstrapPackets(ctx);
        break;

    case BootstrapState::AUTHENTICATING_VER:
        // Réponse attendue : 99, dont le corps commence par u32 result.
        SendVersionAuthenticationRequest();
        PollAndDispatchBootstrapPackets(ctx);
        break;

    default:
        PollAndDispatchBootstrapPackets(ctx);
        break;
    }

    ctx.busyGuard = false;
}


// -----------------------------------------------------------------------------
// 5. Liste de joueurs en ligne
// -----------------------------------------------------------------------------

// [CONFIRME] @0x4979F0, chaînes "Entering packet player list" et
// "Leaving packet player list" dans la zone fonctionnelle.
struct OnlinePlayerRow {
    std::string first;   // [INCONNU] probablement une colonne nom/compte
    std::string second;  // [INCONNU] probablement l'autre colonne
};

std::vector<OnlinePlayerRow> HandleOnlinePlayerList(TFCPacket& p)
{
    debug("Entering packet player list");

    ClearOnlinePlayerListUI();

    const uint16_t count = p.read_u16_be();
    std::vector<OnlinePlayerRow> rows;
    rows.reserve(count);

    for (uint16_t i = 0; i < count; ++i) {
        const std::string s1 = p.read_string_u16();
        const std::string s2 = p.read_string_u16();

        debug_player_list_pair(s1, s2);

        // [CONFIRME] deux insertions UI séparées sont faites par ligne.
        // L'ordre visuel exact des colonnes reste à nommer proprement.
        AddOnlinePlayerListCell(/*column?*/ 0, s2);
        AddOnlinePlayerListCell(/*column?*/ 1, s1);

        rows.push_back({s1, s2});
    }

    UpdateOnlinePlayerCountLabel(std::to_string(count));
    debug("Leaving packet player list");
    return rows;
}


// -----------------------------------------------------------------------------
// 6. Dispatcher principal en jeu
// -----------------------------------------------------------------------------

/*
 * [CONFIRME] fonction principale @0x4985C0.
 * Elle lit d'abord un u16 packetId avec @0x4B5A40 puis passe par plusieurs
 * jump tables et quelques IDs spéciaux.
 *
 * Les noms ci-dessous viennent du projet serveur Python lorsqu'ils sont connus;
 * l'adresse indique le bloc exact du CLIENT qui reçoit cet ID.
 */
struct PacketDispatchEntry {
    uint16_t id;
    uintptr_t clientBlock;
    const char* workingName;
};

static const PacketDispatchEntry kKnownGameplayDispatch[] = {
    {  1, 0x49B02C, "packet_1" },
    {  9, 0x49AB44, "GET_PLAYER_POS (nom projet Python)" },
    { 10, 0x49B83B, "packet_10" },
    { 11, 0x49B8BD, "packet_11" },
    { 12, 0x49B934, "packet_12" },
    { 13, 0x49A612, "PUT_PLAYER_IN_GAME" },
    { 16, 0x49BAC6, "packet_16" },
    { 18, 0x49A0B6, "packet_18" },
    { 19, 0x49942B, "packet_19" },
    { 20, 0x498BFE, "EXIT_GAME" },
    { 21, 0x499E57, "packet_21" },
    { 27, 0x49A56B, "packet_27" },
    { 29, 0x498E73, "packet_29" },
    { 33, 0x499DC9, "packet_33" },
    { 34, 0x49A000, "packet_34" },
    { 35, 0x499E86, "packet_35" },
    { 36, 0x499FB8, "packet_36" },
    { 37, 0x4992AC, "packet_37" },
    { 38, 0x49A585, "RETURN_TO_MENU" },
    { 39, 0x4998E7, "GET_SKILL_LIST / skill list" },
    { 40, 0x4994E0, "SEND_TRAIN_SKILL_LIST" },
    { 41, 0x499AC6, "packet_41" },
    { 43, 0x498C54, "GET_STATUS / PacketStatus" },
    { 44, 0x499387, "packet_44" },
    { 45, 0x499864, "GET_TIME" },
    { 46, 0x499292, "FROM_PREINGAME_TO_INGAME" },
    { 48, 0x498A1E, "packet_48" },
    { 49, 0x498A3E, "packet_49" },
    { 50, 0x49877C, "packet_50" },
    { 53, 0x498E07, "packet_53" },
    { 55, 0x499661, "packet_55" },
    { 56, 0x499C83, "packet_56" },
    { 57, 0x49BF53, "packet_57" },
    { 59, 0x49E420, "packet_59" },
    { 60, 0x49D972, "GET_NEAR_ITEMS / world-load transition" },
    { 62, 0x49DD27, "GET_ONLINE_PLAYER_LIST" },
    { 63, 0x49DBB1, "packet_63" },
    { 64, 0x49CEE3, "packet_64" },
    { 67, 0x49E04A, "packet_67" },
    { 68, 0x49E0AF, "PUPPET_INFORMATION" },
    { 69, 0x49CEC9, "packet_69" },
    { 70, 0x49CB2E, "packet_70" },
    { 73, 0x49CA74, "packet_73" },
    { 75, 0x49C7E6, "packet_75" },
    { 76, 0x49C4A6, "packet_76" },
    { 78, 0x49C729, "packet_78" },
    { 80, 0x49C2D7, "packet_80" },
    { 82, 0x49C3BE, "packet_82" },
    { 83, 0x49E5A9, "packet_83" },
    { 84, 0x49E679, "packet_84" },
    { 87, 0x49C28A, "packet_87" },
    { 88, 0x49C255, "packet_88" },
    { 92, 0x49E561, "packet_92" },
    { 93, 0x49E215, "packet_93" },
    { 94, 0x49E403, "packet_94" },
    { 95, 0x49D916, "packet_95" },
    { 96, 0x49D8C2, "packet_96" },
    { 97, 0x49DFA0, "packet_97" },
    { 98, 0x49BF99, "packet_98" },
    {100, 0x49DB94, "packet_100" },
};

void HandleGameplayPacket(TFCPacket& p)
{
    const uint16_t packetId = p.read_u16_be(); // [CONFIRME] @0x4985C0

    debug("Received Packet %u", packetId);

    switch (packetId) {
    case 13: HandlePutPlayerInGame13(p);          break;
    case 39: HandlePacket39_SkillList(p);          break;
    case 43: HandlePacket43_Status(p);             break;
    case 60: HandlePacket60_WorldLoadTransition(p);break;
    case 62: HandleOnlinePlayerList(p);            break; // association à consolider
    case 68: HandlePacket68_PuppetInformation(p);  break;

    // Les autres branches existent et sont cartographiées ci-dessus.
    // Elles seront décompilées progressivement.
    default:
        DispatchKnownButNotYetDecompiled(packetId, p);
        break;
    }
}


// -----------------------------------------------------------------------------
// 7. Paquet 39 : liste de compétences
// -----------------------------------------------------------------------------

struct ClientSkill {
    std::string name;        // objet réel : pointeur/chaîne à +0x00
    std::string description; // objet chaîne à +0x04
    uint16_t id;             // +0x14 [CONFIRME]
    uint32_t value;          // +0x18 [CONFIRME, valeur issue d'un u16]
    uint32_t trueValue;      // +0x1C [CONFIRME, valeur issue d'un u16]
    uint8_t type;            // +0x20 [CONFIRME]
};

// [CONFIRME] @0x4998E7, debug "* PAK = 39".
std::vector<ClientSkill> HandlePacket39_SkillList(TFCPacket& p)
{
    debug("* PAK = 39");

    const uint16_t count = p.read_u16_be();

    LockSkillList();
    FreeEveryOldSkillObject();
    ClearSkillList();

    std::vector<ClientSkill> skills;
    skills.reserve(count);

    for (uint16_t i = 0; i < count; ++i) {
        ClientSkill skill{};

        skill.id        = p.read_u16_be();
        skill.type      = p.read_u8();
        skill.value     = p.read_u16_be();
        skill.trueValue = p.read_u16_be();
        skill.name      = p.read_string_u16();
        skill.description = p.read_string_u16();

        // Le vrai client alloue 0x24 octets, appelle ctor @0x49FEA0,
        // puis insère le pointeur dans la liste globale @0x88E5F8.
        InsertSkillIntoClientGlobalList(skill);
        skills.push_back(std::move(skill));
    }

    UnlockSkillList();
    RefreshSkillUI();
    return skills;
}


// -----------------------------------------------------------------------------
// 8. Paquet 43 : statut complet du personnage
// -----------------------------------------------------------------------------

struct CharacterStatus43 {
    int32_t hp;
    int32_t maxHp;
    int16_t mana;
    int16_t maxMana;

    uint32_t xpHi;
    uint32_t xpLo;

    int16_t ac;
    int16_t trueAc;

    int16_t strength;
    int16_t endurance;
    int16_t agility;
    int16_t willpower;
    int16_t wisdom;
    int16_t intelligence;
    int16_t luck;
    int16_t statPoints;

    int16_t trueStrength;
    int16_t trueEndurance;
    int16_t trueAgility;
    int16_t trueWillpower;
    int16_t trueWisdom;
    int16_t trueIntelligence;
    int16_t trueLuck;

    int16_t level;
    int16_t skillPoints;
    int16_t weight;
    int16_t maxWeight;
    int16_t karma;
    int16_t trueMaxHp;

    std::array<int16_t, 4> elementalPower;       // water/earth/air/fire [ordre à confirmer]
    std::array<int16_t, 4> elementalResistance;
    std::array<int16_t, 6> truePower;            // 4 éléments + light/dark
    std::array<int16_t, 6> trueResistance;
    int16_t lightResistance;
    int16_t darkResistance;
};

// [CONFIRME/CORROBORE] @0x498C54, debug "* PAK = 43".
CharacterStatus43 HandlePacket43_Status(TFCPacket& p)
{
    debug("* PAK = 43");

    CharacterStatus43 s{};

    s.hp      = p.read_i32_be();   // global client @0x88E59C
    s.maxHp   = p.read_i32_be();   // global client @0x88E5A4
    s.mana    = p.read_i16_be();   // global client @0x88E5A0
    s.maxMana = p.read_i16_be();   // global client @0x88E5A8

    s.xpHi = p.read_u32_be();
    s.xpLo = p.read_u32_be();

    s.ac     = p.read_i16_be();
    s.trueAc = p.read_i16_be();

    s.strength     = p.read_i16_be();
    s.endurance    = p.read_i16_be();
    s.agility      = p.read_i16_be();
    s.willpower    = p.read_i16_be();
    s.wisdom       = p.read_i16_be();
    s.intelligence = p.read_i16_be();
    s.luck         = p.read_i16_be();
    s.statPoints   = p.read_i16_be();

    s.trueStrength     = p.read_i16_be();
    s.trueEndurance    = p.read_i16_be();
    s.trueAgility      = p.read_i16_be();
    s.trueWillpower    = p.read_i16_be();
    s.trueWisdom       = p.read_i16_be();
    s.trueIntelligence = p.read_i16_be();
    s.trueLuck         = p.read_i16_be();

    s.level       = p.read_i16_be();
    s.skillPoints = p.read_i16_be();
    s.weight      = p.read_i16_be();
    s.maxWeight   = p.read_i16_be();
    s.karma       = p.read_i16_be();
    s.trueMaxHp   = p.read_i16_be();

    for (auto& v : s.elementalPower)      v = p.read_i16_be();
    for (auto& v : s.elementalResistance) v = p.read_i16_be();
    for (auto& v : s.truePower)           v = p.read_i16_be();
    for (auto& v : s.trueResistance)      v = p.read_i16_be();
    s.lightResistance = p.read_i16_be();
    s.darkResistance  = p.read_i16_be();

    UpdateCharacterGlobalsAndStatusUI(s);
    return s;
}


// -----------------------------------------------------------------------------
// 9. Paquet 60 : transition de chargement du monde
// -----------------------------------------------------------------------------

// [CONFIRME à haut niveau] @0x49D972, debug "* PAK = 60".
// Cette branche contient surtout des transitions d'état/UI et relance/crée des
// threads du monde. Le corps réseau n'est pas lu comme une longue liste d'items
// dans cette branche du client.
void HandlePacket60_WorldLoadTransition(TFCPacket& p)
{
    debug("* PAK = 60");

    SetWorldLoadingFlags();
    InitializeOrResumeWorldSubsystem();

    // Appels vers les grosses boucles/threads dont les entrées sont notamment
    // autour de @0x4B6E70 et @0x4B9410.
    EnsureWorldThreadsRunning();

    if (/* global transition flag */) {
        // [CONFIRME] le client construit alors un paquet ID 46 / 0x2E.
        TFCPacket reply;
        reply_write_u16_be(reply, 46);
        SendApplicationPacket(reply);
    }
}


// -----------------------------------------------------------------------------
// 10. Paquet 68 : informations "puppet"
// -----------------------------------------------------------------------------

struct PuppetInformation68 {
    uint32_t unitId;

    // [CONFIRME] exactement HUIT u16 sont lus @0x49E0C9..0x49E11C.
    // Leur rôle précis (apparence/slots/états) reste à nommer.
    uint16_t field1;
    uint16_t field2;
    uint16_t field3;
    uint16_t field4;
    uint16_t field5;
    uint16_t field6;
    uint16_t field7;
    uint16_t field8;
};

// [CONFIRME] @0x49E0AF, debug "* PAK = 68 {".
PuppetInformation68 HandlePacket68_PuppetInformation(TFCPacket& p)
{
    debug("* PAK = 68 {");

    PuppetInformation68 info{};
    info.unitId = p.read_u32_be();
    info.field1 = p.read_u16_be();
    info.field2 = p.read_u16_be();
    info.field3 = p.read_u16_be();
    info.field4 = p.read_u16_be();
    info.field5 = p.read_u16_be();
    info.field6 = p.read_u16_be();
    info.field7 = p.read_u16_be();
    info.field8 = p.read_u16_be();

    LockPuppetState(); // lock global autour de @0x5A6AA0

    if (info.unitId == /* local player unit id @0x88E0BC */ GetLocalUnitId()) {
        const bool everyFieldZero =
            info.field1 == 0 && info.field2 == 0 &&
            info.field3 == 0 && info.field4 == 0 &&
            info.field5 == 0 && info.field6 == 0 &&
            info.field7 == 0 && info.field8 == 0;

        // [CONFIRME] deux flags globaux client sont ajustés selon la combinaison
        // de champs nuls et un autre état global @0x88E548.
        UpdateLocalPuppetFlags(everyFieldZero, info.field6 /* champ testé séparément */);
    }

    UnlockPuppetState();

    // [CONFIRME] appel @0x511DC0 avec exactement 9 arguments :
    // unitId + huit valeurs u16.
    UpdatePuppetObject(
        info.unitId,
        info.field1, info.field2, info.field3, info.field4,
        info.field5, info.field6, info.field7, info.field8
    );

    debug("} PAK = 68");
    return info;
}

/*
 * IMPORTANT POUR LE SERVEUR PYTHON ACTUEL
 * ---------------------------------------
 * Le code Python fourni écrit actuellement, lors de l'entrée en jeu :
 *
 *     puppet.write_i32(unit_id)
 *     for _ in range(9):
 *         puppet.write_i16(0)
 *
 * Or le CLIENT lit 1 x u32 + 8 x u16, pas 9.
 * La structure compatible observée ici est donc 4 + 16 = 20 octets de corps
 * (hors ID/encapsulation TFCPacket), et non 4 + 18 = 22 octets.
 *
 * Correction probable : range(8).
 */


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
 *
 * Le détail complet (fragmentation, ACK/SAFE, réassemblage, threads,
 * retransmissions) est reconstruit dans :
 *     docs/reverse-engineering/T4CClient-transport-udp.c
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
// 12. Paquet 13 — PUT_PLAYER_IN_GAME : structure client
// -----------------------------------------------------------------------------

/*
 * Handler principal observé à @0x49A612.
 * 0x4B5AD0 = lecture u8
 * 0x4B5980 = lecture u32 big-endian
 * 0x4B5A40 = lecture u16 big-endian
 *
 * Le serveur Python actuel a déjà une structure très proche de cette séquence.
 */
struct PutPlayerInGame13 {
    uint8_t  result;
    uint32_t unitId;

    uint16_t x;
    uint16_t y;
    uint16_t world;

    uint32_t hp;
    uint32_t maxHp;
    uint16_t mana;
    uint16_t maxMana;

    // Trois valeurs 64 bits sont transmises en deux u32 : high puis low.
    uint32_t xpHi;
    uint32_t xpLo;

    uint32_t nextLevelXpHi;
    uint32_t nextLevelXpLo;

    uint16_t strength;
    uint16_t endurance;
    uint16_t agility;
    uint16_t willpower;
    uint16_t wisdom;
    uint16_t intelligence;
    uint16_t luck;

    // Six octets puis l'année u16.
    uint8_t second;
    uint8_t minute;
    uint8_t hour;
    uint8_t weekday;
    uint8_t day;
    uint8_t month;
    uint16_t year;

    uint32_t gold;
    uint16_t level;

    uint32_t previousLevelXpHi;
    uint32_t previousLevelXpLo;
};

uint64_t ReadSplitU64(TFCPacket& p)
{
    uint32_t hi = p.ReadU32();
    uint32_t lo = p.ReadU32();

    // Le client appelle le helper 64-bit @0x51DA90 (_allmul) avec 2^32,
    // puis ajoute la deuxième moitié : exactement (hi << 32) + lo.
    return ((uint64_t)hi << 32) | lo;
}

void HandlePutPlayerInGame13(TFCPacket& p)
{
    uint8_t result = p.ReadU8();

    uint32_t unitId = p.ReadU32();
    uint16_t x      = p.ReadU16();
    uint16_t y      = p.ReadU16();
    uint16_t world  = p.ReadU16();

    uint32_t hp      = p.ReadU32();
    uint32_t maxHp   = p.ReadU32();
    uint16_t mana    = p.ReadU16();
    uint16_t maxMana = p.ReadU16();

    uint64_t xp          = ReadSplitU64(p);
    uint64_t nextLevelXp = ReadSplitU64(p);

    uint16_t str  = p.ReadU16();
    uint16_t end  = p.ReadU16();
    uint16_t agi  = p.ReadU16();
    uint16_t wil  = p.ReadU16();
    uint16_t wis  = p.ReadU16();
    uint16_t intel= p.ReadU16();
    uint16_t luck = p.ReadU16();

    uint8_t second  = p.ReadU8();
    uint8_t minute  = p.ReadU8();
    uint8_t hour    = p.ReadU8();
    uint8_t weekday = p.ReadU8();
    uint8_t day     = p.ReadU8();
    uint8_t month   = p.ReadU8();
    uint16_t year   = p.ReadU16();

    uint32_t gold  = p.ReadU32();
    uint16_t level = p.ReadU16();

    uint64_t previousLevelXp = ReadSplitU64(p);

    /*
     * Après cette lecture le client initialise plusieurs sous-systèmes du monde,
     * positionne le joueur avec (x,y,world), puis émet deux requêtes :
     *
     *   packet 39 (0x27)  @0x49A923
     *   packet 60 (0x3C)  @0x49AAA1
     *
     * Ceci confirme que le paquet 13 est le pivot entre PRE_INGAME et le chargement
     * des données de gameplay côté client.
     */
    InitializeWorldAfterPlayerLoad();
    PlaceLocalPlayer(x, y, world, /*arg=*/0);
    SendPacket(39);
    SendPacket(60);
}


// -----------------------------------------------------------------------------
// 13. Corrections / implications pour la réimplémentation Python
// -----------------------------------------------------------------------------

/*
 * [CONFIRME] 1) Header transport little-endian :
 *
 *   struct.pack("<HHII", control, declaredLength, sequence, fragmentGroup)
 *
 * tandis que TFCPacket reste big-endian pour ses u16/u32.
 *
 * [CONFIRME] 2) Valeurs de flags :
 *   ACK      = 0x0100
 *   SAFE     = 0x0200
 *   FRAGMENT = 0x0400
 *   index    = control & 0xFF
 *
 * [CONFIRME] 3) Taille fragment de données = 1012.
 *
 * [CONFIRME] 4) Dans un fragment, declaredLength est la longueur du datagramme
 * original avant fragmentation, et NON la longueur wire du fragment courant.
 * C'est une correction importante pour un encode_fragment Python.
 *
 * [CONFIRME] 5) groupId = valeur du compteur de séquence capturée avant le split.
 * Chaque fragment reçoit ensuite sa propre séquence incrémentale.
 *
 * [CONFIRME] 6) Le dernier fragment possède le quirk de +12 décrit plus haut.
 * Pour une compatibilité stricte avec le client 1.25, il est préférable de le
 * reproduire plutôt que d'implémenter une fragmentation UDP "idéale" moderne.
 *
 * [CONFIRME] 7) Réassemblage : timeout = 10 secondes.
 *
 * [CONFIRME] 8) Déduplication : ring de 100 numéros de séquence.
 *
 * [CONFIRME] 9) Un SAFE dupliqué est acquitté AVANT d'être rejeté comme doublon.
 * Ceci est important : sinon le serveur peut retransmettre indéfiniment si le
 * premier ACK s'est perdu.
 *
 * [CONFIRME] 10) Packet 68 PUPPET_INFORMATION reste :
 *   1 x u32 + 8 x u16
 * et non 1 x u32 + 9 x u16.
 */


// -----------------------------------------------------------------------------
// 14. Prochaines cibles utiles du client
// -----------------------------------------------------------------------------

/*
 * Le premier fichier indiquait @0x4B9630 comme "coeur TFCSocket". Correction :
 * ce bloc appartient surtout à la grande boucle / machine d'état applicative.
 * Le transport bas niveau est bien concentré autour de @0x45C550..@0x45DEE0.
 *
 * Priorités suivantes :
 *
 * 1) Inventaire / équipement : retrouver les handlers qui consomment les listes
 *    d'objets et les structures d'item.
 *
 * 2) Sorts : chaînes "SPELL ID [", "SpellCasting", "[USESPELLUNIT]".
 *    Objectif : paquet d'apprentissage, cooldown/cast, cible unité/sol.
 *
 * 3) Skills : packet 40 et requêtes USESKILLUNIT.
 *
 * 4) In-view units / mouvement : compléter les formats spawn/despawn et
 *    synchronisation des coordonnées.
 *
 * 5) Chat, NPC/dialogues et shops, après stabilisation monde + inventaire.
 */
