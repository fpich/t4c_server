# Alertes cumulées — passes 77 à 82

- Sauts indirects recensés : **7**.
- Branches sortant de la fenêtre : **71**.
- Cibles non décodables : **0**.

Ces limites ne sont pas transformées en instructions comptées. La plus grande concentration de sorties de fenêtre se situe dans `SysopCmd::VerifySysopCommand`, entrée `0x00463E00`, explorée jusqu’à la limite d'analyse `+0x36B0`. Les branches sortantes nécessiteront un suivi de cible propre avant toute nouvelle couverture.

L'analyse de la passe 77 à 82 privilégie les fonctions exportées non couvertes, et non la résolution de toutes les cibles indirectes ou la complétude des exceptions.
