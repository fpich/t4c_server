/* T4C Server — passe 3, pseudocode analytique NON COMPILABLE.
 * Faits observés dans T4C Server(1).exe ; voir rapport et extraits.
 * Les noms auxiliaires sont symboliques et la logique reste incomplète.
 */

// Character::DataSaveCallback @ 0x00413CA0
void Character_DataSaveCallback_PARTIEL(void* character, unsigned long arg, void* context) {
    // Le désassemblage passe par 0x41DA50 pour récupérer des données textuelles.
    // Deux appels distincts à 0x471D40 avec les constantes 0x800 puis 4.
    report_using_unknown_helper_0x471D40(/*0x800, format @0x501280*/);
    report_using_unknown_helper_0x471D40(/*4, format @0x50125C*/);
    // Import indirect @0x4DE12C, argument lu depuis character+0x120.
    call_unidentified_import_0x4DE12C(read_ptr(character, 0x120));
}

// Character::SaveCharacter @ 0x00413D50 — PRÉFIXE UNIQUEMENT
void Character_SaveCharacter_PREFIXE(void* character, int option) {
    if (option != 0) {
        log_using_unknown_helper_0x471D40(/*0x800, format @0x50182C*/);
        call_unidentified_import_0x4DE13C(read_ptr(character, 0x120));
    }
    call_virtual_on_subobject(character, 0x30, 0x4);
    call_unknown_0x48E9F0(character);
    auto value = call_unknown_0x48B700(character);
    if (read_u32(character, 0x170) != 0)
        call_virtual_slot(character, 0x20, /*12 octets de constantes*/);
    auto* request_like = allocate_0x44_bytes();
    // Suite non reconstituée : aucune affirmation de commit SQL/sauvegarde réussie.
}

// Players::SaveAccount @ 0x00454B00 — PRÉFIXE UNIQUEMENT
void Players_SaveAccount_PREFIXE(void* players) {
    auto* request_like = allocate_0x44_bytes();
    auto account = get_string_using_0x456E10(players);
    auto escaped = replace_apostrophe_with_double_apostrophe(account);
    auto statement_like = format_using_resource_0x506480(escaped);
    call_unknown_0x4252A0(request_like, statement_like);
    bool condition = call_unknown_0x454A90(players) != 0;
    if (!condition) { /* branche @0x454CCF ; reste à analyser */ }
}
