/* Passe 7 — description documentée, NON compilable ; PAS source original. */
// Requêtes identifiées par les chaînes SQL et par leurs références en assembleur.
void SaveCharacter_SQL_Observed_PSEUDO(Character* c) {
  // @0x413EA4 -> @0x5017CC : DELETE PlayerItems WHERE OwnerID = ...;
  // @0x413EF5 -> @0x5017A4 : DELETE Flags WHERE BaseOwnerID = ...;
  // @0x413F46 -> @0x50177C : DELETE Boosts WHERE BaseOwnerID = ...;
  // @0x413F97 -> @0x501750 : DELETE Effects WHERE BaseOwnerID = ...;
  // @0x41409D -> @0x5016E0 : INSERT PlayerItems (backpack, EquipPos=0);
  // @0x41421C -> @0x50166C : INSERT PlayerItems (equipment, EquipPos variable);
  // @0x4142CE -> @0x501630 : DELETE PlayerSkills WHERE OwnerID = ...;
  // @0x4143CE -> @0x5015B0 : INSERT PlayerSkills ...;
  // @0x501354 : UPDATE PlayingCharacters ... (chaîne extraite, chemin à recouper).
  // @0x501514 / @0x501554 : INSERT/DELETE PlayerSpells (chemin à recouper).
  // Transactions, erreurs, affectations des paramètres non établies ici.
}
