/* T4C Server 1.25, passe 14 — pseudocode descriptif, NON compilable. */

struct WireUnitInformation { uint16_t appearance; uint32_t unitId;
    int8_t radiance; uint8_t status; uint8_t hpPercent; };

// Character::PacketStatus(TFCPacket&, bool), VA 0x41F5A0.
// Avertissement : certaines valeurs peuvent provenir d'une unité associée (chaîne +0x128).
void PacketStatus_documente(Character *character, TFCPacket &p) {
    Unit *source = ResolveSourceAccordingToOriginalFlags(character);  // à compléter
    p << (uint16_t)43;
    p << (uint32_t)source->GetHP() << (uint32_t)source->GetMaxHP();
    p << (uint16_t)source->GetMana() << (uint16_t)source->GetMaxMana();
    int64_t xp = source->GetXP();
    p << (uint32_t)((uint64_t)xp >> 32);
    // Le binaire appelle le getter XP une seconde fois pour la moitié basse.
    p << (uint32_t)source->GetXP();
    p << (uint16_t)ConvertFloatToInteger(source->GetAC());
    p << (uint16_t)ConvertFloatToInteger(source->GetTrueAC());
    // Intermédiaire : stats STR/END/AGI/WIS/INT et GetTrue*, voir tableau 53.
    WriteStatFieldsExactSourceOrder(p, source);
    p << (uint16_t)source->GetLevel();
    p << (uint16_t)source->GetSkillPoints();
    p << (uint16_t)source->GetWeight();
    p << (uint16_t)source->GetMaxWeight();
    p << (uint16_t)source->GetKarma();
    p << (uint16_t)source->GetTrueMaxHP();
}

// WorldMap::packet_inview_units, VA 0x4B0C40.
// Sous-séquence seulement si au moins une unité visible admissible.
void AppendInviewUnits(TFCPacket &p, const vector<Unit*>& units) {
    if (units.empty()) return;
    p << (uint16_t)16;
    p << (uint16_t)units.size();
    for (Unit* unit : units) {
        WorldPos pos = unit->GetWL();
        p << (uint16_t)pos.x << (uint16_t)pos.y;
        unit->PacketUnitInformation(p); // appearance u16; unitId u32; radiance i8; status u8; hp% u8
    }
}

// Session en cas de placement réussi, voie longue.
void DocumentS2C46LongPath(Character *c, TFCPacket &p, uint8_t flag) {
    p << (uint16_t)46 << flag;
    if (WorldMap *w = GetCurrentWorldIfAvailable(c))
        w->packet_inview_units(/*position, packet, others: see export signature */);
    c->SendPlayerMessage(p); // vtable +0x14C, si session rattachée
}

// Autre branche détectée : << u16(46) << u8(1) puis SendPlayerMessage.
// L'acceptation par le client de cette variante courte n'est pas prouvée.
