/* Passe 5 — observations statiques : pseudo-code non compilable.
 * Les noms métiers des colonnes ne sont pas déterminés. */
void Character_LoadCharacter_columns_partial(Character* self, OdbcCursor& cur) {
    // Au-delà des colonnes 1..5 déjà repérées en passe 4.
    // Colonnes 7..18 : alimentation de setters virtuels / helpers internes.
    // col[19] via 0x44EF10 -> zone locale +0x28 (valeur intermédiaire) ; [OBSERVE]
    // col[20] via 0x44EFF0 -> WORD this+0x7C ; [OBSERVE]
    // col[21] via 0x44EFF0 -> WORD this+0x84 ; [OBSERVE]
    // col[22] via 0x44F160 -> QWORD local, x87, conversion puis appel virtuel +0x50 ; [OBSERVE]
    // col[23] via 0x44EFF0 -> WORD this+0x1E2 ; [OBSERVE]
    // col[24] via 0x44EFF0 -> WORD this+0x1E0 ; [OBSERVE]
    // col[6] via 0x44EFF0 -> BYTE this+0x58 (lecture dans un ordre non croissant) ; [OBSERVE]
    // col[25] via 0x44EF80 -> DWORD this+0x80 ; [OBSERVE]
    // col[26] via 0x44EFF0 -> BYTE this+0x7E ; [OBSERVE]
    // col[27] via 0x44F120 -> buffer taille 0x400 puis this+0x164 ; [OBSERVE]
    // col[28] via 0x44F120 -> buffer taille 0x400 puis this+0x168 ; [OBSERVE]
    // col[29] via 0x44EF10 -> DWORD this+0x8C ; [OBSERVE]
    // col[30] via 0x44EF10 -> DWORD this+0x88 ; [OBSERVE]
    // col[31] via 0x44EF10 -> DWORD this+0x90 ; [OBSERVE]
    // 0x415009: fermeture / transition du curseur, effet exact à confirmer.
}
