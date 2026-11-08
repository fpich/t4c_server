# Passe 207 — Audit des zones non couvertes

Après les réparations : **75406 octets** non couverts, répartis en **4392 intervalles**.

Les séquences **uniformes de 4 octets ou plus** composées exclusivement de `90`, `CC` ou `00` représentent un total de **38083 octets candidats de remplissage** (`90`: 29544; `CC`: 7744; `00`: 795).

Cette mesure est **une détection de motifs, pas une certification** : en particulier, les octets zéro peuvent également appartenir à des valeurs immédiates ou à des données. Aucune de ces séquences n'a été convertie en code dans le masque.

Les grandes lacunes isolées après un retour, un saut sans retour ou une exception ne sont pas désassemblées linéairement par défaut. Les métadonnées nécessaires à la validation de leurs entrées restent à rechercher.
