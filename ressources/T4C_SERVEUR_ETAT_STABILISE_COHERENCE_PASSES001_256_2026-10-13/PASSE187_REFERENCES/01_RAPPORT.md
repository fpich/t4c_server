# Passe 187 — Recherche de références

Recherche brute des pointeurs absolus et des opcodes de saut/appel directs encodés vers `0x4BAA90`, `0x434670` et la zone `0x493A75–0x493A7B`. Aucune référence `E8/E9` ni occurrence directe de l'adresse 32 bits dans le fichier.

Limite : l'absence de ces formes ne prouve pas l'absence d'appel virtuel, de branche indirecte, de pointeur calculé, ni de référence hors du binaire.

Les répertoires TLS et exceptions PE sont vides ; cela n'exclut pas les métadonnées d'exception C++ propres au compilateur.
