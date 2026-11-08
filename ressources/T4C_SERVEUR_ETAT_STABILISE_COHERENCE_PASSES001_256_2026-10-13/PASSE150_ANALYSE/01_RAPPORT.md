# Passe 150 — Continuité d’un grand bloc de NPCstructure::OnAttackHit

Le bloc de 0x44B177 à 0x44BD7B suit sans saut l’instruction couverte 0x44B174 (« mov [ebp-4],esp »). Les 890 instructions constituent un flot linéaire, terminé par ret. GNU objdump et LLVM llvm-objdump s’accordent sur toutes les frontières et octets ; quatre NOP d’alignement après ret restent hors compteur. Les 162 appels directs de ce bloc ciblent deux routines déjà couvertes.

Octets uniques de cette passe : **3077**. Instructions nouvelles : **890**. Couverture statique cumulée : **818,829 / 905,117 = 90.466647 %**.

