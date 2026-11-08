# Exclusions de comptage

- Grandes fonctions isolées `0x4BAA90` et `0x434670` : absence de nouvel appelant démontré dans ce lot.
- Octets `00`, `90`, `CC` susceptibles de servir d'alignement : aucune conversion automatique en instructions.
- Tables de pointeurs et destinations des appels indirects non résolus : aucune attribution sans démonstration.
- Les adresses après les limites de fenêtre de l'exploration restent non qualifiées dans cette série.
