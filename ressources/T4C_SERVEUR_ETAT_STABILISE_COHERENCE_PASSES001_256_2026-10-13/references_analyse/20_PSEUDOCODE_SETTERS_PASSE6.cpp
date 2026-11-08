// PASSE 6 — setters confirmés statiquement. Pseudocode, non compilable tel quel.
// this désigne l'objet reçu dans ECX, identité du type à confirmer.
#include <stdint.h>
static void set_word(void* this_object, unsigned byte_offset, uint16_t value) {
    // Schéma logique, non prévu pour être exécuté sur les objets originaux.
    *(uint16_t*)((uint8_t*)this_object + byte_offset) = value;
}
// Colonne 11; fonction 0x48E2C0
void Setter_colonne_11(void* this_object, uint16_t v) { set_word(this_object, 0x64, v); }
// Colonne 12; fonction 0x48E2B0
void Setter_colonne_12(void* this_object, uint16_t v) { set_word(this_object, 0x62, v); }
// Colonne 13; fonction 0x48E2D0
void Setter_colonne_13(void* this_object, uint16_t v) { set_word(this_object, 0x66, v); }
// Colonne 14; fonction 0x48E2A0
void Setter_colonne_14(void* this_object, uint16_t v) { set_word(this_object, 0x60, v); }
// Colonne 15; fonction 0x48E2E0
void Setter_colonne_15(void* this_object, uint16_t v) { set_word(this_object, 0x6A, v); }
// Colonne 17; fonction 0x48E2F0
void Setter_colonne_17(void* this_object, uint16_t v) { set_word(this_object, 0x70, v); }
// Colonne 18; fonction 0x48E300
void Setter_colonne_18(void* this_object, uint16_t v) { set_word(this_object, 0x6E, v); }
