# Méthode vérifiable et limites

1. Empreinte SHA-256 du PE vérifiée; section `.text` base VA `0x401000`, offset fichier `0x1000`, taille `905117`.
2. Plages de fonctions ciblées, bornes d'instruction alignées, `objdump -d -M intel --insn-width=16`. Aucune dérivation par balayage arbitraire du flux d'instructions.
3. Chaque séquence d'octets de chaque instruction est comparée à sa position précise `0x1000 + VA - 0x401000` dans le binaire. Aucun octet divergeant. Padding NOP/INT3 exclus.
4. La couverture compte l'union des **octets d'instructions documentées**, pas le nombre de fonctions ou de chemins exécutés.
5. `09_MASQUE_AJOUTS_P69.bitset` est la différence des adresses revérifiées et `PASSE68_DESASSEMBLAGE/09_MASQUE_CUMULE_P68.bitset`. `10_MASQUE_CUMULE_P69.bitset` en est l'union. 1 bit = 1 octet `.text`, bit `offset%8` de l'octet `offset//8`, dernier octet complété par 0.
6. Contrôles avant livraison : la différence est disjointe du masque historique, son nombre de bits = somme des plages TSV, le masque cumulatif a exactement historique+nouvelles adresses.
7. Les ordinals MFC n'identifient pas leurs noms sources. L'interprétation des risques d'allocation est **conditionnelle** à un retour NULL; aucune exécution du serveur ou injection d'échec n'a été entreprise.
