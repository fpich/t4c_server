# Serveur T4C original dans Docker

Exécute le **vrai binaire** `ressources/T4C_Server/T4C Server.exe` (Vircom, 1999)
sous Wine dans Debian 13 (trixie), avec `docker compose`.

## Démarrage

```bash
cd docker
docker compose up -d --build
docker compose logs -f t4c-server
```

Le serveur écoute sur **UDP 11677** (0.0D9D, valeur par défaut confirmée par
analyse du binaire) et est joignable depuis l'extérieur (`0.0.0.0`).

## Ce que fait le conteneur

1. Installe Wine 32 bits (le binaire est un PE32 i386).
2. Copie l'intégralité de `ressources/T4C_Server/` (exécutables, DLLs NPC,
   `t4c_fr.elng`, `T4C.mdb`...).
3. `entrypoint.sh` :
   - initialise le préfixe Wine,
   - importe `T4C-server.reg` : les clés
     `HKLM\Software\Vircom\The 4th Coming Server\{Network,GeneralConfig,
     Authentication,ExtensionDLLs}` que le binaire exige au démarrage
     (découvertes par analyse des chaînes du binaire : « Could not open
     registry key ... required by T4C Server »),
   - déclare le DSN ODBC `T4C Server Authentication` vers `T4C.mdb`
     (le serveur authentifie les comptes via ODBC — chaînes `ODBC_DSN`,
     `ODBC_TABLE=T4CUsers` confirmées dans le binaire),
   - lance `wine "T4C Server.exe"` en avant-plan.

## Persistance

- `t4c_db` (volume) : `T4C.mdb` — comptes et personnages. Initialisée depuis
  la mdb vierge du dépôt au premier démarrage.
- `t4c_logs` (volume) : logs du serveur (World.log, ...).

## Base de données : pourquoi pas SQLite ?

Le binaire original **parle exclusivement ODBC** (chaînes confirmées :
`ODBC_DSN`, `ODBC_TABLE`, `SELECT AccountName, UserID FROM PlayingCharacters
WHERE PlayerName='%s'`...) et requête la base Access `T4C.mdb` via Jet.
SQLite n'est pas un pilote ODBC installable dans Wine sans winetricks
supplémentaires. La persistance est donc assurée par la mdb dans le volume.

Pour un backend SQLite natif, c'est le serveur Python du dépôt
(`run_server.py --database t4c.sqlite3`) qui le fournit (étape 9).

## Réglages

| Variable | Défaut | Rôle |
|---|---|---|
| `T4C_PORT` | `11677` | port UDP (aussi fixé dans le .reg `RECV_PORT`/`SEND_PORT` — modifiez les deux en cohérence) |

## Dépannage

```bash
# voir la console du serveur (l'intro/license s'affiche au démarrage)
docker compose logs t4c-server

# vérifier que le port écoute
docker compose exec t4c-server ss -lun | grep 11677

# forcer la recréation du préfixe Wine
docker compose down
docker volume rm docker_t4c_db
docker compose up -d --build
```

Note : `T4CShell.exe` (arrêt propre, maintenance de la base) est également
disponible dans le conteneur :
`docker compose exec t4c-server wine T4CShell.exe -shutdown now`
