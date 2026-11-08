# Passe 44 — limites, corrections et continuité

- **CONFIRMÉ** : type 14, slot `[vptr+0x78]` = `Unit::DealExhaust`; slots `+0x70/+0x74` = `GetExhaust` et `SetExhaust`; quatre tables virtuelles lues directement, six slots chacune documentés.
- **CONFIRMÉ** : type 2, code `0x00F0` = branche mana avec bornage 0..GetMaxMana et SetMana; les autres codes empruntent les chemins boost et effet, avec exceptions supplémentaires.
- **CONFIRMÉ** : type 9 différencie `OnTimer` et les autres événements et code 0x18 de reprise d'état; cela ne donne pas une interprétation universelle de tous les timers du serveur.
- **CONFIRMÉ** : la constante double 0.02 est stockée en `.rdata` à `0x4DFE20`; les octets sont référencés en TSV mais exclus du dénominateur assembleur `.text`.
- **INFÉRÉ** : pour le type 14 `+0x160` agit comme un seuil de chance sur un tirage [1,100]. Vérifier l'ordre exact du test FPU pour les entrées invalides (NaN / infini).
- **NON DÉMONTRÉ** : cumul des boosts sous collisions de clé, sécurité des mutations de listes lors des callbacks, débordements, effet des points d'équipement et des WDA réels.
- **PASSE 45** : suivre `Unit::AddBoost`, `SetBoost`, et les implémentations dérivées de `SetExhaust`, puis confronter les messages réseau aux règles d'actualisation des valeurs visibles.
