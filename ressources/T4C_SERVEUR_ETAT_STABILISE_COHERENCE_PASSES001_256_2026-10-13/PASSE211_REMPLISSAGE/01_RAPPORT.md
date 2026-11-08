# Passe 211 — Remplissage d'alignement fortement étayé

- 1,525 segments de NOP/INT3 consécutifs, tous absents du masque d'instructions.
- 15,398 octets cumulés.
- Pour chaque segment : une instruction terminale historique (ret/jmp/int3) finit au premier octet ; le segment termine juste avant un prologue `55 8B EC` aligné à 16 octets.
- Cette preuve est **structurelle** et ne prouve pas l'absence de toute entrée indirecte. On parle donc de remplissage probable fortement étayé, et non de code exécuté.
