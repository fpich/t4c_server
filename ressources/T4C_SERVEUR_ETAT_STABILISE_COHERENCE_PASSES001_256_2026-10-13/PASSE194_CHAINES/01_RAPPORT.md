# Passe 194 — chaines

Deux appels indirects MSVCRT dont les premiers octets avaient été découpés. Les blocs successifs sont suivis seulement par branches directes et continuation.

Gain unique : **+815 octets**. Aucun octet de remplissage n’est ajouté après un `ret`.
