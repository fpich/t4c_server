/* Reconstruction STATIQUE illustrative — pas du code original; non compilable.
 * Le binaire encode la totalité de ce bloc S2C 43 en big-endian.
 */
void Character_PacketStatus_PSEUDO(Character* self, TFCPacket& p, bool stopFollow) {
    UnitLike* u = self;
    // Chaîne +0x128 parcourue selon le booléen et les liens présents ;
    // la forme exacte de l'arrêt est documentée en assembleur.
    if (!stopFollow) while (u->link_0x128) u = u->link_0x128;
    p.put_u16_be(43);
    p.put_u32_be(u->virtual_0xD8());
    p.put_u32_be(u->virtual_0xCC());
    p.put_u16_be(u->virtual_0xEC());
    p.put_u16_be(u->virtual_0xE0());
    // 2 appels distincts dans le vrai code, pas un appel atomique:
    p.put_u32_be(high32_from_u_virtual_0x54());
    p.put_u32_be(low32_from_u_virtual_0x54());
    p.put_u16_be(truncated_ftol(u->virtual_0x168()));
    p.put_u16_be(truncated_ftol(u->GetTrueAC()));
    p.put_u16_be(u->GetSTR()); p.put_u16_be(u->GetEND());
    p.put_u16_be(u->GetAGI()); p.put_u16_be(0);
    p.put_u16_be(u->GetWIS()); p.put_u16_be(u->GetINT());
    p.put_u16_be(0); p.put_u16_be(u->GetStatPoints());
    p.put_u16_be(u->GetTrueSTR()); p.put_u16_be(u->GetTrueEND());
    p.put_u16_be(u->GetTrueAGI()); p.put_u16_be(0);
    p.put_u16_be(u->GetTrueWIS()); p.put_u16_be(u->GetTrueINT());
    p.put_u16_be(0);
    p.put_u16_be(u->virtual_0x13C()); p.put_u16_be(u->virtual_0x174());
    p.put_u16_be(u->virtual_0x198()); p.put_u16_be(u->virtual_0x19C());
    p.put_u16_be(u->virtual_0x1B8()); p.put_u16_be(u->virtual_0xD0());
}
// Note : GetTrueAC et GetStatPoints sont des noms d'exports Character,
// pas la preuve que le sous-objet u soit de classe Unit exacte ici.
