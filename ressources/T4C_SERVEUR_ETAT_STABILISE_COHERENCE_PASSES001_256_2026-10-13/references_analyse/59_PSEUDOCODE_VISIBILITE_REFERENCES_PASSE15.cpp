/* T4C Server — passe 15 : analyse statique, pseudocode NON compilable.
 * Les noms de fonctions proviennent des exports et des vtables (passe 14).
 * Ne reproduit pas les allocations ni les filtres détaillés.
 */
struct UnitLike {
    unsigned refCountAt0x5C;
    void CreateVirtualUnit(); // 0x48B030: ++refCountAt0x5C (PAS une allocation)
    bool DeleteUnit();         // 0x48AF10: --refCountAt0x5C;
                               // destruction/notification UNIQUEMENT si zéro
    int GetType();
    QueryInvisible *GetInvisibleQuery();
    unsigned GetAppearance();
    void GetWL(WorldPos &out);
    void PacketPuppetInfo(Packet &p);
    void PacketUnitInformation(Packet &p);
};

// 0x4AF5D0, test parmi plusieurs conditions de visibilité.
bool CandidateAllowed(UnitLike *u, /* autres arguments */) {
    if (u->GetType() == 4) return false;
    QueryInvisible *query = u->GetInvisibleQuery();
    return InvokeQueryVirtual(query, /* viewer/context */); // à préciser
}

// 0x4B0C40, représentation structurée, pas un code source C++ reconstitué.
int PacketInviewUnits(WorldMap *w, Packet &out, Viewer *recipient) {
    vector<UnitLike*> referenced;
    for (each cell in BoundedCellWindow(w, /* coords, range */)) {
        for (UnitLike *u : cell.units) {
            if (!CandidateAllowed(u, /* context */)) continue;
            u->CreateVirtualUnit();   // rétention de référence de l'objet existant
            referenced.push_back(u);
        }
    }
    if (referenced.empty()) return 0; // aucune écriture S2C 16 dans CE chemin
    out << (uint16_t)16 << (uint16_t)referenced.size();
    for (UnitLike *u : referenced) {
        WorldPos p = u->GetWL();
        out << (uint16_t)p.x << (uint16_t)p.y;
        if (u->GetAppearance() == 0x271B || u->GetAppearance() == 0x271C) {
            Packet extra;
            u->PacketPuppetInfo(extra);
            recipient->SendPlayerMessage(extra); // paquet DISTINCT
        }
        u->PacketUnitInformation(out);
        u->DeleteUnit();  // libère la référence, ne détruit pas nécessairement
    }
    return referenced.size();
}

// Chemin de session 0x47B91B / 0x47B943.
void SendEntrance46(Character *ch, WorldMap *world, unsigned char flag) {
    Packet p;
    p << (uint16_t)46 << flag;
    if (world) world->packet_inview_units(/* pos */, p, /* viewer */);
    ch->SendPlayerMessage(p); // un préfixe court est possible si count==0
}
