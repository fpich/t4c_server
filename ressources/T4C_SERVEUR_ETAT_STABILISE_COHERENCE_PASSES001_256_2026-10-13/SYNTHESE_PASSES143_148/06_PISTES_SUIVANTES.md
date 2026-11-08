# Prochaines priorités — passes 149 à 154

1. Étudier les autres racines de contrôle non liées aux exports : initialisations de bibliothèques, callbacks enregistrés et adresses de handlers SEH.
2. Rechercher les fonctions encore isolées via des preuves de références actives (et non les seules adresses relocalisées).
3. Réauditer l’ancien masque dérivé de pointeurs dans `.text`, pour éliminer les faux positifs potentiels.

`0x0043EF10` reste une fonction candidate de journalisation de terminaison : la présence d'une chaîne `exit.txt` ne suffit pas à prouver un chemin entrant.
