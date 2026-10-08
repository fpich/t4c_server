/*
 T4C - DOSSIER CLIENT CONSOLIDE
 Base : pseudocode commente V7. Les versions V2 a V6 sont incluses textuellement dans V7.
 Sections annexes : travaux specialises conserves tels quels.
 Document de retro-ingenierie, non compilable, non source original.
*/

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
// 2. Transport UDP / file de paquets
// -----------------------------------------------------------------------------

struct SocketAddress16 {
    uint8_t raw[16];
};

struct ReceivedDatagram {
    SocketAddress16 from;   // offsets +0x00..+0x0F
    uint8_t* bytes;         // +0x10 [CONFIRME]
    int32_t length;         // +0x14 [CONFIRME]
    // autres champs internes jusqu'à 0x2C octets [INCONNU]
};

/*
 * [CORROBORE]
 * Le transport T4C observé autour du payload applicatif utilise un header de
 * 12 octets. PacketThread @0x45D490 livre au callback :
 *
 *     payload = datagram->bytes  + 12
 *     length  = datagram->length - 12
 *
 * Le projet Python existant interprète ces 12 octets comme :
 */
struct T4CTransportHeader {
    uint16_t flags_be;
    uint16_t declared_length_be;
    uint32_t sequence_be;
    uint32_t fragment_or_ack_be;
};
static_assert(sizeof(T4CTransportHeader) == 12);

// [CORROBORE] valeurs actuellement utilisées par la réimplémentation Python.
constexpr uint16_t T4C_FLAG_ACK        = 0x0100;
constexpr uint16_t T4C_FLAG_SAFE       = 0x0200;
constexpr uint16_t T4C_FLAG_FRAGMENTED = 0x0400;

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


// =============================================================================
// 15. INVENTAIRE / EQUIPEMENT -- reconstruction croisee client + serveur
// =============================================================================

/*
 * Les IDs ci-dessous sont confirmes par le code d'emission du client et, pour
 * 18/19, par les fonctions serveur Character::PacketBackpack et
 * Character::packet_equiped.
 *
 * Conventions :
 *   [CONFIRME] = ordre/type verifies des deux cotes lorsque possible.
 *   [INFERE]   = nom semantique du champ deduit de son utilisation.
 */

// -----------------------------------------------------------------------------
// Packet 21 (0x15) -- EQUIP_ITEM, client -> serveur
// Client @0x434C5A
// -----------------------------------------------------------------------------

struct C2S_EquipItem_21
{
    uint16_t packetId;      // = 21
    uint32_t itemUnitId;    // [CONFIRME] identifiant de l'objet selectionne
};

void InventoryUI_EquipItem(/* ItemUI *item */)
{
    TFCPacket p;
    p.write_u16_be(21);
    p.write_u32_be(selectedItem->unitId);
    SendPacket(p);
}


// -----------------------------------------------------------------------------
// Packet 22 (0x16) -- UNEQUIP_SLOT, client -> serveur
// Client @0x4348E0, construction @0x434924
// -----------------------------------------------------------------------------

/*
 * Le client convertit le widget d'equipement clique en un index de slot puis
 * n'envoie QUE cet octet. Les valeurs vues dans le mapping UI incluent :
 *   0,1,2,3,4,6,7,8,9,11,12,14,15.
 */
struct C2S_UnequipSlot_22
{
    uint16_t packetId;      // = 22
    uint8_t  equipSlot;     // [CONFIRME]
};

void InventoryUI_UnequipClicked(EquipmentWidget *widget)
{
    uint8_t slot = ResolveEquipmentSlot(widget); // mapping UI -> slot protocole

    // Le client met aussi a jour son modele/UI local avant l'envoi.
    LocalEquipment_Remove(slot);

    TFCPacket p;
    p.write_u16_be(22);
    p.write_u8(slot);
    SendPacket(p);
}


// -----------------------------------------------------------------------------
// Packet 23 (0x17) -- USE_ITEM, client -> serveur
// Client @0x434536. Trace debug : "Using item!"
// -----------------------------------------------------------------------------

struct C2S_UseItem_23
{
    uint16_t packetId;      // = 23
    uint16_t x;             // [CONFIRME] 0 lors d'un double-clic inventaire
    uint16_t y;             // [CONFIRME] 0 lors d'un double-clic inventaire
    uint32_t itemUnitId;    // [CONFIRME]
};

void InventoryUI_UseItem(ItemUI *item)
{
    TFCPacket p;
    p.write_u16_be(23);
    p.write_u16_be(0);
    p.write_u16_be(0);
    p.write_u32_be(item->unitId);
    SendPacket(p);
}

/*
 * [INFERE] Les champs x/y permettent probablement la variante "utiliser a une
 * position / au sol". Pour un usage direct depuis le sac, le client les met a 0.
 */


// -----------------------------------------------------------------------------
// Packet 18 (0x12) -- BACKPACK / INVENTORY LIST, serveur -> client
// Client handler @0x49A0B6
// Serveur : Character::PacketBackpack @0x420760
// -----------------------------------------------------------------------------

struct BackpackItem18
{
    uint16_t templateField; // [CONFIRME TYPE] virtual item getter +0x2C
    uint32_t unitId;        // [CONFIRME] Unit::GetID()
    uint16_t baseField;     // [CONFIRME TYPE] virtual item getter +0x28
    uint32_t quantity;      // [CONFIRME] Objects::GetQty()
    uint32_t uniqueData;    // [CONFIRME TYPE] 0 si !Objects::IsUnique()
};

/*
 * Le handler client lit avant la liste :
 *   u8  headerFlag;
 *   u32 headerValue;
 *   u16 itemCount;
 * puis itemCount entrees.
 *
 * Character::PacketBackpack() cote serveur ecrit le itemCount et les entrees;
 * les deux premiers champs sont donc ajoutes par son appelant. Leur signification
 * exacte reste a nommer.
 */
void HandlePacket18_Backpack(TFCPacket &p)
{
    uint8_t  headerFlag  = p.read_u8();       // [SEMANTIQUE A CONFIRMER]
    uint32_t headerValue = p.read_u32_be();   // [SEMANTIQUE A CONFIRMER]
    uint16_t count       = p.read_u16_be();

    std::vector<ItemUI *> incoming;

    for (uint16_t i = 0; i < count; ++i)
    {
        BackpackItem18 raw;
        raw.templateField = p.read_u16_be();
        raw.unitId        = p.read_u32_be();
        raw.baseField     = p.read_u16_be();
        raw.quantity      = p.read_u32_be();
        raw.uniqueData    = p.read_u32_be();

        ItemUI *item = new ItemUI();
        item->unitId   = raw.unitId;
        item->quantity = raw.quantity;

        // Le client resolve une definition graphique/template a partir d'un
        // des champs u16, puis fusionne la nouvelle liste avec l'ancienne.
        item->definition = LookupItemDefinition(raw.templateField);

        incoming.push_back(item);
    }

    MergeBackpackWithExistingUI(incoming, headerFlag, headerValue);
}


// -----------------------------------------------------------------------------
// Packet 19 (0x13) -- EQUIPMENT SNAPSHOT, serveur -> client
// Client handler @0x49942B
// Serveur : Character::packet_equiped @0x419870
//            Character::PacketSingleEquip @0x4196F0
// -----------------------------------------------------------------------------

struct EquippedItem19
{
    uint32_t unitId;        // Unit::GetID()
    uint16_t templateField; // virtual getter +0x2C
    uint16_t baseField;     // virtual getter +0x28
    uint16_t quantity;      // Objects::GetQty(), tronque en u16 dans ce paquet
    uint32_t uniqueData;    // 0 si non unique
    CString  displayName;   // ecrit par PacketSingleEquip
};

/*
 * Le serveur ecrit :
 *   u16 packetId = 19;
 *   u8  rangedAttack = Character::RangedAttack();
 * puis une entree d'equipement dans l'ordre fixe :
 *   0,2,3,4,6,7,8,9,11,12,14,15,1
 *
 * Le client appelle son parseur de slot dans exactement ce meme ordre.
 */
void HandlePacket19_Equipment(TFCPacket &p)
{
    bool rangedAttack = p.read_u8() != 0;

    static const uint8_t slots[] = {
        0, 2, 3, 4, 6, 7, 8, 9, 11, 12, 14, 15, 1
    };

    for (uint8_t slot : slots)
        ParseEquipmentSlot19(p, slot);

    InventoryUI_RefreshEquipment();
}

void ParseEquipmentSlot19(TFCPacket &p, uint8_t slot)
{
    EquippedItem19 item;
    item.unitId        = p.read_u32_be();
    item.templateField = p.read_u16_be();
    item.baseField     = p.read_u16_be();
    item.quantity      = p.read_u16_be();
    item.uniqueData    = p.read_u32_be();
    item.displayName   = p.read_cstring();

    // unitId == 0 correspond a un slot vide; le serveur ecrit alors des zeros
    // pour tous les champs et une CString vide.
    Equipment_SetSlot(slot, item);
}


// -----------------------------------------------------------------------------
// Packet 59 (0x3B) -- ITEM NAME LOOKUP
// Requete client @0x433C7B / @0x43425E
// Reponse client handler @0x49E420
// -----------------------------------------------------------------------------

struct C2S_ItemNameRequest_59
{
    uint16_t packetId;  // = 59
    uint32_t itemId;
};

struct S2C_ItemNameResponse_59
{
    uint32_t itemId;
    uint16_t nameLength;
    uint8_t  name[nameLength];
};

void HandlePacket59_ItemName(TFCPacket &p)
{
    uint32_t itemId = p.read_u32_be();
    uint16_t len    = p.read_u16_be();
    std::string name = p.read_bytes_as_string(len);

    // Le client parcourt sa liste d'items en attente; si l'ID correspond,
    // il copie le nom dans l'objet UI et notifie le widget associe.
    ResolvePendingItemName(itemId, name);
}


// =============================================================================
// 16. SORTS -- emission, reception et animation
// =============================================================================

// -----------------------------------------------------------------------------
// Packet 32 (0x20) -- USE_SPELL_UNIT / CAST SPELL, client -> serveur
// Client @0x455BF0 (autre chemin UI voisin @0x4559E0)
// Serveur parser autour de @0x480240
// -----------------------------------------------------------------------------

struct C2S_UseSpellUnit_32
{
    uint16_t packetId;      // = 32
    uint16_t spellId;
    uint16_t targetX;
    uint16_t targetY;
    uint32_t targetUnitId;
};

bool SendUseSpellUnit(uint16_t spellId, uint32_t targetUnitId)
{
    uint16_t x, y;

    if (targetUnitId == gLocalPlayer.unitId)
    {
        x = gLocalPlayer.x;
        y = gLocalPlayer.y;
    }
    else
    {
        // @0x512960 dans ce chemin : resolution de la cible visible/relative.
        if (!ResolveVisibleTargetPosition_Spell(targetUnitId, &x, &y))
            return false;
    }

    TFCPacket p;
    p.write_u16_be(32);
    p.write_u16_be(spellId);
    p.write_u16_be(x);
    p.write_u16_be(y);
    p.write_u32_be(targetUnitId);
    SendPacket(p);
    return true;
}

/*
 * Le parser serveur confirme exactement l'ordre spellId, x, y, targetUnitId.
 * Si targetUnitId != 0, il tente de retrouver l'unite et appelle la variante
 * Character::CastSpell(spellId, Unit*). Sinon il utilise la variante WorldPos.
 */


// -----------------------------------------------------------------------------
// Packet 64 (0x40) -- SPELL_CASTING / effet de sort, serveur -> clients
// Client handler @0x49CEE3
// Serveur Broadcast::BCSpellEffect @0x40FF00
// -----------------------------------------------------------------------------

struct S2C_SpellCasting_64
{
    uint16_t spellId;
    uint32_t casterUnitId;
    uint32_t targetUnitId;

    // Deux WorldPos sont passes a Broadcast::BCSpellEffect.
    // Le serveur n'en serialise que X et Y; la composante world/map est omise.
    uint16_t posB_X;
    uint16_t posB_Y;
    uint16_t posA_X;
    uint16_t posA_Y;

    uint32_t effectId;
    uint32_t childId;
};

void HandlePacket64_SpellCasting(TFCPacket &p)
{
    S2C_SpellCasting_64 s;
    s.spellId      = p.read_u16_be();
    s.casterUnitId = p.read_u32_be();
    s.targetUnitId = p.read_u32_be();

    s.posB_X = p.read_u16_be();
    s.posB_Y = p.read_u16_be();
    s.posA_X = p.read_u16_be();
    s.posA_Y = p.read_u16_be();

    s.effectId = p.read_u32_be();
    s.childId  = p.read_u32_be();

    // Le client compare casterUnitId/targetUnitId au joueur local, resout les
    // positions effectives puis cree/declenche le FX du sort.
    SpellFX_Play(
        s.spellId,
        s.casterUnitId,
        s.targetUnitId,
        {s.posA_X, s.posA_Y},
        {s.posB_X, s.posB_Y},
        s.effectId,
        s.childId
    );
}

/*
 * Le nom des deux derniers champs est CONFIRME par les traces debug du client :
 *   "EFFCT ID ["
 *   "CHILD ID ["
 * ainsi que par les deux derniers u32 ecrits dans Broadcast::BCSpellEffect().
 */


// =============================================================================
// 17. SKILLS -- utilisation et liste d'entrainement
// =============================================================================

// -----------------------------------------------------------------------------
// Packet 42 (0x2A) -- USE_SKILL_UNIT, client -> serveur
// Client @0x415C00
// -----------------------------------------------------------------------------

struct C2S_UseSkillUnit_42
{
    uint16_t packetId;      // = 42
    uint16_t skillId;
    uint16_t targetX;
    uint16_t targetY;
    uint32_t targetUnitId;
};

bool SendUseSkillUnit(uint16_t skillId, uint32_t targetUnitId)
{
    uint16_t x, y;

    if (targetUnitId == gLocalPlayer.unitId)
    {
        x = gLocalPlayer.x;
        y = gLocalPlayer.y;
    }
    else
    {
        // Le chemin skill emploie @0x5128E0.
        if (!ResolveVisibleTargetPosition_Skill(targetUnitId, &x, &y))
            return false;
    }

    TFCPacket p;
    p.write_u16_be(42);
    p.write_u16_be(skillId);
    p.write_u16_be(x);
    p.write_u16_be(y);
    p.write_u32_be(targetUnitId);
    SendPacket(p);
    return true;
}


// -----------------------------------------------------------------------------
// Packet 40 (0x28) -- TRAIN SKILL LIST, serveur -> client
// Client handler @0x4994E0
// Serveur SendTrainSkillListFunc @0x447620
// -----------------------------------------------------------------------------

struct TrainSkillEntry40
{
    uint8_t  flags;         // [TYPE CONFIRME, semantique exacte a nommer]
    uint16_t skillIdLike;   // [INFERE]
    uint16_t valueA;
    uint16_t valueB;
    uint32_t costOrValue;   // [INFERE]
    CString  name;
};

void HandlePacket40_TrainSkillList(TFCPacket &p)
{
    uint16_t playerSkillPointsOrContext = p.read_u16_be(); // [INFERE]
    uint16_t count = p.read_u16_be();

    std::vector<TrainSkillEntry40> entries;
    entries.reserve(count);

    for (uint16_t i = 0; i < count; ++i)
    {
        TrainSkillEntry40 e;
        e.flags       = p.read_u8();
        e.skillIdLike = p.read_u16_be();
        e.valueA      = p.read_u16_be();
        e.valueB      = p.read_u16_be();
        e.costOrValue = p.read_u32_be();
        e.name        = p.read_cstring();
        entries.push_back(e);
    }

    TrainSkillUI_SetList(playerSkillPointsOrContext, entries);
}


// =============================================================================
// 18. QUELQUES HANDLERS SUPPLEMENTAIRES IDENTIFIES
// =============================================================================

// Packet 75 : liste de canaux de chat.
struct ChannelEntry75
{
    CString name;
    bool listen;
};

void HandlePacket75_ChannelList(TFCPacket &p)
{
    uint16_t count = p.read_u16_be();
    for (uint16_t i = 0; i < count; ++i)
    {
        uint16_t len = p.read_u16_be();
        CString name = p.read_bytes_as_string(len);
        bool listen = p.read_u8() != 0;
        ChatUI_AddOrUpdateChannel(name, listen);
    }
}

/*
 * Packet 63 est confirme comme MESSAGE SERVEUR par les traces :
 *   "RECEIVE SERVER MESSAGE"
 *   "SERVER MESSAGE: ["
 * Son en-tete contient plusieurs champs de routage/style avant le texte; il sera
 * documente plus finement lors du prochain passage chat/NPC.
 */


// =============================================================================
// 19. CONSEQUENCES DIRECTES POUR LA REIMPLEMENTATION PYTHON
// =============================================================================

/*
 * Handlers client -> serveur a implementer / verifier :
 *
 *   21 EQUIP_ITEM:
 *      read_u32() -> itemUnitId
 *
 *   22 UNEQUIP_SLOT:
 *      read_u8() -> slot
 *
 *   23 USE_ITEM:
 *      read_u16() x
 *      read_u16() y
 *      read_u32() itemUnitId
 *
 *   32 USE_SPELL_UNIT:
 *      read_u16() spellId
 *      read_u16() x
 *      read_u16() y
 *      read_u32() targetUnitId
 *
 *   42 USE_SKILL_UNIT:
 *      read_u16() skillId
 *      read_u16() x
 *      read_u16() y
 *      read_u32() targetUnitId
 *
 * Reponses importantes :
 *
 *   18 backpack snapshot
 *   19 equipment snapshot
 *   40 train skill list
 *   59 item-name lookup response
 *   64 spell FX/casting broadcast
 *
 * Tous les champs TFCPacket u16/u32 ci-dessus sont en BIG-ENDIAN. Le header
 * transport UDP 12 octets documente dans la section precedente reste, lui,
 * LITTLE-ENDIAN.
 */


// =============================================================================
// 20. MONDE VISIBLE, MOUVEMENT ET COMBAT -- PASSE V4
// =============================================================================
// Sources croisees :
//   client t4c.exe : handlers @0x49AB44, 0x49B02C, 0x49B8BD,
//                    0x49B934, 0x49BAC6, 0x49E6B4, 0x49EEC4,
//                    0x49EF62, 0x49EBFF
//   serveur original : RQ_PlayerMove @0x47A170,
//                      Unit::PacketUnitInformation @0x48F560,
//                      Unit::PacketPopup @0x48F8A0,
//                      WorldMap::packet_inview_units @0x4B0C40,
//                      WorldMap::packet_peripheral_units @0x4AF770,
//                      Broadcast::BCObjectChanged @0x40FB60,
//                      Broadcast::BCObjectRemoved @0x40FC00,
//                      Broadcast::BCAttack @0x40FCA0,
//                      Broadcast::BCMiss @0x40FD90,
//                      Broadcast::BCSkillUsed @0x40FE60.
//
// Rappel : les entiers du TFCPacket applicatif sont big-endian.
// =============================================================================


// -----------------------------------------------------------------------------
// 20.1 Bloc commun d'information d'une unite visible
// -----------------------------------------------------------------------------

struct WireUnitInformation
{
    uint16_t appearance;   // GetAppearance() tronque/serialise en u16
    uint32_t unitId;       // Unit::GetID(), champ Unit+0x78
    int8_t   radiance;     // Unit::GetRadiance(), borne a [-100,+100]
    uint8_t  status;       // Unit::GetStatus()
    uint8_t  hpPercent;    // 0 si maxHP==0, sinon 100*HP/maxHP
};

// [CONFIRME] Serveur @0x48F560.
void Unit_PacketUnitInformation(Unit *self, TFCPacket& p)
{
    // vtable+0x2C == GetAppearance() dans cette hierarchie.
    p.write_u16_be((uint16_t)self->GetAppearance());

    p.write_u32_be(self->GetID());

    // GetRadiance() @0x48D660 fait exactement :
    //   baseRadiance = *(int8_t *)(self + 0xAF)
    //   result = baseRadiance + GetBoost(11)
    //   clamp(result, -100, +100)
    int radiance = self->GetRadiance();
    if (radiance < -100) radiance = -100;
    if (radiance >  100) radiance =  100;
    p.write_u8((uint8_t)(int8_t)radiance);

    p.write_u8(self->GetStatus());

    uint32_t maxHp = self->GetMaxHP();
    uint8_t hpPct = 0;
    if (maxHp != 0)
        hpPct = (uint8_t)((self->GetHP() * 100u) / maxHp);
    p.write_u8(hpPct);
}


// -----------------------------------------------------------------------------
// 20.2 Mouvement client -> serveur : paquets 1..8
// -----------------------------------------------------------------------------

/*
 * [CONFIRME] Le client choisit une direction 1..8 puis cree un TFCPacket dont
 * le PREMIER et seul champ est cette direction. C'est donc directement l'ID du
 * paquet; il n'y a aucun payload supplementaire.
 *
 * Correspondance originale DIR::MOVE :
 *   1 N, 2 NE, 3 E, 4 SE, 5 S, 6 SW, 7 W, 8 NW.
 *
 * Avant l'envoi, le client fait une prediction/collision locale. Le serveur
 * reste autoritaire et recalcule le mouvement via Character::MoveUnit().
 */
void Client_SendMove(uint16_t direction)
{
    if (direction < 1 || direction > 8)
        return;

    if (!ClientLocalMovementAllows(direction))
        return;

    TFCPacket p;
    p.write_u16_be(direction);   // packet ID == direction
    SendApplicationPacket(p);
}


// -----------------------------------------------------------------------------
// 20.3 RQ_PlayerMove cote serveur original @0x47A170
// -----------------------------------------------------------------------------

/*
 * Cette reconstruction est utile pour comprendre ce que le CLIENT attend en
 * retour. Le serveur original utilise le meme handler pour les requetes 1..9.
 */
void RQFUNC_PlayerMove(ServerRequestContext *ctx, uint16_t requestId)
{
    Character *player = ctx->player;

    // Requete 9 = position absolue courante.
    if (requestId == 9)
    {
        WorldPos pos = player->GetPos();

        TFCPacket reply;
        reply.write_u16_be(9);
        reply.write_u16_be((uint16_t)pos.x);
        reply.write_u16_be((uint16_t)pos.y);
        reply.write_u16_be((uint16_t)pos.world);
        player->SendPacket(reply);
        return;
    }

    if (!ctx->isInWorld)
        return;

    // Le binaire contient aussi des controles de cadence/etat avant le switch.
    // Ils ne sont pas tous renommes ici.
    WorldPos oldPos = player->GetPos();
    WorldPos newPos = oldPos;

    switch (requestId)
    {
        case 1: newPos = player->MoveUnit(DIR_N,  0, true, true); break;
        case 2: newPos = player->MoveUnit(DIR_NE, 0, true, true); break;
        case 3: newPos = player->MoveUnit(DIR_E,  0, true, true); break;
        case 4: newPos = player->MoveUnit(DIR_SE, 0, true, true); break;
        case 5: newPos = player->MoveUnit(DIR_S,  0, true, true); break;
        case 6: newPos = player->MoveUnit(DIR_SW, 0, true, true); break;
        case 7: newPos = player->MoveUnit(DIR_W,  0, true, true); break;
        case 8: newPos = player->MoveUnit(DIR_NW, 0, true, true); break;
        default: return;
    }

    if (newPos != oldPos)
    {
        // [CONFIRME] le serveur verifie les "hives"/zones qui entrent dans le
        // champ de vision et peut pousser packet_peripheral_units().
        WorldMap *map = ResolveWorldMap(newPos.world);
        if (map)
            map->VerifyPeripheralHives(oldPos, (DIR::MOVE)requestId);
    }

    // [CONFIRME] Le paquet 1 N'EST PAS seulement (x,y).
    // Il contient ensuite tout WireUnitInformation.
    TFCPacket moved;
    moved.write_u16_be(1);                 // __EVENT_OBJECT_MOVED
    moved.write_u16_be((uint16_t)newPos.x);
    moved.write_u16_be((uint16_t)newPos.y);
    Unit_PacketUnitInformation(player, moved);
    player->SendPacket(moved);             // chemin virtuel +0x14C
}


// -----------------------------------------------------------------------------
// 20.4 Paquet 9 serveur -> client : position courante
// Client @0x49AB44
// -----------------------------------------------------------------------------

struct S2C_PlayerPosition_9
{
    uint16_t x;
    uint16_t y;
    uint16_t world;
};

void HandlePacket9_PlayerPosition(TFCPacket& p)
{
    S2C_PlayerPosition_9 m;
    m.x     = p.read_u16_be();
    m.y     = p.read_u16_be();
    m.world = p.read_u16_be();

    // [CONFIRME] le client effectue des controles de bornes avant d'accepter.
    // x/y sont compares a 0..0x0C00 et world a la taille de la liste des mondes.
    if (m.x > 0x0C00 || m.y > 0x0C00 || !WorldIndexExists(m.world))
        return;

    SetLocalPlayerPosition(m.x, m.y, m.world);
}


// -----------------------------------------------------------------------------
// 20.5 Paquet 1 serveur -> client : OBJECT_MOVED / unite individuelle
// Client @0x49B02C
// -----------------------------------------------------------------------------

struct S2C_ObjectMoved_1
{
    uint16_t x;
    uint16_t y;
    WireUnitInformation unit;
};

WireUnitInformation ReadWireUnitInformation(TFCPacket& p)
{
    WireUnitInformation u{};
    u.appearance = p.read_u16_be();
    u.unitId     = p.read_u32_be();
    u.radiance   = (int8_t)p.read_u8();
    u.status     = p.read_u8();
    u.hpPercent  = p.read_u8();
    return u;
}

void HandlePacket1_ObjectMoved(TFCPacket& p)
{
    S2C_ObjectMoved_1 m{};
    m.x = p.read_u16_be();
    m.y = p.read_u16_be();
    m.unit = ReadWireUnitInformation(p);

    // [CONFIRME] certains codes d'apparence "speciaux" sont remappes par le
    // client vers des ressources graphiques internes (ex. 0x2711..0x2714).
    uint16_t displayAppearance = ClientRemapSpecialAppearance(m.unit.appearance);

    // Le handler met ensuite a jour/cree l'entree correspondante dans le monde.
    World_UpdateSingleUnit(
        m.unit.unitId,
        m.x,
        m.y,
        displayAppearance,
        m.unit.radiance,
        m.unit.status,
        m.unit.hpPercent);
}


// -----------------------------------------------------------------------------
// 20.6 Paquet 16 serveur -> client : liste des unites en vue
// Client @0x49BAC6, serveur WorldMap::packet_inview_units @0x4B0C40
// -----------------------------------------------------------------------------

struct S2C_InViewUnits_16
{
    uint16_t count;
    // repeated count times:
    //   u16 x;
    //   u16 y;
    //   WireUnitInformation unit;
};

void HandlePacket16_InViewUnits(TFCPacket& p)
{
    uint16_t count = p.read_u16_be();

    for (uint16_t i = 0; i < count; ++i)
    {
        uint16_t x = p.read_u16_be();
        uint16_t y = p.read_u16_be();
        WireUnitInformation u = ReadWireUnitInformation(p);

        if (u.unitId == GetLocalUnitId())
            continue;

        World_AddOrRefreshVisibleUnit(
            u.unitId,
            x,
            y,
            ClientRemapSpecialAppearance(u.appearance),
            u.radiance,
            u.status,
            u.hpPercent);
    }
}

/*
 * Generation serveur equivalente :
 *
 *   packet << (u16)16;
 *   packet << (u16)visibleCount;
 *   for (Unit *u : visible) {
 *       WorldPos pos = u->GetPos();
 *       packet << (u16)pos.x << (u16)pos.y;
 *       u->PacketUnitInformation(packet);
 *   }
 *
 * La composante world n'est pas repetee pour chaque unite du paquet 16.
 */


// -----------------------------------------------------------------------------
// 20.7 Paquet 11 serveur -> client : suppression/disparition d'une unite
// Client @0x49B8BD, Broadcast::BCObjectRemoved @0x40FC00
// -----------------------------------------------------------------------------

struct S2C_ObjectRemoved_11
{
    uint8_t  reasonOrReserved; // le serveur original envoie toujours 0 ici
    uint32_t unitId;
};

void HandlePacket11_ObjectRemoved(TFCPacket& p)
{
    uint8_t reason = p.read_u8();
    uint32_t unitId = p.read_u32_be();
    (void)reason;

    if (unitId != GetLocalUnitId())
        World_RemoveUnit(unitId);           // appel client @0x50A230
}


// -----------------------------------------------------------------------------
// 20.8 Paquet 12 serveur -> client : changement d'apparence
// Client @0x49B934, Broadcast::BCObjectChanged @0x40FB60
// -----------------------------------------------------------------------------

struct S2C_ObjectChanged_12
{
    uint16_t appearance;
    uint32_t unitId;
};

void HandlePacket12_ObjectChanged(TFCPacket& p)
{
    uint16_t appearance = p.read_u16_be();
    uint32_t unitId = p.read_u32_be();

    appearance = ClientRemapSpecialAppearance(appearance);
    if (unitId != GetLocalUnitId())
        World_ChangeUnitAppearance(unitId, appearance);
}


// -----------------------------------------------------------------------------
// 20.9 Famille combat 1-x : IDs 0x2711..0x2714
// -----------------------------------------------------------------------------
// Les traces debug du client les appellent explicitement :
//   0x2711 -> "PAK = 1-1"
//   0x2712 -> "PAK = 1-2"
//   0x2713 -> "PAK = 1-3"
//   0x2714 -> "PAK = 1-4"
// -----------------------------------------------------------------------------


// 0x2711 / 10001 -- ATTACK
// Serveur Broadcast::BCAttack @0x40FCA0
// Client handler @0x49E6B4
struct S2C_Attack_10001
{
    uint32_t attackerUnitId;
    uint32_t targetUnitId;
    uint8_t  reserved0;      // serveur = 0
    uint8_t  reserved1;      // serveur = 0
    int8_t   attackType;     // parametre char de BCAttack
    uint16_t pos1X;
    uint16_t pos1Y;
    uint16_t pos2X;
    uint16_t pos2Y;
};

void HandlePacket10001_Attack(TFCPacket& p)
{
    S2C_Attack_10001 a{};
    a.attackerUnitId = p.read_u32_be();
    a.targetUnitId   = p.read_u32_be();
    a.reserved0      = p.read_u8();
    a.reserved1      = p.read_u8();
    a.attackType     = (int8_t)p.read_u8();
    a.pos1X          = p.read_u16_be();
    a.pos1Y          = p.read_u16_be();
    a.pos2X          = p.read_u16_be();
    a.pos2Y          = p.read_u16_be();

    // Le client s'assure que les deux unites existent dans son monde visuel,
    // positionne/rafraichit leurs representations si necessaire, puis determine
    // l'orientation d'attaque a partir du delta entre les positions.
    Combat_EnsureVisible(a.attackerUnitId, a.pos1X, a.pos1Y);
    Combat_EnsureVisible(a.targetUnitId,   a.pos2X, a.pos2Y);

    int facing = DirectionFromDelta(
        (int)a.pos2X - (int)a.pos1X,
        (int)a.pos2Y - (int)a.pos1Y);
    Combat_PlayAttack(a.attackerUnitId, a.targetUnitId, a.attackType, facing);
}


// 0x2712 / 10002 -- MISS
// Serveur Broadcast::BCMiss @0x40FD90
// Client handler @0x49EF62
struct S2C_Miss_10002
{
    uint32_t attackerUnitId;
    uint32_t targetUnitId;
    uint16_t pos1X;
    uint16_t pos1Y;
    uint16_t pos2X;
    uint16_t pos2Y;
};

void HandlePacket10002_Miss(TFCPacket& p)
{
    S2C_Miss_10002 m{};
    m.attackerUnitId = p.read_u32_be();
    m.targetUnitId   = p.read_u32_be();
    m.pos1X          = p.read_u16_be();
    m.pos1Y          = p.read_u16_be();
    m.pos2X          = p.read_u16_be();
    m.pos2Y          = p.read_u16_be();

    Combat_PlayMiss(m.attackerUnitId, m.targetUnitId,
                    m.pos1X, m.pos1Y, m.pos2X, m.pos2Y);
}


// 0x2713 / 10003 -- SKILL_USED
// Serveur Broadcast::BCSkillUsed @0x40FE60
// Client handler @0x49EEC4
struct S2C_SkillUsed_10003
{
    uint16_t skillId;
    uint16_t reserved;       // serveur original = 0
};

void HandlePacket10003_SkillUsed(TFCPacket& p)
{
    uint16_t skillId  = p.read_u16_be();
    uint16_t reserved = p.read_u16_be();
    (void)reserved;

    Combat_OnSkillVisual(skillId);
}


// 0x2714 / 10004 -- POPUP / apparition ponctuelle
// Serveur Unit::PacketPopup @0x48F8A0
// Client handler @0x49EBFF
struct S2C_UnitPopup_10004
{
    uint16_t x;
    uint16_t y;
    WireUnitInformation unit;
};

void HandlePacket10004_UnitPopup(TFCPacket& p)
{
    uint16_t x = p.read_u16_be();
    uint16_t y = p.read_u16_be();
    WireUnitInformation u = ReadWireUnitInformation(p);

    World_ShowPopupOrTransientUnit(
        u.unitId, x, y, ClientRemapSpecialAppearance(u.appearance),
        u.radiance, u.status, u.hpPercent);
}


// -----------------------------------------------------------------------------
// 20.10 Correction directe pour le prototype Python actuel
// -----------------------------------------------------------------------------

/*
 * Le prototype Python envoyait jusqu'ici, apres un mouvement, seulement :
 *
 *     packet 1 + i16 x + i16 y
 *
 * Or le client 1.25 lit obligatoirement :
 *
 *     packet 1
 *     u16 x
 *     u16 y
 *     u16 appearance
 *     u32 unitId
 *     i8  radiance
 *     u8  status
 *     u8  hpPercent
 *
 * Il faut donc completer le paquet 1 pour une compatibilite stricte.
 * Le meme bloc UnitInformation doit etre reutilise pour le paquet 16 et le
 * paquet 0x2714.
 */

// Fin passe V4.
/*
 * T4C client 1.25 - pseudo-code statique, passe V5
 * Domaines: objets au sol, marchands, chat/messages, PNJ, groupes.
 *
 * IMPORTANT
 * ---------
 * Ceci n'est pas le code source original. Les types de fil sont reconstruits
 * a partir du client t4c.exe et recoupes avec T4C Server.exe.
 *
 * [CONFIRMED] = ordre/types verifies cote client + serveur lorsque possible.
 * [INFERRED]  = nom semantique propose, type/ordre pouvant etre confirme.
 *
 * Les entiers TFCPacket applicatifs sont serialises en big-endian.
 */

#include <cstdint>
#include <string>
#include <vector>

using u8  = uint8_t;
using i8  = int8_t;
using u16 = uint16_t;
using u32 = uint32_t;

struct TFCPacketPseudo {
    u8  read_u8();
    u16 read_u16_be();
    u32 read_u32_be();
    void write_u8(u8);
    void write_u16_be(u16);
    void write_u32_be(u32);
};

static std::string ReadCString(TFCPacketPseudo& p)
{
    u16 n = p.read_u16_be();
    std::string s;
    s.resize(n);
    for (u16 i = 0; i < n; ++i)
        s[i] = static_cast<char>(p.read_u8());
    return s;
}

static void WriteCString(TFCPacketPseudo& p, const std::string& s)
{
    p.write_u16_be(static_cast<u16>(s.size()));
    for (unsigned char c : s)
        p.write_u8(c);
}

// ============================================================================
// 1. REGLE STRUCTURELLE: L'OPCODE EST DIRECTIONNEL
// ============================================================================

/*
 * [CONFIRMED]
 * Le meme numero peut signifier deux choses differentes selon le sens.
 * Exemple majeur:
 *
 *   C2S 11 = ramasser une unite/objet au sol
 *   S2C 11 = retirer une unite de la vue
 *
 *   C2S 12 = deposer un objet
 *   S2C 12 = changement d'apparence d'une unite
 *
 * Pour la reimplementation Python, ne pas maintenir un enum unique
 * "Opcode -> nom". Utiliser ClientOpcode et ServerOpcode, ou une cle
 * (direction, opcode).
 */

// ============================================================================
// 2. OBJETS AU SOL
// ============================================================================

// ---------------------------------------------------------------------------
// C2S 11 -- PICKUP_UNIT / GET_UNIT                           [CONFIRMED]
// Serveur: handler @0x47A640 -> Character::GetUnit @0x416D90
// ---------------------------------------------------------------------------
struct C2S_PickupUnit_11 {
    u16 x;
    u16 y;
    u32 unitId;
};

void SendPickupUnit(TFCPacketPseudo& p, u16 x, u16 y, u32 unitId)
{
    p.write_u16_be(11);
    p.write_u16_be(x);
    p.write_u16_be(y);
    p.write_u32_be(unitId);
}

// Le serveur reconstruit un WorldPos depuis x/y + world courant, retrouve
// l'unite, verifie son type puis appelle Character::GetUnit(...).

// ---------------------------------------------------------------------------
// C2S 12 -- DROP_ITEM                                      [CONFIRMED]
// Serveur: handler @0x47A9B0 -> Character::DropUnit @0x417240
// ---------------------------------------------------------------------------
struct C2S_DropItem_12 {
    u16 x;
    u16 y;
    u32 itemUnitId;
    u32 quantity;
};

void SendDropItem(TFCPacketPseudo& p,
                  u16 x, u16 y, u32 itemUnitId, u32 quantity)
{
    p.write_u16_be(12);
    p.write_u16_be(x);
    p.write_u16_be(y);
    p.write_u32_be(itemUnitId);
    p.write_u32_be(quantity);
}

// ---------------------------------------------------------------------------
// S2C 11 -- OBJECT_REMOVED                                 [CONFIRMED]
// Serveur: Broadcast::BCObjectRemoved @0x40FC00
// Client : handler @0x49B8BD
// ---------------------------------------------------------------------------
struct S2C_ObjectRemoved_11 {
    u8  reserved;   // serveur original ecrit 0
    u32 unitId;
};

// ---------------------------------------------------------------------------
// S2C 12 -- OBJECT_CHANGED                                 [CONFIRMED]
// Serveur: Broadcast::BCObjectChanged @0x40FB60
// Client : handler @0x49B934
// ---------------------------------------------------------------------------
struct S2C_ObjectChanged_12 {
    u16 appearance;
    u32 unitId;
};

// ---------------------------------------------------------------------------
// S2C 70 -- ACTION/OBJECT FAILURE CORRELATION               [CONFIRMED TYPES]
// Client : handler @0x49CB2E
// Serveur: e.g. pickup failure @0x47A8DD; sell NPC missing @0x482DEA
// ---------------------------------------------------------------------------
struct S2C_ActionFailure_70 {
    u32 objectOrUnitId;
    u16 relatedRequestOpcode;
};

/*
 * Le serveur emet notamment:
 *   {unitId, 11} si le pickup ne retrouve pas l'objet;
 *   {npcId, 56} si la vente ne retrouve pas le marchand.
 *
 * Le client branche ensuite suivant relatedRequestOpcode. Le nom
 * ACTION_FAILURE est donc descriptif, pas un symbole original.
 */

// ============================================================================
// 3. IDENTITE PNJ
// ============================================================================

// ---------------------------------------------------------------------------
// S2C 35 -- NPC NAME                                       [CONFIRMED]
// Client handler @0x499E86, traces "NPC ID", "Len", "Name"
// ---------------------------------------------------------------------------
struct S2C_NpcName_35 {
    u32 npcUnitId;
    std::string name;  // CString: u16 len + bytes
};

S2C_NpcName_35 HandleNpcName35(TFCPacketPseudo& p)
{
    S2C_NpcName_35 m;
    m.npcUnitId = p.read_u32_be();
    m.name      = ReadCString(p);
    return m;
}

// ============================================================================
// 4. MARCHANDS / BUY / SELL
// ============================================================================

// ---------------------------------------------------------------------------
// S2C 41 -- BUY LIST                                       [CONFIRMED]
// Serveur: AddBuyItemFunc @0x447A90; SendBuyItemListFunc @0x447E60
// Client : handler @0x499AC6
// ---------------------------------------------------------------------------
struct BuyListEntry41 {
    u16 templateIdLike;   // [INFERRED name] identifiant court de l'objet
    u16 appearance;
    u32 price;
    u8  canEquip;
    std::string name;
    std::string equipMessage; // exigence / raison / texte associe [INFERRED]
};

struct S2C_BuyList_41 {
    u32 shopUnitId;
    u16 count;
    std::vector<BuyListEntry41> items;
};

S2C_BuyList_41 HandleBuyList41(TFCPacketPseudo& p)
{
    S2C_BuyList_41 out{};
    out.shopUnitId = p.read_u32_be();
    out.count      = p.read_u16_be();
    out.items.reserve(out.count);

    for (u16 i = 0; i < out.count; ++i) {
        BuyListEntry41 e{};
        e.templateIdLike = p.read_u16_be();
        e.appearance     = p.read_u16_be();
        e.price          = p.read_u32_be();
        e.canEquip       = p.read_u8();
        e.name           = ReadCString(p);
        e.equipMessage   = ReadCString(p);
        out.items.push_back(e);
    }
    return out;
}

// ---------------------------------------------------------------------------
// C2S 41 -- BUY ITEMS                                      [CONFIRMED]
// Client builder around @0x4A9DA0
// Serveur handler @0x482940
// ---------------------------------------------------------------------------
struct BuyRequestEntry41 {
    u16 itemId;
    u16 quantity;
};

struct C2S_BuyItems_41 {
    u16 x;
    u16 y;
    u32 npcUnitId;
    u16 count;
    std::vector<BuyRequestEntry41> items;
};

void WriteBuyItems41(TFCPacketPseudo& p, const C2S_BuyItems_41& m)
{
    p.write_u16_be(41);
    p.write_u16_be(m.x);
    p.write_u16_be(m.y);
    p.write_u32_be(m.npcUnitId);
    p.write_u16_be(static_cast<u16>(m.items.size()));
    for (const auto& e : m.items) {
        p.write_u16_be(e.itemId);
        p.write_u16_be(e.quantity);
    }
}

// ---------------------------------------------------------------------------
// S2C 56 -- SELL LIST                                      [CONFIRMED]
// Serveur: AddSellItemFunc @0x447C40; SendSellItemListFunc @0x4480B0
// Client : handler @0x499C83
// ---------------------------------------------------------------------------
struct SellListEntry56 {
    u32 itemUnitId;
    u16 appearance;
    u32 price;
    u32 quantity;
    std::string name;
};

struct S2C_SellList_56 {
    u32 shopUnitId;
    u16 count;
    std::vector<SellListEntry56> items;
};

S2C_SellList_56 HandleSellList56(TFCPacketPseudo& p)
{
    S2C_SellList_56 out{};
    out.shopUnitId = p.read_u32_be();
    out.count      = p.read_u16_be();
    out.items.reserve(out.count);

    for (u16 i = 0; i < out.count; ++i) {
        SellListEntry56 e{};
        e.itemUnitId = p.read_u32_be();
        e.appearance = p.read_u16_be();
        e.price      = p.read_u32_be();
        e.quantity   = p.read_u32_be();
        e.name       = ReadCString(p);
        out.items.push_back(e);
    }
    return out;
}

// ---------------------------------------------------------------------------
// C2S 56 -- SELL ITEMS                                     [CONFIRMED]
// Client bulk builder @0x44A040
// Serveur handler @0x482C70
// ---------------------------------------------------------------------------
struct SellRequestEntry56 {
    u32 itemUnitId;
    u32 quantity;
};

/*
 * Wire format important:
 *
 *   u16 opcode = 56
 *   u16 x
 *   u16 y
 *   u32 npcUnitId
 *   repeat UNTIL END OF TFCPACKET:
 *       u32 itemUnitId
 *       u32 quantity
 *
 * Il n'y a PAS de compteur avant les paires dans la voie "bulk" observee.
 * Le handler serveur @0x482D73 relit deux u32 puis reboucle, la fin du paquet
 * terminant le parcours via la mecanique d'exception/borne de TFCPacket.
 *
 * D'autres branches UI du client construisent aussi des paquets 56 plus courts
 * pour une selection unique; la logique generale cote serveur reste un flux de
 * paires u32/u32 jusqu'a epuisement.
 */

// ============================================================================
// 5. CHAT / PAROLE / MESSAGES SYSTEME
// ============================================================================

// ---------------------------------------------------------------------------
// S2C 27 -- UNIT TALK / CHAT                                [CONFIRMED TYPES]
// Serveur: Unit::Talk @0x48C3E0 et chemin RQ chat @0x47FC90
// ---------------------------------------------------------------------------
struct S2C_UnitTalk_27 {
    u32 speakerUnitId;
    u8  direction;       // calcule depuis les positions par Unit::Talk
    u32 colorOrStyle;    // [INFERRED semantic]
    u8  speakerFlag;     // [INFERRED semantic]
    std::string text;
    std::string speakerName;
};

/*
 * Unit::Talk construit exactement:
 *   packet << (u16)27;
 *   packet << (u32)this->GetID();
 *   packet << (u8)computedDirection;
 *   packet << (u32)argument/style;
 *   packet << (u8)((this->field_73 != 1) ? 1 : 0);
 *   packet << CString(text);
 *   packet << CString(this->GetName());
 */

// ---------------------------------------------------------------------------
// C2S 30 -- LOCAL TALK REQUEST                              [CONFIRMED TYPES]
// Serveur handler @0x47FC90; retransformation vers S2C 27
// ---------------------------------------------------------------------------
struct C2S_LocalTalk_30 {
    u16 x;
    u16 y;
    u32 fieldA;       // [INFERRED]
    u8  direction;
    u32 colorOrStyle; // seul le low byte est exploite dans un chemin serveur
    std::string text;
};

// ---------------------------------------------------------------------------
// Packet 29 -- TWO STRING MESSAGE/COMMAND                   [CONFIRMED TYPES]
// Client handler @0x498E73; serveur handler @0x47F910
// ---------------------------------------------------------------------------
struct Packet29_TwoStrings {
    std::string first;
    std::string second;
};

/*
 * Les deux sens utilisent deux CString consecutives. Le sens fonctionnel exact
 * (commande canal / message cible / autre) reste a nommer avec prudence.
 */

// ---------------------------------------------------------------------------
// S2C 63 -- SERVER MESSAGE                                  [CONFIRMED]
// Serveur: Broadcast::BCServerMessage @0x40FFF0
//          Character::SendSystemMessage @0x422E90
// Client : handler @0x49DBB1, trace "RECEIVE SERVER MESSAGE"
// ---------------------------------------------------------------------------
struct S2C_ServerMessage_63 {
    u16 category;  // serveur standard: 30
    u16 style;     // serveur standard: 3
    std::string text;
};

S2C_ServerMessage_63 HandleServerMessage63(TFCPacketPseudo& p)
{
    S2C_ServerMessage_63 m{};
    m.category = p.read_u16_be();
    m.style    = p.read_u16_be();
    m.text     = ReadCString(p);
    return m;
}

// ============================================================================
// 6. GROUPES
// ============================================================================

// ---------------------------------------------------------------------------
// S2C 76 -- GROUP MEMBERS                                  [CONFIRMED]
// Serveur: Group::SendGroupMembers @0x43AF00
// Client : handler @0x49C4A6
// ---------------------------------------------------------------------------
struct GroupMember76 {
    u32 unitId;
    u16 level;
    u16 hpPercent;
    u8  isLeader;
    std::string name;
};

struct S2C_GroupMembers_76 {
    u8 autoSplit;
    u16 memberCount;
    std::vector<GroupMember76> members;
};

/*
 * hpPercent est calcule par le serveur comme HP * 100 / MaxHP (ou 0 si
 * MaxHP == 0). isLeader est le resultat d'une comparaison avec le pointeur
 * leader conserve par Group.
 */

// ---------------------------------------------------------------------------
// S2C 78 -- GROUP INVITE                                   [CONFIRMED]
// Serveur: Group::Invite @0x43A3B0 (emission vers @0x43A5F3)
// Client : handler @0x49C729
// ---------------------------------------------------------------------------
struct S2C_GroupInvite_78 {
    u32 leaderUnitId;
    std::string leaderName;
};

// ---------------------------------------------------------------------------
// S2C 80 -- GROUP DISMISSED                                [CONFIRMED]
// Client handler @0x49C2D7
// Aucun payload.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// S2C 82 -- GROUP DISBANDED                                [CONFIRMED]
// Serveur: Group::SendDisbandNotification @0x43AE10
// Client : handler @0x49C3BE
// Aucun payload.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// S2C 87 -- GROUP HP UPDATE                                [CONFIRMED]
// Serveur: Group::SendHpUpdate @0x43B080
// Client : handler @0x49C28A
// ---------------------------------------------------------------------------
struct S2C_GroupHpUpdate_87 {
    u32 unitId;
    u16 hpPercent;
};

// ============================================================================
// 7. CONSEQUENCES POUR LE SERVEUR PYTHON
// ============================================================================

/*
 * 1) Separater imperativement les opcodes C2S et S2C.
 *
 *    class ClientOpcode(IntEnum):
 *        PICKUP_UNIT = 11
 *        DROP_ITEM   = 12
 *        BUY_ITEMS   = 41
 *        SELL_ITEMS  = 56
 *
 *    class ServerOpcode(IntEnum):
 *        OBJECT_REMOVED = 11
 *        OBJECT_CHANGED = 12
 *        NPC_NAME       = 35
 *        BUY_LIST       = 41
 *        SELL_LIST      = 56
 *        SERVER_MESSAGE = 63
 *        ACTION_FAILURE = 70
 *        GROUP_MEMBERS  = 76
 *        GROUP_INVITE   = 78
 *        GROUP_DISMISSED= 80
 *        GROUP_DISBANDED= 82
 *        GROUP_HP       = 87
 *
 * 2) SELL_ITEMS(56) n'a pas de count dans la forme bulk observee:
 *    parse pairs while reader.remaining() >= 8.
 *
 * 3) Le paquet 70 doit conserver l'opcode de la requete fautive. C'est ainsi
 *    que le client sait quelle UI/operation corriger.
 *
 * 4) Les CString T4C sont ici longueur u16 big-endian + octets, sans zero final
 *    sur le fil.
 *
 * 5) Pour ouvrir un marchand de maniere fidele, envoyer d'abord la liste 41
 *    ou 56 avec shopUnitId et le format d'entree exact; le client construit
 *    ensuite les requetes d'achat/vente a partir de cette liste.
 */

// Fin passe V5.


// ============================================================================
// PASSE V6 -- PNJ, TELEPORTATION, MORT/PROGRESSION, EFFETS ET COMBAT DISTANCE
// ============================================================================
// Conventions :
//   [CONFIRMED]       = ordre/types verifies dans le client ET le serveur.
//   [HIGH CONFIDENCE] = structure certaine, nom fonctionnel fortement appuye.
//   [INFERRED]        = semantique proposee; ne pas figer comme ABI sans capture.

// ---------------------------------------------------------------------------
// S2C 36 -- NPC_INTERACTION_END                           [CONFIRMED]
// Serveur : BreakFunc @0x4467C0, emission @0x44683A
// Client  : handler @0x499FB8
// ---------------------------------------------------------------------------
// Aucun payload.
//
// Le serveur envoie 36 depuis BreakFunc(). Le client efface son contexte NPC :
//   gNpcA = 0; gNpcB = 0; gNpcC = 0; gNpcWord = 0;
// Ce paquet peut donc etre implemente comme fermeture/reinitialisation de la
// conversation NPC.
void HandleNpcInteractionEnd36()
{
    gNpcContext.unitIdLike = 0;
    gNpcContext.valueA = 0;
    gNpcContext.valueB = 0;
    gNpcContext.valueC = 0;
}

// ---------------------------------------------------------------------------
// S2C 34 -- NPC/UI CONTEXT UPDATE                         [STRUCTURE CONFIRMED]
// Client : handler @0x49A000
// ---------------------------------------------------------------------------
struct S2C_UnknownNpcUi34 {
    u32 objectOrUnitId;
    u16 value;
};

void HandlePacket34(TFCPacketPseudo& p)
{
    const u32 id = p.read_u32_be();
    const u16 value = p.read_u16_be();

    // Le client ouvre/verrouille une zone UI (id interne 0x3C), puis transmet
    // les deux valeurs a une fonction d'interface. La signification exacte de
    // value n'est pas encore suffisamment prouvee pour la nommer.
    UiBeginAtomic(0x3C);
    UiNpcContextUpdate(id, value); /* inferred name */
    UiEndAtomic(0x3C);
}

// ---------------------------------------------------------------------------
// S2C 35 -- NPC_NAME                                     [CONFIRMED]
// Client @0x499E86 ; serveur construit 35 dans le chemin de requete NPC.
// ---------------------------------------------------------------------------
struct S2C_NpcName35 {
    u32 npcUnitId;
    std::string name; // u16 length + bytes
};

// ---------------------------------------------------------------------------
// S2C 55 -- TEACH_SKILL_LIST                             [CONFIRMED]
// Serveur : SendTeachSkillListFunc @0x447840
// Client  : handler @0x499661
// ---------------------------------------------------------------------------
struct TeachSkillEntry55 {
    u8  flags;
    u16 skillId;
    u32 valueOrCostA;
    std::string name;
    std::string requirementsText;
    u32 valueOrCostB;
    u32 valueOrCostC;
};

struct S2C_TeachSkillList55 {
    u16 context;
    u16 count;
    std::vector<TeachSkillEntry55> entries;
};

S2C_TeachSkillList55 ReadTeachSkillList55(TFCPacketPseudo& p)
{
    S2C_TeachSkillList55 out{};
    out.context = p.read_u16_be();
    out.count   = p.read_u16_be();
    for (u16 i = 0; i < out.count; ++i) {
        TeachSkillEntry55 e{};
        e.flags            = p.read_u8();
        e.skillId          = p.read_u16_be();
        e.valueOrCostA     = p.read_u32_be();
        e.name             = ReadCString(p);
        e.requirementsText = ReadCString(p);
        e.valueOrCostB     = p.read_u32_be();
        e.valueOrCostC     = p.read_u32_be();
        out.entries.push_back(std::move(e));
    }
    return out;
}

// ---------------------------------------------------------------------------
// S2C 57 -- TELEPORT / CHANGE WORLD                      [CONFIRMED]
// Serveur : Unit::Teleport @0x48BEA0, emission @0x48C05B
// Client  : handler @0x49BF53 -> helper @0x4A26D0
// ---------------------------------------------------------------------------
struct S2C_Teleport57 {
    u16 x;
    u16 y;
    u16 world;
};

void HandleTeleport57(TFCPacketPseudo& p)
{
    const u16 x     = p.read_u16_be();
    const u16 y     = p.read_u16_be();
    const u16 world = p.read_u16_be();

    // Le client valide x/y dans [0,0xC00] et world dans [0,3], puis reinitialise
    // plusieurs caches/overlays de carte et repositionne le joueur.
    if (x > 0x0C00 || y > 0x0C00 || world > 3)
        return;

    const bool worldChanged = (world != gPlayer.world);
    gPlayer.x = x;
    gPlayer.y = y;
    gPlayer.world = world;

    ResetWorldTransientState();
    if (worldChanged)
        ReloadWorldResources(world);
    RecenterCameraOnPlayer();
}

// ---------------------------------------------------------------------------
// S2C 37 -- LEVEL / PROGRESSION SNAPSHOT                  [CONFIRMED TYPES]
// Serveur : Character::SetLevel @0x421290, packet @0x421332
// Client  : handler @0x4992AC
// ---------------------------------------------------------------------------
struct S2C_LevelProgress37 {
    u16 level;
    u32 levelXpThresholdHi;
    u32 levelXpThresholdLo;
    u32 hpLikeA;
    u32 hpLikeB;
    u16 pointsLikeA;
    u16 pointsLikeB;
};

// Le serveur indexe une table 64-bit par le nouveau niveau et en serialise les
// deux moities u32. Les deux u32 suivants proviennent de methodes virtuelles du
// Character (HP/MaxHP tres probable). Les deux u16 finaux sont des compteurs de
// progression (skill/spell points probable). Les types et l'ordre sont certains.

// ---------------------------------------------------------------------------
// S2C 44 -- 64-BIT PROGRESSION/XP UPDATE                  [CONFIRMED]
// Emis notamment dans Character::Death @0x41B250, packet @0x41C636.
// Client : handler @0x499387.
// ---------------------------------------------------------------------------
struct S2C_Progress64_44 {
    u32 high;
    u32 low;
};

u64 HandleProgress44(TFCPacketPseudo& p)
{
    const u32 hi = p.read_u32_be();
    const u32 lo = p.read_u32_be();
    const u64 v = (u64(hi) << 32) | u64(lo);
    gPlayer.progress64 = v; // XP/current progression strongly inferred
    return v;
}

/*
 * Death flow observed on the original server:
 *   Character::Death()
 *       -> GAME_RULES::DeathPenalties(...)
 *       -> S2C 44 : updated 64-bit progression value
 *       -> S2C 63 : system/death message (category 30, style 3)
 *       -> normal world/status mechanisms handle subsequent state changes.
 *
 * A dedicated "RESURRECT" packet has not been proven in this pass. Do not
 * invent one: the original protocol appears to reuse HP/status/teleport/world
 * updates for much of the transition.
 */

// ---------------------------------------------------------------------------
// S2C 83 -- EFFECT_STATUS_ADD_OR_UPDATE                   [CONFIRMED]
// Serveur : SpellEffect::CreateEffectStatus @0x460820, packet @0x4608D4
// Client  : handler @0x49E5A9
// ---------------------------------------------------------------------------
struct S2C_EffectStatus83 {
    u32 effectIdOrKey;
    u32 valueA;
    u32 valueB;
    u32 spellStructField244;
    std::string displayText;
};

S2C_EffectStatus83 ReadEffectStatus83(TFCPacketPseudo& p)
{
    S2C_EffectStatus83 e{};
    e.effectIdOrKey       = p.read_u32_be();
    e.valueA              = p.read_u32_be();
    e.valueB              = p.read_u32_be();
    e.spellStructField244 = p.read_u32_be();
    e.displayText         = ReadCString(p);
    EffectStatusUI_AddOrUpdate(e);
    return e;
}

// ---------------------------------------------------------------------------
// S2C 84 -- EFFECT_STATUS_REMOVE                          [CONFIRMED]
// Serveur : SpellEffect::DispellEffectStatus @0x460980, packet @0x4609D2
// Client  : handler @0x49E679
// ---------------------------------------------------------------------------
struct S2C_EffectStatusRemove84 { u32 effectIdOrKey; };

// ---------------------------------------------------------------------------
// S2C 92 -- WEIGHT UPDATE                                 [CONFIRMED]
// Serveur : Character::AddToBackpack @0x420D20, packet @0x420EFD
// Client  : handler @0x49E561
// ---------------------------------------------------------------------------
struct S2C_Weight92 {
    u32 weight;
    u32 maxWeight;
};

// Le serveur appelle Character::GetWeight() puis GetMaxWeight(). Le client ne
// conserve que les 16 bits bas dans deux globals UI, mais les valeurs sont bien
// serialisees sur 32 bits sur le fil.

// ---------------------------------------------------------------------------
// S2C 94 -- CLEAR TARGET / STOP AUTO-COMBAT              [HIGH CONFIDENCE]
// Client : handler @0x49E403, aucun payload.
// Serveur : emis depuis Character::ExecAutoCombat et
//           CPlayerManager::RemoveTargetReferences.
// ---------------------------------------------------------------------------
void HandlePacket94()
{
    TargetUiOrCombatController_Clear(); /* semantic name inferred */
}

// ---------------------------------------------------------------------------
// S2C 95/96 -- RANGED ATTACK VISUALS                     [CONFIRMED TYPES]
// Serveur : Character::RangedAttack, packets @0x421916 et @0x421C4D
// Client  : handlers @0x49D916 (95) et @0x49D8C2 (96)
// ---------------------------------------------------------------------------
struct S2C_Ranged95 {
    u32 unitId;
    u16 x;
    u16 y;
    u8  flag;
};

struct S2C_Ranged96 {
    u32 unitIdA;
    u32 unitIdB;
    u8  hpPercentOrFlag;
};

// Packet 95 alimente le meme helper visuel client que 96. Dans le serveur,
// 95 contient l'ID d'une unite + deux coordonnees + bool; 96 contient deux IDs
// + un octet calcule a partir de HP/MaxHP. Les noms precis des roles A/B seront
// fixes avec une capture de combat a distance.

// ---------------------------------------------------------------------------
// S2C 97 -- GOD/SYSOP MODE FLAGS                          [CONFIRMED]
// Client @0x49DFA0
// ---------------------------------------------------------------------------
struct S2C_AdminFlag97 {
    u8 subFlag;
    u8 enabled;
};

void HandleAdminFlag97(TFCPacketPseudo& p)
{
    const u8 sub = p.read_u8();
    const bool enabled = p.read_u8() != 0;
    if (sub == 1) {
        gAdminFlag1 = enabled;
    } else if (sub == 2) {
        gGodCanSlayUsers = enabled;
        Log(enabled ? "God can now slay users." :
                      "God can no longer slay users.");
    }
}

// ---------------------------------------------------------------------------
// S2C 98 -- SERAPH_ARRIVAL                                [HIGH CONFIDENCE]
// Serveur : Character::BroadcastSeraphArrival @0x422700, packet @0x422768
// Client  : handler @0x49BF99; debug string "* SERAPH ARRIVAL".
// ---------------------------------------------------------------------------
/*
 * Le serveur commence le paquet par 98, y ajoute un PacketPopup/representation
 * de l'unite, puis une extension Character specifique. Le handler client lit
 * une structure fixe longue et declenche l'animation/UI d'arrivee Seraph.
 * Le nom fonctionnel est certain; la semantique champ-par-champ de la queue est
 * encore en cours. Ne pas copier une struct speculative dans le serveur Python.
 */

// ============================================================================
// CONSEQUENCES V6 POUR LE SERVEUR PYTHON
// ============================================================================
/*
 * 1) Teleportation fidele : S2C 57 = write_u16(x), write_u16(y),
 *    write_u16(world). Le client fait une vraie reinitialisation de monde.
 *
 * 2) Fin de dialogue NPC : envoyer S2C 36 sans payload lorsque BreakFunc()
 *    equivalent termine la conversation.
 *
 * 3) Effects UI : 83 ajoute/met a jour; 84 retire. Cela permet d'afficher les
 *    buffs/debuffs sans attendre toute la logique de sorts.
 *
 * 4) Inventaire : apres variation de backpack/poids, S2C 92 transmet deux u32
 *    weight/maxWeight.
 *
 * 5) Mort : ne pas creer un opcode RESURRECT arbitraire. Emuler d'abord la
 *    sequence originale observee (penalites -> 44 -> 63 -> status/teleport).
 *
 * 6) Skills NPC : S2C 55 a maintenant un layout suffisamment precis pour
 *    construire l'ecran d'apprentissage des competences.
 */

// Fin passe V6.

// ============================================================================
// PASSE V7 -- CHATTER, GOLD/MANA, UNIT UPDATE, ROB BACKPACK, REMORT
// ============================================================================
// Cette passe croise le dispatcher client avec les handlers du serveur original.
// Les noms ci-dessous distinguent explicitement C2S et S2C : certains IDs ont
// des sens totalement differents suivant la direction (ex: 53).

using u8  = unsigned char;
using i8  = signed char;
using u16 = unsigned short;
using u32 = unsigned int;

// ---------------------------------------------------------------------------
// S2C 48 -- CHATTER ENTER RESULT / NOTIFICATION               [STRUCTURE CLIENT CONFIRMED]
// Client @0x498A1E
// ---------------------------------------------------------------------------
// Le handler du client 1.25 ne lit AUCUN champ. Il ne fait que tracer
// "* PAK = 48" et retourne. Le serveur peut toutefois construire un paquet 48
// avec une CString dans le chemin d'erreur de RQ_EnterChatterChannel.
// Conclusion pratique : le client 1.25 ignore le payload de cette reponse.
void HandleS2C48(TFCPacketPseudo& /*p*/)
{
    Debug("* PAK = 48");
    // no payload consumed by this client build
}

// ---------------------------------------------------------------------------
// S2C 49 -- CHATTER/CC MESSAGE                                [CONFIRMED]
// Client @0x498A3E
// Format d'affichage observe : ["CC <channel>"] <speaker>: <message>
// ---------------------------------------------------------------------------
struct S2C_ChatterMessage49 {
    CString channel;
    CString speaker;
    CString message;
};

void HandleChatterMessage49(TFCPacketPseudo& p)
{
    CString channel = p.read_string_u16();
    CString speaker = p.read_string_u16();
    CString message = p.read_string_u16();

    CString line = "[\"CC " + channel + "\"] " + speaker + ": " + message;
    ChatUI_AddLine(line, speaker /* inferred UI key */);
}

// ---------------------------------------------------------------------------
// S2C 50 -- CHATTER USER LIST                                 [HIGH CONFIDENCE]
// Client @0x49877C
// ---------------------------------------------------------------------------
struct ChatterUser50 {
    CString userName;
    CString auxLabel;       // role/account/title exact meaning still unresolved
    u8      listening;
};

struct S2C_ChatterUserList50 {
    CString channel;
    u16 count;
    ChatterUser50 users[count];
};

void HandleChatterUserList50(TFCPacketPseudo& p)
{
    CString channel = p.read_string_u16();
    u16 count = p.read_u16();

    ChatterUserList list(channel);
    for (u16 i = 0; i < count; ++i) {
        CString user = p.read_string_u16();
        CString aux  = p.read_string_u16();
        bool listen  = p.read_u8() != 0;

        Debug("GOT USER " + user + " listen = " + ToString(listen));
        list.add(user, aux, listen);
    }
    ChatUI_InstallUserList(list);
}

// C2S chatter handlers confirm the directional protocol family:
//   48 RQ_EnterChatterChannel     : CString channel; CString key/password-like
//   49 RQ_SendChatterMessage      : CString channel; CString message
//   50 RQ_GetChatterUserList      : CString channel
//   51 RQ_RemoveFromChatterChannel: CString channel
//   52 RQ_GetPublicChatterChannelList : no payload observed
//   53 RQ_ToggleChatterListening  : CString channel; u8 listening
// WARNING: S2C 53 is NOT chatter; it is GOLD_UPDATE below.

// ---------------------------------------------------------------------------
// S2C 53 -- GOLD UPDATE                                       [CONFIRMED]
// Client @0x498E07
// Server Character::SetGold @0x41D880, packet emission @0x41D93E
// ---------------------------------------------------------------------------
struct S2C_Gold53 { u32 gold; };

void HandleGold53(TFCPacketPseudo& p)
{
    gCharacter.gold = p.read_u32();       // client global 0x88E54C
    RefreshCharacterStatusUI();
}

// ---------------------------------------------------------------------------
// S2C 67 -- MANA UPDATE                                       [CONFIRMED]
// Client @0x49E04A
// Server Character::SetMana @0x41D7C0, packet emission @0x41D7F8
// ---------------------------------------------------------------------------
struct S2C_Mana67 { u16 mana; };

void HandleMana67(TFCPacketPseudo& p)
{
    gCharacter.mana = p.read_u16();        // client global 0x88E5A0
    RefreshManaUI();
}

// ---------------------------------------------------------------------------
// S2C 69 -- UNIT INFORMATION UPDATE                           [HIGH CONFIDENCE]
// Client dispatcher @0x49CEC9 -> helper @0x4A1F80
// Server sites build packet 69 then call virtual serializer +0x1AC.
// The five fields exactly match Unit::PacketUnitInformation.
// ---------------------------------------------------------------------------
struct UnitInformation69 {
    u16 appearance;
    u32 unitId;
    i8  radiance;      // clamped signed visual radiance in server-side family
    u8  status;
    u8  hpPercent;
};

void HandleUnitInformation69(TFCPacketPseudo& p)
{
    UnitInformation69 u;
    u.appearance = p.read_u16();
    u.unitId     = p.read_u32();
    u.radiance   = (i8)p.read_u8();
    u.status     = p.read_u8();
    u.hpPercent  = p.read_u8();

    World_UpdateUnitInformation(u.unitId, u.appearance,
                                u.radiance, u.status, u.hpPercent);
}

// This is the same compact unit tail used by packets 1/16 after x,y:
//     u16 appearance; u32 unitId; i8 radiance; u8 status; u8 hpPercent;

// ---------------------------------------------------------------------------
// S2C 73 -- USE ITEM BY APPEARANCE FAILURE FEEDBACK           [CONFIRMED PURPOSE]
// Client @0x49CA74
// Server request handler @0x483EC0 calls Character::UseItemByAppearance
// @0x41A5C0. If it returns false, server sends packet 73 + requested u16.
// ---------------------------------------------------------------------------
struct S2C_UseItemAppearanceFeedback73 { u16 appearanceId; };

void HandleUseItemAppearanceFeedback73(TFCPacketPseudo& p)
{
    u16 appearance = p.read_u16();
    u8 glyph;
    switch (appearance) {
        case 240: glyph = 0xC0; break;
        case 241: glyph = 0xBF; break;
        case 244: glyph = 0xC1; break;
        default:  glyph = 0xC5; break;
    }
    UI_ShowActionGlyph(glyph, 0xFFFFFF, true, true);
}

// ---------------------------------------------------------------------------
// S2C 88 -- GROUP AUTO-SPLIT STATE                            [CONFIRMED]
// Client @0x49C255
// Server Group::ToggleAutoSplit @0x43B1B0, emission @0x43B1F9
// ---------------------------------------------------------------------------
struct S2C_GroupAutoSplit88 { u8 enabled; };

void HandleGroupAutoSplit88(TFCPacketPseudo& p)
{
    bool enabled = p.read_u8() != 0;
    GroupUI_SetAutoSplit(enabled);
}

// ---------------------------------------------------------------------------
// S2C 93 -- ROB / INSPECT TARGET BACKPACK                     [CONFIRMED]
// Client @0x49E215
// Server builds packet at @0x4BED1E then calls
// Character::PacketRobBackpack @0x4208B0.
// ---------------------------------------------------------------------------
struct RobBackpackItem93 {
    u16 appearanceOrTemplate; // object virtual +0x2C
    u32 itemUnitId;           // Unit::GetID
    u16 baseOrTemplateField;  // object virtual +0x28
    u32 quantity;             // Objects::GetQty @0x44C3F0
    CString displayName;      // contextual item name
};

struct S2C_RobBackpack93 {
    u8  flag;                 // permission/state flag; exact label pending
    u32 targetUnitId;
    CString targetName;
    u16 itemCount;
    RobBackpackItem93 items[itemCount];
};

void HandleRobBackpack93(TFCPacketPseudo& p)
{
    bool flag = p.read_u8() != 0;
    u32 targetId = p.read_u32();
    CString targetName = p.read_string_u16();
    u16 count = p.read_u16();

    RobBackpackUI ui;
    for (u16 i = 0; i < count; ++i) {
        RobBackpackItem93 it;
        it.appearanceOrTemplate = p.read_u16();
        it.itemUnitId           = p.read_u32();
        it.baseOrTemplateField  = p.read_u16();
        it.quantity             = p.read_u32();
        it.displayName          = p.read_string_u16();
        ui.add(it);
    }
    OpenRobBackpackUI(targetId, targetName, flag, ui);
}

// ---------------------------------------------------------------------------
// S2C 98 -- SERAPH ARRIVAL: RAW LAYOUT IMPROVED               [CONFIRMED TYPES]
// Client @0x49BF99
// Server Character::BroadcastSeraphArrival @0x422700.
// Prefix generated by Unit::PacketPopup @0x48F8A0, then Character extension.
// ---------------------------------------------------------------------------
struct PacketPopupPrefix98 {
    u16 popupTag;       // server Unit::PacketPopup writes 0x2714
    u16 x;
    u16 y;
    u16 appearance;
    u32 unitId;
    i8  radiance;
    u8  status;
    u8  hpPercent;
};

struct SeraphExtension98 {
    u16 field0;
    u32 field1;
    u16 field2;
    u16 field3;
    u16 field4;
    u16 field5;
    u16 field6;
    u16 field7;
    u16 field8;
    u16 field9;
};

struct S2C_SeraphArrival98 {
    PacketPopupPrefix98 popup;
    SeraphExtension98 character;
};

// The client explicitly checks appearance 0x271B / 0x271C in this handler and
// launches special visual effects. The extension's field names remain unknown,
// but its byte layout is now fixed and safe to reproduce for compatibility once
// the corresponding Character serializer is reconstructed.

// ---------------------------------------------------------------------------
// S2C 100 -- REMORT RESET / COMPLETE                          [CONFIRMED]
// Client @0x49DB94: no reads, triggers a client state/UI reset path.
// Server RemortTo @0x448B80 emits packet 100 at @0x449073 with no payload.
// ---------------------------------------------------------------------------
void HandleRemort100(TFCPacketPseudo& /*p*/)
{
    Client_ResetAfterRemort(); // pseudonym for calls 0x43E500 -> 0x440160
}

// ============================================================================
// V7: DIRECTIONAL COLLISIONS WORTH ENFORCING IN PYTHON
// ============================================================================
/*
 * Never keep a single global enum keyed only by packet number.
 * Examples now proven:
 *
 *   11 C2S = pickup object       | 11 S2C = remove unit
 *   12 C2S = drop object         | 12 S2C = appearance change
 *   53 C2S = chatter listen toggle | 53 S2C = gold update
 *
 * Recommended Python design:
 *
 *   class ClientOpcode(IntEnum): ...
 *   class ServerOpcode(IntEnum): ...
 *
 * and separate dispatch dictionaries for each direction.
 */

// Fin passe V7.



/* ======================================================================
 ANNEXE : HANDLERS V7
 Fichier source : T4C_Client_handlers_v7(1).cpp
 Les noms de types peuvent etre repetes : sections de pseudocode independantes.
====================================================================== */

// T4C Client 1.25 - focused pseudocode, pass V7
// Static reverse-engineering notes. Not original source.

// S2C 49
void OnChatterMessage(Packet& p) {
    string channel = p.string_u16();
    string speaker = p.string_u16();
    string text    = p.string_u16();
    chat.add("[\"CC " + channel + "\"] " + speaker + ": " + text);
}

// S2C 50
void OnChatterUserList(Packet& p) {
    string channel = p.string_u16();
    uint16_t n = p.u16();
    for (uint16_t i=0; i<n; ++i) {
        string user = p.string_u16();
        string aux  = p.string_u16(); // exact label unresolved
        bool listening = p.u8() != 0;
        chatter_users.add(channel, user, aux, listening);
    }
}

// S2C 53 -- NOTE: C2S 53 has a different meaning (toggle chatter listening)
void OnGold(Packet& p) {
    player.gold = p.u32();
    ui.refresh_status();
}

// S2C 67
void OnMana(Packet& p) {
    player.mana = p.u16();
    ui.refresh_mana();
}

// S2C 69 -- same compact representation used inside S2C 1 / S2C 16
void OnUnitInformation(Packet& p) {
    uint16_t appearance = p.u16();
    uint32_t id         = p.u32();
    int8_t radiance     = (int8_t)p.u8();
    uint8_t status      = p.u8();
    uint8_t hp_percent  = p.u8();
    world.update_unit(id, appearance, radiance, status, hp_percent);
}

// S2C 73 -- server sends it when Character::UseItemByAppearance() fails
void OnUseItemByAppearanceFailure(Packet& p) {
    uint16_t appearance = p.u16();
    uint8_t glyph = 0xC5;
    if (appearance == 240) glyph = 0xC0;
    if (appearance == 241) glyph = 0xBF;
    if (appearance == 244) glyph = 0xC1;
    ui.feedback_glyph(glyph);
}

// S2C 88
void OnGroupAutoSplit(Packet& p) {
    group_ui.set_auto_split(p.u8() != 0);
}

// S2C 93
void OnRobBackpack(Packet& p) {
    bool flag = p.u8() != 0;
    uint32_t target_id = p.u32();
    string target_name = p.string_u16();
    uint16_t n = p.u16();
    vector<RobItem> items;
    while (n--) {
        RobItem i;
        i.appearance = p.u16();
        i.unit_id    = p.u32();
        i.base_field = p.u16();
        i.quantity   = p.u32();
        i.name       = p.string_u16();
        items.push_back(i);
    }
    ui.open_rob_backpack(target_id, target_name, flag, items);
}

// S2C 98 prefix is Unit::PacketPopup followed by Character-specific extension.
struct Seraph98Raw {
    uint16_t popup_tag;       // server writes 0x2714
    uint16_t x, y;
    uint16_t appearance;
    uint32_t unit_id;
    int8_t radiance;
    uint8_t status;
    uint8_t hp_percent;
    uint16_t ext0;
    uint32_t ext1;
    uint16_t ext2, ext3, ext4, ext5, ext6, ext7, ext8, ext9;
};

// S2C 100
void OnRemort(Packet&) {
    // no payload
    client.reset_after_remort();
}



/* ======================================================================
 ANNEXE : PNJ, MORT ET EFFETS V6
 Fichier source : T4C_Client_npc_death_effects_v6(1).cpp
 Les noms de types peuvent etre repetes : sections de pseudocode independantes.
====================================================================== */

/*
 * T4C client 1.25 - reference ciblee V6
 * PNJ / progression / teleportation / effets / ranged combat
 * Reconstruction statique, aucun executable lance.
 */
#include <cstdint>
#include <string>
#include <vector>
using u8=uint8_t; using u16=uint16_t; using u32=uint32_t; using u64=uint64_t;

// S2C 36: aucun payload. Serveur: BreakFunc @0x4467C0.
void OnNpcBreak36() { ResetNpcConversationContext(); }

// S2C 34: structure prouvee; semantique exacte encore opaque.
struct Packet34 { u32 id; u16 value; };

// S2C 55: SendTeachSkillListFunc @0x447840.
struct TeachSkill55 {
    u8 flags;
    u16 skillId;
    u32 valueA;
    std::string name;
    std::string requirements;
    u32 valueB;
    u32 valueC;
};
struct Packet55 { u16 context; u16 count; std::vector<TeachSkill55> rows; };

// S2C 57: Unit::Teleport @0x48BEA0.
struct Teleport57 { u16 x, y, world; };
void OnTeleport57(Teleport57 t) {
    if (t.x > 0xC00 || t.y > 0xC00 || t.world > 3) return;
    bool reload = (t.world != PlayerWorld());
    SetPlayerPosition(t.x,t.y,t.world);
    ResetTransientWorldState();
    if (reload) ReloadWorld(t.world);
}

// S2C 37: produit par Character::SetLevel @0x421290.
struct LevelProgress37 {
    u16 level;
    u32 thresholdHi, thresholdLo;
    u32 hpLikeA, hpLikeB;
    u16 pointsLikeA, pointsLikeB;
};

// S2C 44: deux moities d'une valeur 64-bit; emis notamment a la mort.
struct Progress44 { u32 hi, lo; };
u64 To64(Progress44 p) { return (u64(p.hi)<<32) | p.lo; }

// S2C 83/84: EffectStatusUI.
struct Effect83 { u32 id, a, b, spellField244; std::string text; };
struct Effect84 { u32 id; };

// S2C 92: GetWeight(), GetMaxWeight().
struct Weight92 { u32 weight, maxWeight; };

// S2C 94: aucun payload; clear target/stop auto-combat (semantique forte).
void On94() { ClearTargetOrAutoCombat(); }

// S2C 95/96: visuels ranged.
struct Ranged95 { u32 unitId; u16 x,y; u8 flag; };
struct Ranged96 { u32 unitA, unitB; u8 hpPercentOrFlag; };

// S2C 97: flags sysop/god.
struct Admin97 { u8 subFlag, enabled; };

// S2C 98: SERAPH ARRIVAL, structure longue encore en cours de nommage.



/* ======================================================================
 ANNEXE : TRANSPORT UDP DETAILLE
 Fichier source : T4C_Client_transport_pseudocode(2).cpp
 Les noms de types peuvent etre repetes : sections de pseudocode independantes.
====================================================================== */

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





/* ======================================================================
 ANNEXE : MONDE, MOUVEMENT ET COMBAT
 Fichier source : T4C_Client_world_combat_pseudocode(2).cpp
 Les noms de types peuvent etre repetes : sections de pseudocode independantes.
====================================================================== */

/*
 * T4C client 1.25 - reconstruction ciblee monde / mouvement / combat
 * Analyse statique croisee avec T4C Server.exe.
 * Voir T4C_Client_pseudocode_commente_v4.cpp pour le contexte complet.
 */

#include <cstdint>

struct WireUnitInformation {
    uint16_t appearance;
    uint32_t unitId;
    int8_t radiance;      // clamp [-100,+100]
    uint8_t status;
    uint8_t hpPercent;    // maxHP ? 100*HP/maxHP : 0
};

// C2S mouvement : IDs 1..8, aucun payload.
// C2S 9 : GET_PLAYER_POS, aucun payload.
// S2C 9 : u16 x, u16 y, u16 world.

struct ObjectMoved1 {
    uint16_t x;
    uint16_t y;
    WireUnitInformation unit;
};

struct ObjectRemoved11 {
    uint8_t reservedOrReason; // original = 0
    uint32_t unitId;
};

struct ObjectChanged12 {
    uint16_t appearance;
    uint32_t unitId;
};

// Packet 16 : u16 count, puis count * {u16 x,u16 y,WireUnitInformation}.

struct Attack10001 {
    uint32_t attackerUnitId;
    uint32_t targetUnitId;
    uint8_t reserved0; // 0
    uint8_t reserved1; // 0
    int8_t attackType;
    uint16_t pos1X, pos1Y;
    uint16_t pos2X, pos2Y;
};

struct Miss10002 {
    uint32_t attackerUnitId;
    uint32_t targetUnitId;
    uint16_t pos1X, pos1Y;
    uint16_t pos2X, pos2Y;
};

struct SkillUsed10003 {
    uint16_t skillId;
    uint16_t reserved; // 0
};

struct UnitPopup10004 {
    uint16_t x, y;
    WireUnitInformation unit;
};

/*
 * Serveur original: Unit::PacketUnitInformation @0x48F560
 *
 * p << (u16)GetAppearance();
 * p << (u32)GetID();
 * p << (i8)GetRadiance();
 * p << (u8)GetStatus();
 * p << (u8)(GetMaxHP() ? (GetHP()*100/GetMaxHP()) : 0);
 *
 * Ce bloc exact est reutilise par :
 *   - S2C packet 1  OBJECT_MOVED
 *   - S2C packet 16 INVIEW_UNITS
 *   - S2C 0x2714     UNIT_POPUP
 */



/* VARIANTES DU PREMIER BROUILLON NON REPRISES TEXTUELLEMENT EN V7
 Ces extraits sont conserves pour tracabilite. Ils ne remplacent PAS V7.
 */


/* ORIGINAL lignes 777-777 */
// 11. Quelques observations utiles pour la réimplémentation Python


/* ORIGINAL lignes 781-785 */
* A. Endianness
 * ------------
 * @0x4B5A40 et @0x4B5980 prouvent que les scalaires u16/u32 du TFCPacket sont
 * lus en BIG-ENDIAN. Les PacketReader/PacketWriter Python doivent donc rester
 * cohérents en network byte order.


/* ORIGINAL lignes 787-791 */
* B. Séparation transport / application
 * -------------------------------------
 * @0x45D583..0x45D591 : le client retire exactement 12 octets avant de remettre
 * le payload au callback applicatif. C'est une corroboration forte du header
 * UDP T4C de 12 octets déjà implémenté côté Python.


/* ORIGINAL lignes 793-804 */
* C. Packet 39
 * -----------
 * Le format du serveur Python pour la liste de compétences concorde avec le
 * client :
 *   u16 count
 *   répété count fois :
 *     u16 id
 *     u8  type
 *     u16 value
 *     u16 trueValue
 *     u16 nameLen + name bytes
 *     u16 descLen + description bytes


/* ORIGINAL lignes 806-809 */
* D. Packet 43
 * -----------
 * L'ordre PacketStatus utilisé par _write_status() est corroboré par le client.
 * C'est une base solide pour compléter les vraies stats, résistances et pouvoirs.


/* ORIGINAL lignes 811-814 */
* E. Packet 68
 * -----------
 * Le nombre de champs du serveur Python doit très probablement être corrigé de
 * 9 u16 vers 8 u16.


/* ORIGINAL lignes 816-821 */
* F. Fragmentation / SAFE / ACK
 * -----------------------------
 * Le client possède clairement une couche de fiabilité avec file d'envoi,
 * retransmissions, suivi de pertes et "PacketLost.Log". Il reste à décompiler
 * les blocs exacts qui assemblent/interprètent flags, sequence et fragments pour
 * remplacer les zones [CORROBORE] par des structures [CONFIRME].


/* ORIGINAL lignes 826-826 */
// 12. Prochaines fonctions prioritaires à décompiler


/* ORIGINAL lignes 830-831 */
* 1) @0x4B9630 : gros coeur TFCSocket (chaînes SEND/RECEIVE/INTERPRET PACKET)
 *    => SAFE, ACK, séquences, fragmentation/réassemblage exacts.


/* ORIGINAL lignes 833-834 */
* 2) @0x49A612 : paquet 13 PUT_PLAYER_IN_GAME
 *    => structure initiale complète du personnage et monde.


/* ORIGINAL lignes 836-836 */
* 3) @0x4994E0 : paquet 40 train-skill list.


/* ORIGINAL lignes 838-839 */
* 4) @0x49DD27 : paquet 62 / online player list, afin de lier définitivement
 *    le parseur @0x4979F0 au dispatcher et nommer les deux chaînes.


/* ORIGINAL lignes 841-843 */
* 5) Blocs objets/inventaire/sorts autour des strings :
 *       "SPELL ID [", "SpellCasting", "[USESPELLUNIT]", "[USESKILLUNIT]"
 *    => structures serveur -> client puis requêtes client -> serveur.


// ==========================================================================
// PASSE COMPLEMENTAIRE — 2026-10-08 — vérification directe de t4c(2).exe
// ==========================================================================
// Empreinte SHA256 du binaire: 569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68
// Pseudocode statique, jamais exécuté; les noms métier sont des hypothèses.
//
// S2C 45, handler @0x499864..0x4998E6 [CONFIRME : types/ordre]
//   Six appels successifs read_u8() @0x4B5AD0, un appel
//   read_u16_be() @0x4B5A40, sans boucle sur le chemin examiné.
//   Les sept résultats sont stockés dans sept adresses globales distinctes.
//   Sens exact des composantes temporelles : [INCONNU].
//   ATTENTION : GET_TIME est le nom historique de la cartographie,
//   il ne suffit pas à établir que ces valeurs sont h/min/s ou une date.
struct S2C_45_ObservedFields {
    uint8_t field0, field1, field2, field3, field4, field5;
    uint16_t field6_be;
};
// sizeof logique SUR LE FIL = 8 octets après l'opcode (sans padding C++).
// Ordre des destinations : 0x6990B0, 0x6990B4, 0x6990B8,
// 0x6990C0, 0x6990BC, 0x6990C4, 0x6990C8.
// Ces adresses sont les pointeurs passés aux readers; ne pas inférer les types
// des globals au-delà du nombre d'octets effectivement écrits par reader.
//
// S2C 46, branche @0x499292..0x4992AB [CONFIRME : chemin observé]
//   Le handler appelle @0x4A2A30 en lui transmettant le pointeur EBX,
//   sans lecture explicite via read_u8/u16/u32 dans cette branche.
//   Ne PAS conclure formellement 'aucun payload' sans désassembler @0x4A2A30.
//
// S2C 40, branche @0x4994E0..0x499660 [CORROBORE]
//   Confirme une en-tête (u16,u16) puis un élément avec
//   (u8,u16,u16,u16,u32,u16 longueur, octets du nom).
//   Le libellé métier des champs reste non confirmé.


/* PASSE 07 — 2026-10-08 — S2C 13 : 31 lectures directes, 75 octets
 * après opcode. Vérification aux VA 0x49A634..0x49A886.
 * Bloc fixe sur le chemin observé, ne préjuge pas des autres chemins.
 * Le premier u8 pilote une table de saut à 0x49AA1A (valeurs 3..12).
 * Consulter 07_PASSE_S2C13_STRUCTURE_FIXE_2026-10-08.md.
 */


/* PASSE 08 — S2C 13 : table de saut exacte à 0x49F694 [CONFIRME]
 * premier u8 (lu @0x49A634) : switch pour valeurs 3..12.
 * 3=>0x49AA21, 4=>0x49AA28, 5=>0x49AA2F, 6=>0x49AA36,
 * 7=>0x49AA3D, 8=>0x49AA44, 9..11=>0x49AA52, 12=>0x49AA4B.
 * Valeurs hors plage => 0x49AA52.
 * 3..8 et 12 : appel 0x51EA5B avec deux arguments nuls dans ce chemin.
 * Attention passe 09: le call lance une exception C++ via RaiseException ;
 * aucun retour normal vers 0x49AA52 ne peut être garanti pour ces cas.
 * Les noms sémantiques restent INCONNUS.
 * Voir 08_PASSE_TABLE_SAUT_S2C13_2026-10-08.md.
 */

/* PASSE 09 — S2C 13, identification runtime [CONFIRME/ CORROBORE]
 * 0x51EA5B prépare un bloc de 32 octets à partir de 0x551478 puis appelle
 * KERNEL32!RaiseException via IAT 0x53C298 (import confirmé par PE).
 * Exception code 0xE06D7363; signature MSVC 0x19930520.
 * Comportement compatible avec _CxxThrowException, non garanti symboliquement.
 * Cas 3..8,12 de la table : chemin levant une exception; ne pas affirmer
 * qu'ils rejoignent le bloc commun 0x49AA52 par retour normal.
 * Voir 09_PASSE_EXCEPTION_S2C13_2026-10-08.md.
 */

/* PASSE 10 — chemin commun de S2C 13 [CONFIRME]
 * 0x49AA9C paquet local; 0x49AAAA ecriture big-endian opcode 0x003C
 * via TFCPacket::operator<<(u16) @0x4B57E0 ; 0x49AAF6 appel @0x45BA10
 * qui peut enqueuer via QueueOutgoing @0x45C550 (garde interne).
 * C2S 60 : semantique non resolue ; ne pas le confondre avec S2C 60.
 * 0x49AAB7..0x49AABE: flags globaux 0x699A5C/0x699A5D -> 1.
 * Nettoyage et restauration SEH dans le bloc final; catch non identifie.
 * Voir 10_PASSE_S2C13_ENVOI_ET_COUVERTURE_2026-10-08.md
 */
