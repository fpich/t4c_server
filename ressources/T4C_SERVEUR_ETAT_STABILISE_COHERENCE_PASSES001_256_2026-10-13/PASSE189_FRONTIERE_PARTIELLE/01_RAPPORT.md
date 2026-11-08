# Passe 189 — Fragment d'instruction `0x493A7B`

La preuve historique de la passe 25 a décomposé les octets `89 9D 60 FF FF` en plusieurs lignes invalides/partielles. Sur le binaire, GNU et LLVM lisent ensemble **une instruction de six octets** :

`0x493A7B: 89 9D 60 FF FF FF    mov dword ptr [ebp-0xA0], ebx`

Le masque historique contient cinq octets de cette instruction ; le sixième, `0x493A80`, est absent du masque. Le fait de reconstruire une instruction plausible ne suffit cependant pas à prouver que son point d'entrée est atteignable depuis un flot certifié. `0x493A75` est également hors masque et sans référence directe démontrée. **Aucun octet n'est ajouté** pour cette zone à cette passe.
