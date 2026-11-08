# Limites, différences entre données mémoire et disque

- **CONFIRMÉ** : présence du masque XOR sur lecture `fgetc`, table 3 418 octets, index modulo taille à partir de la position du flux ; marqueur en-tête `0x0CA7` et version `1` ; lecteurs typés sur 1/2/4 octets et chaînes précédées de longueur DWORD.
- **CONFIRMÉ** : des données de sorts sont lues depuis le flux principal et éventuellement un second flux, avant construction d'un objet en mémoire de `0x418` octets ; `0xE4` est le *pas de destruction d'une structure chargée*, non la taille d'un enregistrement WDA fixe.
- **INFÉRÉ** : l'initialisation du générateur avec deux constantes peut permettre de reproduire le masque. La séquence de calcul des octets pseudo-aléatoires doit encore être entièrement documentée en `0x458FF0` et testée sur fichier externe authentique.
- **INCONNU** : exemplaires des fichiers WDA, contenu des enregistrements, version d'un fichier réel, prise en charge effective de toutes les variantes de monde, règle de fusion/remplacement des doublons, encodage des chaînes, tailles de leurs contenus, sécurité des allocations sous corruption.
- Ne pas transformer les offsets de structures C++ (`+0x24`, `+0x3AC`) en offsets disque.
- Ne pas présenter le XOR comme un protocole de sécurité ni comme un format WDA complet.
- Ne pas présenter l'absence de FICHIER comme une absence de mécanisme; la documentation du code de lecture est vérifiée mais la validation de format complet est **non réalisée**.
