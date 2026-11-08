# Passe 42 — Des types WDA aux validations virtuelles

## 1. Registre des fabriques : contrats x86 [CONFIRMÉ]

`SpellEffectManager::RegisterSuperstructure` (`0x460BD0`) alloue un nœud de **8 octets**, mémorise à `+0` une **adresse de fabrique**, et à `+4` une **clé WORD**. À `0x460C00`, la recherche compare ce WORD au type demandé, prend la fonction à `+0` de l'enregistrement, lui transmet le pointeur de contexte du sort et renvoie l'objet instancié. Les 14 clés statiques relevées à la passe 38 restent 1,2,3,6,7,9,10,11,12,13,14,15,16,17. Elles sont des **types de superstructure**, non des IDs de sorts ni des IDs de paramètres.

La conversion WDA dans `0x473610` appelle `0x4A72E0` puis `0x460C00` (`0x4739A7..0x4739BC`). Un type absent conduit au chemin d'erreur `unsupported effect type` et à la non-inscription dans la table active. **Le mot « fabrique » désigne ici le constructeur d'objet de type; il ne faut pas le confondre avec le callback d'effet runtime enregistré dans `UnitEffectManager`.**

## 2. Résolution des 14 vtables et validateurs [CONFIRMÉ]

Le constructeur de la structure issue de chaque fabrique écrit une adresse de table virtuelle. À l'offset `+0` de la vtable est inscrit un pointeur de fonction appartenant à `.text`. Cette table est en `.rdata` à partir de `0x4DFD6C` et dans des entrées voisines jusqu'à `0x4DFE30` pour les types étudiés. Le tableau `06_CARTOGRAPHIE_14_VALIDATEURS.tsv` recense pour les **14 clés** les couples (fabrique, vptr, validateur) vérifiés sur l'image PE, ainsi que deux entrées virtuelles adjacentes. Pour les types dérivés, la vptr finale supplante celle du constructeur de base.

Dans la boucle `0x473A05..0x473A31`, un ID de paramètre et une **valeur texte temporaire** sont construits depuis les enregistrements WDA (pas `0x2C`); le code appelle `[vptr+0]` puis vérifie `eax`. `eax == 0` entraîne le diagnostic `invalid value`, et positionne le flag d'erreur de la définition en cours. `eax != 0` poursuit l'itération. Le contenu de l'exécutable établit le protocole, **pas les valeurs réellement présentes dans un WDA**.

## 3. Différences entre les validateurs [CONFIRMÉ, nuances]

- **Types 11 et 12** : les fonctions `0x4C73A0` et `0x4C7CB0` détruisent la valeur temporaire, chargent `eax=1`, puis retournent (`ret 8`), sans inspection de la valeur ni de l'ID. Leur succès est **local à l'appel du validateur**, pas une garantie que le sort complet soit admis.
- **Type 10** : `0x4C54B0` traite spécialement l'ID de paramètre `3` en appelant `0x409900` sur un champ de chaîne à `this+0x160`; pour d'autres IDs, le code appelle **`0x4C60A0`**, le validateur du type 1. C'est un partage de comportement directement établi.
- **Type 6** : `0x4C3FC0` différencie au moins deux IDs; la branche de l'ID 1 compare la valeur à plusieurs chaînes constantes, tandis que l'ID 2 effectue une conversion via `0x48A2D0`. Un retour nul de certaines conversions invalide le paramètre.
- **Types 9 et 14** : `0x4C75A0` et `0x4C5880` utilisent des aiguillages sur **quatre cas** (`cmp ... 3` après normalisation de l'ID) et des tables de saut. Toutes les branches ne sont pas encore entièrement documentées.
- **Types 2, 3, 7, 13, 15, 16 et 17** : les routines ont des contrôles conditionnels selon l'ID du paramètre, et pour certaines des conversions ou comparaisons textuelles. La table indique des caractéristiques observées, mais il serait prématuré de baptiser ces types d'un nom d'effet métier.

## 4. Deux contrôles de validation distincts [CONFIRMÉ]

1. **Présence de paramètres** : avant toute validation virtuelle, `0x4739C9..0x4739F2` teste la présence et la longueur de la collection. Si elle manque pour un type requis par ce chemin, diagnostic `effect requires parameters`, et passage au chemin d'erreur.
2. **Valeur d'un paramètre existant** : pour chaque sous-enregistrement à pas `44`, appel virtuel et vérification de son résultat. Ainsi, les validateurs constants vrais des types 11 et 12 n'annulent **pas** le contrôle précédent sur une collection vide.

En fin de conversion, un flag d'échec non nul signifie `Spell will be inactive`; `RegisterSpell` n'est appelé par la branche documentée que si ce flag est nul. La règle « dernier enregistrement valide gagnant » de la passe 41 reste donc conditionnée par ces deux étages de validation.

## 5. Limites

Les 14 types sont des **clés de fabrique**, pas une liste exhaustive des types possibles dans d'autres versions du jeu. Les 14 vtables sont prouvées sur ce PE, mais la connaissance sémantique de leurs paramètres reste partielle. Les paramètres ne peuvent pas être validés contre de vrais WDA absents. Un `eax=1` statique dans deux validateurs ne signifie pas une résistance aux erreurs de pointeurs, aux exceptions MFC ni aux accès concurrents.
