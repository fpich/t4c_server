/* Passe 4 — reconstruction PARTIELLE et NON COMPILABLE.
 * Noms auxiliaires inférés ; valeurs d'offsets et branchements observés.
 */

int Character_LoadCharacter_partial(Character* self, CString name) {
    /* @0x414B93 */ auto account = field_ptr(self, 0x178);
    /* @0x414BA0 */ set_field_u32(self, 0x198, 0);
    if (!account) return unresolved_path_0x415BAB();
    /* @0x414BD2+ : construit une commande, soumise au curseur global. */
    auto cursor = global_cursor_0x511678();
    cursor.prepare_and_submit(/* format @0x501ACC, name */);
    if (!cursor.step_0x44ED60()) return unresolved_path_0x415B79();
    auto col1 = cursor.get_scalar(1);
    auto col2 = cursor.get_limited_buffer(2, 0x14);
    if (!unknown_compare_0x4DE2E4(col2, account_name(account)))
        return unresolved_path_0x415B0C();
    auto col3 = cursor.get_scalar(3);
    auto col4 = cursor.get_scalar(4);
    auto col5 = cursor.get_scalar(5);
    /* suite non reconstruite */
    return UNKNOWN_RESULT;
}

uint8_t Character_PutPlayerInGame_partial(Character* self) {
    if (field_u32(self, 0x148) == 0) return 1;
    auto place = virtual_get_three_dwords(self, 0x1C);
    auto region = unknown_0x471EC0(place.field2);
    if (!region) return 1; // retour observé; chemin intermédiaire non exhaustif
    auto found = unknown_0x4AFF00(region, place, 1, virtual_call(self, 0x2C, place));
    if (found) return 0;
    // Le chemin alternatif répète jusqu'à huit essais avec offsets +-1.
    return UNKNOWN_RESULT;
}
