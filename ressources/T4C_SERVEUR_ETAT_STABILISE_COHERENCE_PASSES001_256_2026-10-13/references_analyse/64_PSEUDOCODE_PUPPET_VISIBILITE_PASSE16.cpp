/* T4C Server — passe 16, code descriptif, NON COMPILABLE.
 * Ne constitue pas le code source original, ne remplace pas les vtables.
 */

void Character::PacketPuppetInfo(TFCPacket &p) {       // @0x41FB70
    p << (uint16_t)68;
    p << (uint32_t)GetID();
    const unsigned offsets[8]={0x1A0,0x1A4,0x1A8,0x1AC,0x1B0,0x1C0,0x1C4,0x1DC};
    for (unsigned offset:offsets) {
        auto *slot = ReadPointerAtOffset(this,offset);
        p << (uint16_t)(slot ? CallVirtual0x2C(slot) : 0);
    }
}

void Creatures::PacketPuppetInfo(TFCPacket &p) {       // @0x433020
    void *record=CallVirtual0x24(/* arg = 0x14 et sortie */);
    if (!record) { Unit::PacketPuppetInfo(p); return; }
    p << (uint16_t)68 << (uint32_t)GetID();
    for (unsigned off=0x10C; off<=0x11A; off+=2)
        p << *(uint16_t*)((char*)record+off);
}

void Unit::PacketPuppetInfo(TFCPacket &p) {           // @0x48F620
    p << (uint16_t)68 << (uint32_t)idAt0x78;
    for (unsigned i=0;i<10;++i) p << (uint16_t)0;     // dix et NON huit
}

// @0x4AF770. Extrait du traitement, algorithme exact des bordures omis.
void WorldMap::packet_peripheral_units(/* directions/coordonnées, packet, receiver */) {
    vector<Unit*> retained;
    for (auto cell : MovementEdgeCells(/* ±12 X, ±18 Y, bounds, cellsize 4 */)) {
        for (Unit *u : cell.units) {
            if (u->GetType()==4) continue;
            if (!u->GetInvisibleQuery()->Check(/* contexte viewer */)) continue;
            u->CreateVirtualUnit(); // compteur +1
            retained.push_back(u);
        }
    }
    if (!retained.empty()) {
        packet << (uint16_t)16 << (uint16_t)retained.size();
        for (Unit *u : retained) {
            packet << (uint16_t)u->x << (uint16_t)u->y;
            u->PacketUnitInformation(packet);
            u->DeleteUnit();        // libère la référence temporaire
        }
    }
}

// @0x4B1451–0x4B14A8, chemin conditionnel de move_world_unit.
void WorldMap::BroadcastMoveIfRequested(Unit *u, WorldPos pos) {
    TFCPacket p;
    p << (uint16_t)1 << (uint16_t)pos.x << (uint16_t)pos.y;
    u->PacketUnitInformation(p);
    Broadcast::BCast(pos, 0x16, p, u->GetInvisibleQuery());
}
