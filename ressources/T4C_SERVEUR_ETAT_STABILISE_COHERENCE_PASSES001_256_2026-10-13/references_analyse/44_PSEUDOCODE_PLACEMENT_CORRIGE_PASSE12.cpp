/* T4C Server.exe / passe 12 — pseudo-code statique NON compilable.
 * Ne pas confondre avec le source original. Les fonctions virtuelles restent symboliques.
 */

// Noms de 0x471EC0 et 0x4AFF00 prouvés par exports.
// true = résultat non nul du binaire (échec/condition non satisfaite)
bool Character_PutPlayerInGame_PSEUDO(Character* self) {
    if (self->field_0x148 == nullptr) return true; // AL=1 @41E9D6
    WorldPos pos = self->virtual_0x1C_GetPositionLike(); // trois DWORD
    WorldMap* world = TFCMAIN::GetWorld((uint16_t)pos.world);
    if (world == nullptr) return true;
    Unit* inserted = world->create_world_unit(
        /*mode*/1, self->virtual_0x2C_AppearanceLike(),
        pos, self, /*option*/0);
    if (inserted) return false; // AL=0 @41E9CD
    return true; // AL=1 @41E9D6

    /* La table 0x41E9E0 et la boucle 0x41E936..0x41E9BE existent,
       mais elles sont inatteignables dans ce flot : le deuxième test de
       EDI à 0x41E92E saute vers le retour dès que inserted est nul.
       NE PAS implémenter de recherche de voisinage à partir de cette trace. */
}

void Handler_0x47B750_FRAGMENT_PSEUDO(SessionLike* s) {
    if (s->field_0x5C != 0) return; // autres branches non représentées
    // Condition de la branche de création à 0x47B78C..0x47B7A2 :
    if (s->field_0x48 == 0 && s->field_0x44 == 0) {
        bool failure = s->character->PutPlayerInGame();
        // appel interne 0x4274E0 via CPlayerManager::GetChatter(): rôle non résolu
        if (!failure) {
            s->field_0x44 = 1;
            s->field_0x48 = 0;
            s->character->byte_0xB0 = 0;
            s->character->DeferredLoadEffects();
            if (s->character->virtual_0x0C(0x76D3,0) > 0)
                s->character->BroadcastSeraphArrival();
            else
                s->character->BroadcastPopup(s->character->get_position(),1);
            // Autres opérations: Character::PacketStatus (0x41F5A0),
            // puis appel vtable+0x14C (sémantique exacte non encore validée).
        }
        // Les deux chemins rejoignent ensuite 0x47B8B7 : voir le rapport.
    }
}
