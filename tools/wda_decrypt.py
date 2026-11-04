#!/usr/bin/env python3
"""Déchiffre un fichier WDA T4C (T4C Worlds.WDA, NPCs.WDA, T4C Edit.WDA).

Format retrouvé par RE du serveur original (passes 39/40, 2026-10-13) :
- masque XOR de 3418 octets généré par LCG 64 bits :
      etat = 0x5B7E
      etat = (etat * 0x2B3DD441 + 1) mod 2^64
      octet = (etat >> 16) & 0xFF
      si octet == dernier: on tire une seconde fois (acceptée même si égale)
  SHA256 du masque (hypothèse dernier_initial=0) :
      848111896031adfaf1cd4bea25f412530c9261e560615e0663f6524215e44fdd  (vérifié)
- octet déchiffré à l'offset physique p :  data[p] XOR mask[p % 3418]

Usage : python3 tools/wda_decrypt.py <fichier.wda> <sortie.bin>
"""

import sys


def gen_mask() -> bytes:
    etat = 0x5B7E
    dernier = 0
    table = bytearray(3418)
    for i in range(3418):
        etat = (etat * 0x2B3DD441 + 1) % (2**64)
        octet = (etat >> 16) & 0xFF
        if octet == dernier:
            etat = (etat * 0x2B3DD441 + 1) % (2**64)
            octet = (etat >> 16) & 0xFF
        table[i] = octet
        dernier = octet
    return bytes(table)


def decrypt(data: bytes, mask: bytes | None = None) -> bytes:
    if mask is None:
        mask = gen_mask()
    n = len(data)
    rep = (mask * (n // len(mask) + 1))[:n]
    # XOR rapide via grands entiers (niveau C)
    return (int.from_bytes(data, "little") ^ int.from_bytes(rep, "little")).to_bytes(n, "little")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    raw = open(sys.argv[1], "rb").read()
    open(sys.argv[2], "wb").write(decrypt(raw))
    print(f"{sys.argv[1]} -> {sys.argv[2]} ({len(raw)} octets déchiffrés)")
