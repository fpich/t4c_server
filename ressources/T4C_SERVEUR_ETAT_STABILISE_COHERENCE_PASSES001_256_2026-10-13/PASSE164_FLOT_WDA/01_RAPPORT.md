# Passe 164 — Branche WDA de provenance exacte

- `0x409F64: je 0x40A61F` est une instruction historique couverte de six octets.
- `0x40A61F: xor eax,eax` est couvert et se poursuit sans transfert de controle vers `0x40A621`.
- A `0x40A621–0x40A636`, six instructions jusque-la absentes du masque sont confirmees par le binaire.
- La condition `ja 0x40C085` et le saut par 113 destinations a `0x40A630` sont structurellement coherents.
- `0x40A637` est deja present dans le masque : le nouveau bloc est borne sans chevauchement.

Gain : **22 octets uniques**.
