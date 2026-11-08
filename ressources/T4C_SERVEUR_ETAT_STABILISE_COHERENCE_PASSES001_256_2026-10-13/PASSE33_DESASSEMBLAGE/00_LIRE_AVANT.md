# Serveur T4C — Passe 33, analyse pure

**Nouvelle couverture : 5.832 %**, soit 52789 / 905117 octets de `.text` vérifiés. Base stabilisée à 48321 octets et contribution nouvelle non redondante de 4468 octets.

Découvertes : appels à `Unit::VerifyTimers` depuis `ObjectTimer`, événements des objets et entretien des joueurs ; lien avec le thread de rounds. Voir `01_RAPPORT_PASSE33_CIRCUITS_TIMERS.md`.

Archive dérivée de la stabilisation des 32 passes : **223 fichiers historiques inchangés**, aucune reconstruction ni artefact du serveur Python. Le taux mesure les octets de preuves assembleur et non la fraction de comportements compris.
