/*
 * T4C Server.exe — Passe 11. Pseudocode documentaire, NON compilable.
 * Source: analyse statique du PE32, SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
 * Types, durées de vie et conventions de retour simplifiés.
 * CONFIRME = instruction ou symbole dans binaire ; A_PRECISER = effet métier non prouvé.
 */

/* Format SQL exact confirmé à 0x501ACC (projection de 31 colonnes) :
SELECT UserID,AccountName,wlX,wlY,wlWorld,nClass,CurrentHP,MaxHP,CurrentMana,MaxMana,Strength,Endurance,Agility,Intelligence,Wisdom,CurrentLevel,AttackSkill,DodgeSkill,Gold,Appearance,Corpse,XP,StatPnts,SkillPnts,Karma,Gender,ListingTitle,ListingMisc,MoveExhaust,MentalExhaust,AttackExhaust FROM PlayingCharacters WHERE PlayerName='%s'
 */

int Character_LoadCharacter_PASS11(Character* self, CString playerName) {
    if (self->field_178 == nullptr) return 6; // 0x414B99 / 0x415BBF (chemin observé)

    OdbcCursor& readCur = GLOBAL_ODBC_0x511678;
    readCur.Query(Format(SQL_SELECT_PLAYINGCHARACTERS_0x501ACC, playerName));
    if (!readCur.Fetch()) return 6; // certains chemins via 0x415B79

    self->SetID(readCur.GetU32(1));       // [CONFIRME] Unit::SetID 0x48B710
    CString accountName = readCur.GetString(2); // tampon 0x14 passé
    if (!CompareObservedAccount(self, accountName)) return 10; // 0x415B61

    // [CONFIRME] indice 3, 4, 5 => wlX, wlY, wlWorld
    self->SetPositionViaVirtual({
        readCur.GetU32(3), readCur.GetU32(4), readCur.GetU32(5)});

    // [CONFIRME] les lectures 7..24, puis 6, 25..31 alimentent
    // setters virtuels / internes et champs. Voir TSV de 31 lignes.
    ApplyMappedColumns_PASS11(self, readCur);
    readCur.CloseResult();

    self->Unit_LoadFlags(readCur, self->GetID()); // @0x41503B, symbole @0x48F370
    // [CONFIRME] seconde invocation après chargement d'objets @0x4152F5.

    readCur.Query(Format("SELECT ObjID, EquipPos, ObjType, Qty FROM PlayerItems WHERE OwnerID=%u", self->GetID()));
    while (readCur.Fetch()) {
        // colonnes: ObjID, EquipPos, ObjType, Qty
        ParsedItem item = ReadItemRecord(readCur);
        Objects* obj = ConstructObjectsAndValidate_PARTIAL(item);
        if (obj != nullptr) {
            obj->SetQty(item.qty); // [CONFIRME] @0x44C400, détails de conversion à confirmer
            // [PARTIEL] rangement au sol / sac / équipement selon EquipPos.
            PlaceInCharacterInventoryOrEquipment_PARTIAL(self, obj, item.equipPos);
        }
    }
    readCur.CloseResult();

    readCur.Query(Format("SELECT SkillID, SkillPnts FROM PlayerSkills WHERE OwnerID=%u", self->GetID()));
    while (readCur.Fetch()) {
        auto skillId = readCur.GetU16(1);
        auto points  = readCur.GetU16(2);
        self->LearnSkill_PARTIAL(skillId, points); // symbole @0x41E0C0
    }
    // [CONFIRME] test de la compétence 0x23=35, branche de création par défaut
    // de l'archerie à 0x0F=15 points si la recherche renvoie null.
    if (self->FindSkillViaVtable(35) == nullptr)
        self->LearnSkill_PARTIAL(35, 15); // résultat et textes d'erreur non supprimés
    readCur.CloseResult();

    readCur.Query(Format("SELECT SpellID FROM PlayerSpells WHERE OwnerID=%u", self->GetID()));
    while (readCur.Fetch()) {
        uint32_t spellId = readCur.GetU32(1);
        AppendToSpellContainer_PARTIAL(self, spellId); // this+0x3E0 / liés
    }
    readCur.CloseResult();

    self->Unit_LoadEffects(readCur, self->GetID()); // @0x415A84 / 0x48E8A0
    self->Unit_LoadBoosts(readCur, self->GetID());  // @0x415AA2 / 0x48F070
    return 0; // @0x415AF7, chemin nominal observé
}
