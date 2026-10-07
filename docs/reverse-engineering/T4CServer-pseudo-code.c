/*
    T4C Server.exe - pseudo-code C/C++ commenté
    ================================================================
    Reconstruction statique à partir du binaire x86, sans exécution.

    IMPORTANT :
    - Ceci est du pseudo-code de reverse engineering, PAS le source original.
    - Les signatures marquées "signature certaine" proviennent des symboles C++ exportés.
    - Les noms de champs inventés sont suffixés/commentés "inféré".
    - Les helpers rev::* remplacent des classes/fonctions internes dont le nom exact
      n'est pas exporté mais dont le rôle est visible dans le flot assembleur.
    - Les adresses VA (0x004xxxxx) permettent de retrouver le bloc exact dans le .asm.
*/

#include <cstdint>

// -----------------------------------------------------------------------------
// Types minimaux utilisés par le pseudo-code
// -----------------------------------------------------------------------------

struct CString;             // MFC CString
struct Unit;
struct Character;
struct Players;
struct BoostFormula;
struct TFCPacket;

struct WorldPos {
    std::uint32_t x;
    std::uint32_t y;
    std::uint32_t worldOrZ; // nom exact non confirmé
};

// sockaddr_in WinSock 32 bits (forme utile à CreatePlayer)
struct sockaddr_in_pseudo {
    std::uint16_t sin_family;
    std::uint16_t sin_port;
    std::uint32_t sin_addr;
    std::uint8_t  sin_zero[8];
};

struct ExhaustPseudo {
    std::uint32_t field0;
    std::uint32_t field1;
    std::uint32_t field2;
    std::uint32_t spellReadyRound; // inféré : champ comparé à TFCMAIN::GetRound()
};

struct SpellPseudo {
    std::uint16_t id;                    // +0x000
    std::uint8_t  unknown_002[6];
    BoostFormula* manaFormulaView;       // représentation symbolique de la zone +0x008
    // ... beaucoup de champs ...
    bool byte_240;                       // +0x240, sens exact non confirmé
};

struct CharacterListEntryPseudo {
    CString* playerName;                 // représentation logique ; objet réel plus compact
    std::uint16_t currentLevel;          // ordre inféré depuis SELECT/GetField
    std::uint16_t appearance;
};

namespace rev {

// Double les apostrophes SQL :  '  ->  ''
// C'est exactement le comportement observé dans LoadAccount et Logon.
CString EscapeSqlApostrophes(const CString& s);

// Abstraction du gestionnaire ODBC global à 0x00514AD0.
// Les vrais noms des méthodes 0x44xxxx ne sont pas exportés.
struct OdbcCursor {
    void Reset();
    bool Execute(const CString& sql, int flags = 0);
    bool Fetch();
    void GetString(int column, CString& out, int maxLen);
    void GetU16(int column, std::uint16_t& out);
    void CloseCursor();
    void Release();
};
extern OdbcCursor g_odbc;

// Registre Windows : GeneralConfig / SuperUser.
CString ReadSuperUserName();

// Liste Players::GetPCs(), stockée autour de this+0xD4..0xF4.
void ClearKnownCharacters(Players* self);
void AppendKnownCharacter(Players* self, CharacterListEntryPseudo* e);

// Champs Players non nommés mais modifiés par des UserFlags spéciaux 10000..10006.
void ApplySpecialUserFlag(Players* self, std::uint16_t flagBitPosition);

// ODBC dispatcher utilisé par Players::Logon().
void QueueOdbcRequest(const CString& sql, const char* queueName);

// Synchronisation de la table globale des Players dans CPlayerManager::CreatePlayer.
void LockPlayerTable();
void UnlockPlayerTable();
void GrowPlayerTable();
void UpdatePlayerPerformanceCounter(std::uint32_t activePlayers);

// Journalisation interne CT4CLog-like.
void DebugLog(const char* fmt, ...);

// Message de refus côté joueur (TFCPacket 0x3F / 0x1E / code 3).
void SendSpellError(Character* caster, std::uint32_t intlTextId);

} // namespace rev

// ============================================================================
// 1) Players::LoadAccount(CString)
// Adresse : 0x00456030
// Signature certaine : int Players::LoadAccount(CString)
// ============================================================================

int Players_LoadAccount_PSEUDO(Players* self, CString account)
{
    // 0x456060..0x4561CF
    // Vide la liste de personnages déjà attachée au compte et détruit les entrées.
    rev::ClearKnownCharacters(self);

    // Players::SetGodFlags(0)
    // Fonction exportée : 0x00454AC0
    self->SetGodFlags(0ULL);

    // ---------------------------------------------------------------------
    // SuperUser - premier test
    // Registre : Software\Vircom\The 4th Coming Server\GeneralConfig
    // Valeur   : SuperUser
    // Comparaison : _stricmp (insensible à la casse)
    // ---------------------------------------------------------------------
    CString configuredSuperUser = rev::ReadSuperUserName();

    if (_stricmp(account, configuredSuperUser) == 0) {
        // L'assembleur pousse high=4, low=0 à SetGodFlags(_K), donc :
        // 0x00000004_00000000ULL.
        self->SetGodFlags(0x0000000400000000ULL);
        self->SetGodMode(1);
    }

    // Prépare le curseur ODBC global.
    rev::g_odbc.Reset();

    // ---------------------------------------------------------------------
    // Chargement des personnages du compte
    // ---------------------------------------------------------------------
    CString rawAccount = self->GetAccount();              // 0x00456E10
    CString quotedAccount = rev::EscapeSqlApostrophes(rawAccount);

    rev::DebugLog("Players::LoadAccount QuotedAccount( %s )", quotedAccount);

    CString query;
    query.Format(
        "SELECT PlayerName, Appearance, CurrentLevel "
        "FROM PlayingCharacters WHERE AccountName='%s'",
        quotedAccount
    );

    rev::DebugLog("Players::LoadAccount csQuery.Format()");
    rev::DebugLog("Players::LoadAccount SendRequest()");

    rev::g_odbc.Execute(query, 0);
    rev::DebugLog("Players::LoadAccount 1");

    while (rev::g_odbc.Fetch()) {
        // Le binaire alloue 8 octets pour l'objet logique contenant CString + 2 WORD.
        auto* entry = new CharacterListEntryPseudo{};

        // SELECT colonne 1 : PlayerName
        rev::g_odbc.GetString(1, *entry->playerName, 20);

        // SELECT colonne 2 : Appearance -> offset objet +6 dans le binaire.
        rev::g_odbc.GetU16(2, entry->appearance);

        // SELECT colonne 3 : CurrentLevel -> offset objet +4 dans le binaire.
        rev::g_odbc.GetU16(3, entry->currentLevel);

        rev::AppendKnownCharacter(self, entry);
    }

    rev::g_odbc.CloseCursor();

    // ---------------------------------------------------------------------
    // Chargement des flags/permissions du compte
    // ---------------------------------------------------------------------
    query.Format(
        "SELECT FlagBitPosition FROM UserFlags WHERE AccountName='%s'",
        quotedAccount
    );

    rev::DebugLog("Players::LoadAccount 2");
    rev::g_odbc.Execute(query, 0);

    while (rev::g_odbc.Fetch()) {
        std::uint16_t bit = 0;
        rev::g_odbc.GetU16(1, bit);

        // Pour les positions normales (<64), le serveur fait :
        // GodFlags |= (1ULL << bit)
        if (bit < 64) {
            self->SetGodFlags(self->GetGodFlags() | (1ULL << bit));
        }

        // Dès qu'au moins un UserFlag est lu, le DWORD this+0x64 passe à 1.
        // Ce champ correspond à Players::SetGodMode/GetGodMode dans la zone connue.
        self->SetGodMode(1);

        // Certaines familles de flags entraînent aussi un flag agrégé.
        if (bit > 10 && bit < 20) {
            self->SetGodFlags(self->GetGodFlags() | 0x0000000000000400ULL);
        }
        else if (bit > 20 && bit < 26) {
            self->SetGodFlags(self->GetGodFlags() | 0x0000000000100000ULL);
        }

        // Valeurs hors plage utilisées comme commandes de configuration.
        // Mapping exact des noms métiers non récupéré, mais les offsets sont certains.
        switch (bit) {
            case 10000: /* this+0x5C = 1 */ break;
            case 10001: /* this+0x54 = 0 */ break;
            case 10002: /* this+0x58 = 0 */ break;
            case 10003: /* this+0x68 = 1 */ break;
            case 10004: /* this+0x79 = 0 */ break;
            case 10005: /* this+0x60 = 0 */ break;
            case 10006: /* this+0x7A = 1 */ break;
            default: break;
        }

        rev::ApplySpecialUserFlag(self, bit);
    }

    rev::DebugLog("Players::LoadAccount 3");

    // ---------------------------------------------------------------------
    // SuperUser - second test, cette fois sur GetFullAccountName()
    // Fonction exportée : Players::GetFullAccountName() @ 0x00458C60
    // ---------------------------------------------------------------------
    configuredSuperUser = rev::ReadSuperUserName();
    CString fullAccount = self->GetFullAccountName();

    if (_stricmp(fullAccount, configuredSuperUser) == 0) {
        // Le binaire OR successivement un grand ensemble de bits administrateur.
        // On reproduit le masque observé plutôt que d'inventer les noms métiers.
        std::uint64_t flags = self->GetGodFlags();

        flags |= 0x0000000000000400ULL;
        flags |= 0x0000000000100000ULL;
        flags |= 0x0000000010000000ULL;
        flags |= 0x0000000000010000ULL;
        flags |= 0x0000000000080000ULL;
        flags |= 0x0000000000001000ULL;
        flags |= 0x0000000000002000ULL;
        flags |= 0x0000000000008000ULL;
        flags |= 0x0000000000040000ULL;
        flags |= 0x0000000000020000ULL;
        flags |= 0x0000000000000800ULL;
        flags |= 0x0000000000004000ULL;
        flags |= 0x0000000020000000ULL;

        // OR sur le DWORD haut : bits 34, 33, 32, 35 et 37.
        flags |= 0x0000000400000000ULL;
        flags |= 0x0000000200000000ULL;
        flags |= 0x0000000100000000ULL;
        flags |= 0x0000000800000000ULL;
        flags |= 0x0000002000000000ULL;

        flags |= 0x0000000004000000ULL;
        flags |= 0x0000000000000040ULL;
        flags |= 0x0000000000000200ULL;
        flags |= 0x0000000008000000ULL;
        flags |= 0x0000000000000020ULL;
        flags |= 0x0000000000000100ULL;
        flags |= 0x0000000000000080ULL;
        flags |= 0x0000000000000004ULL;
        flags |= 0x0000000000000008ULL;
        flags |= 0x0000000002000000ULL;
        flags |= 0x0000000000400000ULL;
        flags |= 0x0000000001000000ULL;
        flags |= 0x0000000000800000ULL;
        flags |= 0x0000000000200000ULL;
        flags |= 0x0000000000000010ULL;
        flags |= 0x0000000040000000ULL;

        self->SetGodFlags(flags);
    }

    rev::DebugLog("Players::LoadAccount 4");

    rev::g_odbc.CloseCursor();
    rev::g_odbc.Release();

    // Seule sortie normale observée : EAX = 1 à 0x45697B.
    return 1;
}


// ============================================================================
// 2) Players::Logon()
// Adresse : 0x004583F0
// Signature certaine : void Players::Logon()
// ============================================================================

void Players_Logon_PSEUDO(Players* self)
{
    // Récupère le compte puis double les apostrophes pour l'injection dans le SQL.
    CString account = self->GetAccount();
    CString quotedAccount = rev::EscapeSqlApostrophes(account);

    // this+0x20 est un Character* (fortement confirmé par les appels GetTrueName()).
    Character* character = self->character /* inféré : offset +0x20 */;
    CString playerName = character->GetTrueName();         // 0x0041DA50

    CString sql;
    sql.Format(
        "UPDATE OnlineUsers SET PlayerName='%s' WHERE AccountName='%s'",
        playerName,
        quotedAccount
    );

    // Le code natif construit un objet requête ~0x44 octets et un petit nœud
    // contenant la CString, puis l'enfile dans le dispatcher ODBC.
    // Le nom de file/connexion est littéralement "ODBCUsers".
    rev::QueueOdbcRequest(sql, "ODBCUsers");

    // Aucun résultat SQL n'est attendu ici : la routine retourne immédiatement.
}


// ============================================================================
// 3) CPlayerManager::CreatePlayer(sockaddr_in, CString)
// Adresse : 0x00451C80
// Signature certaine :
// static Players* CPlayerManager::CreatePlayer(sockaddr_in, CString)
// ============================================================================

Players* CPlayerManager_CreatePlayer_PSEUDO(
    sockaddr_in_pseudo remote,
    CString connectionText /* sens exact du CString non utilisé directement ici */)
{
    // 0x00514AC0 : drapeau global. Quand il est non nul, création refusée.
    // Nom métier exact non exporté (probablement arrêt/suppression en cours).
    if (g_playerCreationBlocked /* inféré, VA 0x00514AC0 */) {
        return nullptr;
    }

    // new 0x120 ; Players::Players() @ 0x00454580
    Players* p = new Players();
    if (!p)
        return nullptr;

    // Players::ResetIdle() @ 0x00457980
    p->ResetIdle();

    // Puis CreatePlayer écrase explicitement l'échéance par GetRound()+0x258.
    // 0x258 = 600 unités de "round" serveur.
    p->idleDeadlineRound /* offset +0x70, inféré */ = TFCMAIN::GetRound() + 600;

    // Copie brute des 16 octets sockaddr_in vers Players+0x24.
    p->remoteAddress /* offset +0x24, inféré */ = remote;

    // Le binaire acquiert plusieurs verrous globaux avant de toucher au tableau.
    rev::LockPlayerTable();

    // Globals observés :
    // 0x00514AA0 = Players** table
    // 0x00514AA8 = nombre de slots
    // 0x00514AA4 = compteur de joueurs actifs
    extern Players** g_playerSlots;
    extern int       g_playerSlotCount;
    extern std::uint32_t g_activePlayers;

    // Refuse une seconde session ayant exactement la même IP + le même port.
    bool duplicate = false;
    for (int i = 0; i < g_playerSlotCount; ++i) {
        Players* other = g_playerSlots[i];
        if (!other)
            continue;

        if (other->remoteAddress.sin_addr == remote.sin_addr &&
            other->remoteAddress.sin_port == remote.sin_port)
        {
            duplicate = true;
            break;
        }
    }

    if (duplicate) {
        delete p;
        p = nullptr;
    }
    else {
        // Cherche d'abord un trou dans le tableau.
        int slot = -1;
        for (int i = 0; i < g_playerSlotCount; ++i) {
            if (g_playerSlots[i] == nullptr) {
                slot = i;
                break;
            }
        }

        // Aucun trou : agrandit la table (appel interne @ 0x00451B50).
        if (slot < 0) {
            slot = g_playerSlotCount;
            rev::GrowPlayerTable();
        }

        g_playerSlots[slot] = p;
        p->playerTableIndex /* offset +0x7C, confirmé */ = slot;

        rev::DebugLog("Created new player slot!");

        ++g_activePlayers;
        rev::UpdatePlayerPerformanceCounter(g_activePlayers);

        // Appel virtuel +4 sur Players après enregistrement.
        // Le nom exact n'est pas exporté : probablement initialisation/start I/O.
        p->OnRegisteredOrStartIO /* inféré */();
    }

    rev::UnlockPlayerTable();
    return p;
}


// ============================================================================
// Helpers communs aux deux CastSpell
// ============================================================================

static int ComputeSpellEnergyCost_PSEUDO(
    const SpellPseudo* spell,
    Character* caster,
    Unit* target)
{
    // La zone spell+0x08 est un BoostFormula.
    // BoostFormula::GetBoost(...) @ 0x0040C350 retourne un double,
    // ensuite converti en entier par le runtime (_ftol-like @ 0x004D1D7A).
    double value = spell->manaFormula.GetBoost(
        caster,
        target,
        0.0, 0.0, 0.0,
        nullptr
    );

    return static_cast<int>(value);
}

static bool SpellCooldownExpired_PSEUDO(Character* caster)
{
    ExhaustPseudo ex = caster->GetExhaust();              // vtable +0x70
    return ex.spellReadyRound <= TFCMAIN::GetRound();
}


// ============================================================================
// 4) Character::CastSpell(unsigned short, Unit*)
// Adresse : 0x004199A0
// Signature certaine : int Character::CastSpell(unsigned short, Unit*)
// ============================================================================

int Character_CastSpell_Target_PSEUDO(
    Character* caster,
    std::uint16_t spellId,
    Unit* target)
{
    int result = 0;

    // Toute tentative de sort dérange/interrompt l'action actuelle.
    caster->Disturbed();                                  // 0x0041FC80

    // Lancer un sort dissipe l'invisibilité.
    caster->DispellInvisibility();                        // vtable +0x1D8 => 0x0048FB90

    SpellPseudo* spell = reinterpret_cast<SpellPseudo*>(
        SpellMessageHandler::GetSpell(spellId)            // 0x00462230
    );

    // GetSkill(spellId) sert ici de preuve que le personnage connaît le sort.
    USER_SKILL* learned = caster->GetSkill(spellId);      // vtable +0x170 => 0x0041E770

    if (!spell || !learned)
        return 0;

    bool restorePreviousAutoCombat = false;

    // byte_240 : rôle exact inconnu. Il modifie la gestion auto-combat/self-target.
    if (!spell->byte_240) {
        if (caster->autoCombatTarget /* Character+0x408, inféré */ == nullptr)
            restorePreviousAutoCombat = true;
    }
    else if (target != caster) {
        // Pas d'action visible dans ce bloc ; branche conservée pour refléter le CFG.
    }

    // Cooldown/exhaust du sort.
    if (!SpellCooldownExpired_PSEUDO(caster)) {
        // IntlText::GetString(0x12, casterLanguage, "")
        rev::SendSpellError(caster, 0x12);

        if (restorePreviousAutoCombat)
            caster->RestorePreviousAutoCombatState();     // 0x0041FE80

        return 0;
    }

    const int energyCost = ComputeSpellEnergyCost_PSEUDO(spell, caster, target);

    // GetMana() : vtable +0xEC => Character::GetMana @ 0x0041D7B0
    if (caster->GetMana() < static_cast<std::uint16_t>(energyCost)) {
        // Dans le binaire, StopAutoCombat() n'est appelé ici que si +0x408 == 0.
        if (caster->autoCombatTarget == nullptr)
            caster->StopAutoCombat();                     // 0x0041FE40

        // IntlText ID 0x13 : message d'échec associé au manque de mana/énergie.
        rev::SendSpellError(caster, 0x13);

        if (restorePreviousAutoCombat)
            caster->RestorePreviousAutoCombatState();

        return 0;
    }

    // Journal de cast.
    if (target == nullptr) {
        rev::DebugLog(
            "Player %s cast spell ID %u (without target).",
            caster->GetTrueName(), spellId
        );
    }
    else {
        rev::DebugLog(
            "Player %s cast spell ID %u on target %s.",
            caster->GetTrueName(), spellId, target->GetName(IntlText::GetDefaultLng())
        );
    }

    // Si byte_240 est actif et que le sort vise le lanceur, le combat auto est stoppé.
    if (spell->byte_240 && target == caster)
        caster->StopAutoCombat();

    // Le vrai code passe la position courante de la cible à ActivateSpell.
    WorldPos targetPos = target->GetWL();                  // vtable +0x1C

    result = SpellMessageHandler::ActivateSpell(
        spellId,
        caster,
        nullptr,      // deuxième Unit* observé = 0
        target,
        targetPos
    );                                                    // 0x00461560

    if (result != 0) {
        // vtable +0x180 => Character::UseSpellEnergy(unsigned short)
        caster->UseSpellEnergy(static_cast<std::uint16_t>(energyCost));
    }
    else if (!restorePreviousAutoCombat) {
        caster->StopAutoCombat();
    }

    if (restorePreviousAutoCombat)
        caster->RestorePreviousAutoCombatState();

    return result;

    /*
       NOTE DE REVERSE ENGINEERING :
       l'assembleur à 0x419A81..0x419A85 teste target puis charge [target]
       avant le saut conditionnel vers le log "without target". Pris littéralement,
       un target == nullptr pourrait donc provoquer un déréférencement nul avant la
       branche de log. Le pseudo-code ci-dessus montre l'intention fonctionnelle,
       pas ce détail potentiellement dangereux de l'ordonnancement compilé.
    */
}


// ============================================================================
// 5) Character::CastSpell(unsigned short, WorldPos)
// Adresse : 0x00419D40
// Signature certaine : int Character::CastSpell(unsigned short, WorldPos)
// ============================================================================

int Character_CastSpell_Position_PSEUDO(
    Character* caster,
    std::uint16_t spellId,
    WorldPos pos)
{
    caster->Disturbed();
    caster->DispellInvisibility();

    SpellPseudo* spell = reinterpret_cast<SpellPseudo*>(
        SpellMessageHandler::GetSpell(spellId)
    );
    USER_SKILL* learned = caster->GetSkill(spellId);

    if (!spell || !learned)
        return 0;

    if (!SpellCooldownExpired_PSEUDO(caster)) {
        rev::SendSpellError(caster, 0x12);
        return 0;
    }

    // Cette surcharge calcule le coût sans Unit* cible.
    const int energyCost = ComputeSpellEnergyCost_PSEUDO(spell, caster, nullptr);

    if (caster->GetMana() < static_cast<std::uint16_t>(energyCost)) {
        if (caster->autoCombatTarget == nullptr)
            caster->StopAutoCombat();

        rev::SendSpellError(caster, 0x13);
        return 0;
    }

    // Le journal distingue (x=0,y=0) du vrai ciblage de position.
    if (pos.x == 0 && pos.y == 0) {
        rev::DebugLog(
            "Player %s cast spell ID %u on himself",
            caster->GetTrueName(), spellId
        );
    }
    else {
        rev::DebugLog(
            "Player %s cast spell ID %u on position %u, %u, %u.",
            caster->GetTrueName(), spellId,
            pos.x, pos.y, pos.worldOrZ
        );
    }

    int result = SpellMessageHandler::ActivateSpell(
        spellId,
        caster,
        nullptr,
        nullptr,
        pos
    );

    if (result != 0)
        caster->UseSpellEnergy(static_cast<std::uint16_t>(energyCost));

    return result;
}


/*
===============================================================================
RÉSUMÉ DES ÉLÉMENTS CONFIRMÉS PAR LES SYMBOLES EXPORTÉS
===============================================================================

0x00419960  Character::UseSpellEnergy(unsigned short)
0x004199A0  Character::CastSpell(unsigned short, Unit*)
0x00419D40  Character::CastSpell(unsigned short, WorldPos)
0x0041DA50  Character::GetTrueName()
0x0041D7B0  Character::GetMana()
0x0041DAD0  Character::GetExhaust()
0x0041E770  Character::GetSkill(unsigned long)
0x0041FC80  Character::Disturbed()
0x0041FE40  Character::StopAutoCombat()
0x0041FE80  Character::RestorePreviousAutoCombatState()
0x00454A90  Players::IsGod()
0x00454AA0  Players::SetGodMode(int)
0x00454AC0  Players::SetGodFlags(unsigned __int64)
0x00454AE0  Players::GetGodFlags()
0x00456030  Players::LoadAccount(CString)
0x00456E10  Players::GetAccount()
0x00457980  Players::ResetIdle()
0x004583F0  Players::Logon()
0x00458C60  Players::GetFullAccountName()
0x00451C80  CPlayerManager::CreatePlayer(sockaddr_in, CString)
0x00461560  SpellMessageHandler::ActivateSpell(...)
0x00462230  SpellMessageHandler::GetSpell(unsigned short)
0x00472290  TFCMAIN::GetRound()

SQL retrouvés directement dans le binaire :

  SELECT PlayerName, Appearance, CurrentLevel
  FROM PlayingCharacters WHERE AccountName='%s'

  SELECT FlagBitPosition FROM UserFlags WHERE AccountName='%s'

  UPDATE OnlineUsers SET PlayerName='%s' WHERE AccountName='%s'

Autres requêtes visibles près des routines de session :

  DELETE FROM OnlineUsers WHERE AccountName='%s'

  INSERT INTO OnlineUsers(MachineName,AccountName,PlayerName,IPaddr)
  VALUES ('%s','%s','<%s>','%s')

===============================================================================
*/
