# Limites et priorités — série 119–124

- Le masque mesure des octets interprétés comme instructions avec preuve de provenance et contrôles de frontières pour les nouvelles passes. Il ne mesure pas la compréhension fonctionnelle ni les traces d'exécution.
- Le référentiel antérieur contient des points d'entrée découverts par relocations ; leur nature réelle nécessite une qualification séparée. Les validations de la série ne lèvent pas cette réserve.
- La première lacune a été prolongée sur 6 396 octets à partir d'une véritable instruction de continuité. Les deux autres restent sans appelant attesté ; ne pas désassembler arbitrairement après les NOP pour faire monter la couverture.
- 22 sites de sauts indexés sont classés ; 602 sites indirects distincts ont été recensés, la plupart relevant d'importations, de méthodes virtuelles ou de mécanismes nécessitant une recherche spécifique.
- Priorités : xrefs du code d'initialisation et des zones mortes, classification des thunks/imports, appels virtuels, analyse sémantique approfondie des blocs WDA et de sauvegarde.
