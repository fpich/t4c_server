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
