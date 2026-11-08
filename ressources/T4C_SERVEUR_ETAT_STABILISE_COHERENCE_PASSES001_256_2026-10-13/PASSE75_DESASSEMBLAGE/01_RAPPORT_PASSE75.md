# Passe 75 — SESSIONS ET CYCLE DE VIE DES JOUEURS

## Mesures certifiées sur le binaire d'origine

- SHA-256 binaire: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`
- Couverture avant: **150,596 / 905,117** octets.
- Ajout non redondant: **+7,755** octets.
- Couverture après: **158,351 / 905,117**, soit **17.495 %**.
- Entrées examinées: **21** ; instructions distinctes de cette passe: **2,753**.
- Intervalles nouveaux: 21 ; cibles non décodées: 0 ; sorties par branches externes/indirectes: 0.

## Découvertes issues de l’assembleur

### Gestionnaire

CPlayerManager::CreatePlayer 0x451C80, DeletePlayer 0x451EE0 et AsyncDeletePlayer 0x452080. Cette dernière appelle Players::Logoff 0x4585C0 à 0x452161.

### Maintenance

CPlayerManager::PlayerMaintenance à 0x452870 vérifie des états de session et appelle notamment QueryAuthWatchDog (appel 0x452C0F), QueryNextSave (0x452BFD) et AccountHeartBeat (0x453057).

### Synchronisation

GrowBufferSpace 0x451B50, GetPlayerResource 0x452530 et FreePlayerResource 0x452640 documentent les gestionnaires de ressources. Les garanties de concurrence ne sont pas validées dynamiquement.

### Temps de session

Players::BeginSession 0x4577D0, GetOnlineTime 0x4578C0, Logon 0x4583F0 et Logoff 0x4585C0.

## Portée et vérification

Les preuves `.asm` contiennent uniquement des instructions atteignables par parcours de branches directes, depuis les entrées indiquées dans le registre. Chaque opcode est comparé aux octets `.text` de l'exécutable. Les données PE, instructions de padding `NOP/INT3`, xrefs indirectes non résolues et chemins non atteignables ne sont pas ajoutés. Le registre `08_LIMITES_ET_ALERTES.tsv` permet de retrouver les transferts non suivis.

Les masques sont des bitsets d'un octet `.text` par bit, bit 0 = offset 0 de `.text`, base VA `0x401000`. `06_MASQUE_AJOUTS.bitset` est disjoint du masque d’entrée; `07_MASQUE_CUMULE.bitset` est leur union exacte.

**Important :** ces résultats sont statiques. Ils ne prouvent ni le passage effectif dans chaque branche, ni une couverture de test, ni l'absence de failles; les exports et routines de branche indirecte exigent une analyse approfondie complémentaire.
