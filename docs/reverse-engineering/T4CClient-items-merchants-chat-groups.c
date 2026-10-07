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
