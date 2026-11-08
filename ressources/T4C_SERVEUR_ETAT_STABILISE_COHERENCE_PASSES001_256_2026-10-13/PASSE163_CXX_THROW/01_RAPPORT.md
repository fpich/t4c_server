# Passe 163 — Un chemin normalement sans retour

Les **96 appels** auparavant classes `check_call_runtime` atteignent tous `0x4D1D56`, un relais `FF 25 68 E3 4D 00` vers l'IAT `0x4DE368`, entree `MSVCRT.dll!_CxxThrowException`.

Cette routine declenche une exception C++ et ne revient pas normalement a l'instruction suivante. Ces trous ne sont donc pas promus automatiquement en chemins executables. Certaines suites peuvent etre du code atteignable par d'autres entrees, ce qui reste a prouver individuellement.

Gain : **0 octet**.
