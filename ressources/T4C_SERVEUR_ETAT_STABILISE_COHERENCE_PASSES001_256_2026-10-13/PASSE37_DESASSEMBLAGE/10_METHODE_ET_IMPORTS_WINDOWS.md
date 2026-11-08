# Méthodologie / critères de validation

- Section `.text`: VA 0x401000, 905117 octets, offset fichier 0x1000.
- Exe SHA256: `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- Chaque instruction ajoutée provient d'`objdump -d -M intel` sur des plages de fonctions ciblées. Ses octets sont comparés au binaire.
- Relevé des octets uniques de **toutes les preuves archivées** après soustraction des chevauchements entre passes.
- Les preuves de `t4c.exe` (client) déjà présentes dans l'historique ne sont pas intégrées au numérateur serveur. Les 536 rejets historiques correspondent à la base antérieure ; dans cette passe zéro rejet supplémentaire.
- Une preuve de bytes n'établit pas qu'une branche est réellement exécutée ou que l'algorithme est sûr en environnement concurrent.
- À la fin, chaque entrée historique ZIP sera comparée au membre de même nom dans le nouveau ZIP, et l'archive intégrale sera validée.

# Imports système vérifiés dans le PE

Les imports sont résolus à partir de `objdump -p` appliqué à `T4C Server(1).exe`; les chaînes suivantes appartiennent à **KERNEL32.dll** dans l'import directory PE.

| IAT VA | Fonction système | Utilisation étudiée |
|---|---|---|
| `0x4DE0DC` | `InitializeCriticalSection` | Création des verrous de liste |
| `0x4DE0F8` | `EnterCriticalSection` | `GetEffectProc`, entrée sous verrou |
| `0x4DE0FC` | `LeaveCriticalSection` | `GetEffectProc`, sortie du verrou |
| `0x4DE0E0` | `DeleteCriticalSection` | Destruction des listes temporaires |

**Attention :** le fait que `GetEffectProc` prenne un verrou ne prouve pas que tous les chemins modifiant le registre prennent le même verrou. Distinguer le verrou de chaque unité (`Unit+0x30`) du verrou du registre global (`0x556408`).
