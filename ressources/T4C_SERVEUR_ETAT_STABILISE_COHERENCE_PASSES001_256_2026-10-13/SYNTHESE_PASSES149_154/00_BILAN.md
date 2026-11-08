# Passes 149–154 — Continuations vérifiées sans surestimation

- **Couverture : 818,829/905,117 = 90.466647 %** (référence : 815 752 octets à la passe 148).
- Gain réel : **3 077 octets** de la grande routine `NPCstructure::OnAttackHit` entre `0x44B177` inclus et `0x44BD7C` exclu.
- Deux désassembleurs concordants pour 890 instructions; aucun chevauchement avec le masque 148.
- 162 appels E8 directs, exclusivement vers 0x4D1A64 et 0x48A2D0.
- Quatre octets d'alignement à 0x44BD7C–0x44BD7F non comptabilisés.
- Aucune promotion de code sans provenance dans les autres grandes zones isolées.
- Les 89,451 % hérités de la passe 148 restent **une mesure statique**, dont certains points d'entrée heuristiques doivent encore être audités.

Il reste **86,288 octets hors masque**.
