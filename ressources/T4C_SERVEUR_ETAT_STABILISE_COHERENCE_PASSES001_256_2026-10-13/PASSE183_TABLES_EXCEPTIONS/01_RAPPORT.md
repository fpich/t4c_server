# Passe 183 — Verification des tables de saut et continuations interdites

- 57 bases candidates de tables de saut indexees, presentant au moins trois valeurs successives dans `.text`, identifiees a partir des instructions assembleur archivees.
- Ces tables contiennent toutes **0 octet marque comme instruction** dans le masque de la passe 178 ; elles ne doivent pas fournir d'octets a la nouvelle couverture.
- Les destinations qui pointent dans `.text` sont deja marquees par le masque : elles n'ouvrent pas de nouveau graphe.
- Les 23 principales lacunes precedees par une instruction entiere exactement archivee a la frontiere suivent un appel au relais `0x4D1D56` (`_CxxThrowException`), donc sans retour normal. Elles ne sont pas comptabilisees par simple fallthrough.
- Le relais `0x4D1D56` execute `FF 25 68 E3 4D 00`, saut indirect via la table d'import du PE.

Attention : une destination deja couverte ne garantit pas la nature complete de chaque table et les classifications n'impliquent pas une analyse dynamique.
