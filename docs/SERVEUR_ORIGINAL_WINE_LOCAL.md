# Faire tourner le serveur original 1.25 sous Wine — procédure locale validée (2026-10-13)

Le serveur original tourne localement sous **Wine 10** (Debian 13) et ouvre le
port UDP **11677**. Cela permet le diff-test contre notre serveur Python.

## Prérequis (Debian 13)

```bash
sudo apt-get install -y winehq-stable wine32:i386 winbind unixodbc unixodbc:i386 \
    libsqliteodbc:i386 mdbtools xvfb imagemagick
winetricks --unattended mfc42   # MFC42.DLL requis par T4C Server.exe
```

Points clés découverts par trace (`WINEDEBUG=+seh,+relay`) :

1. **MFC42.DLL** manquant → `import_dll failed c0000135` → winetricks mfc42.
2. **winbind** manquant → exception `RPC_S_SERVER_UNAVAILABLE` (6ba) au startup.
3. **ODBC** : le proxy unixODBC de Wine 10 lit `/etc/odbc.ini` + `/etc/odbcinst.ini`
   (driver i386 `/usr/lib/i386-linux-gnu/odbc/libsqlite3odbc.so`) + le DSN dans le
   registre Wine (`HKLM\Software\ODBC\ODBC.INI\T4C Server`). `SQLConnect` réussit
   (retval=0) avec ce schéma.
4. **Schéma SQLite** : la table `OnlineUsers` DOIT avoir la colonne `MachineName`
   (vrai schéma `T4C.mdb` lu via `mdb-schema`) sinon
   `DELETE FROM OnlineUsers WHERE MachineName='P50'` → SQL_ERROR → exit(122).
   Voir `docker/original-server/create-db.sql` (corrigé).
5. **NPC DLL obligatoire** : `ExtensionDLLs\NPCDLL1` doit être une vraie DLL
   (ex. `NPCs.dll`), sinon le serveur logue
   `Cannot find any NPC DLL. Server is useless without NPCs.` et fait **exit(122)**.
   Corrigé dans `docker/original-server/t4c-server.reg`.

## Lancement

```bash
export WINEPREFIX=~/.wine-t4c-orig WINEARCH=win32
wineboot --init
# copier ressources/T4C_Server -> /tmp/t4c-orig/server, créer la base :
sqlite3 /tmp/t4c-orig/server/T4C.sqlite3 < docker/original-server/create-db.sql
# registre (chemins adaptés Z:\tmp\t4c-orig\server) :
wine regedit /s t4c-server-local.reg && wine regedit /s odbc-wine-local.reg && wine regedit /s emsmtp-com.reg
wine reg add "HKLM\\Software\\Vircom\\The 4th Coming Server\\ExtensionDLLs" /v NPCDLL1 /t REG_SZ /d "NPCs.dll" /f
# lancer :
Xvfb :99 -screen 0 1280x1024x24 &
cd /tmp/t4c-orig/server && DISPLAY=:99 WINEDEBUG=-all wine "T4C Server.exe" -m
# le port UDP 11677 s'ouvre après le parse du WDA (~1-2 min)
ss -lun | grep 11677
```

## Diff-test contre le serveur Python (validé 2026-10-13)

Le serveur original répond (Wine, 127.0.0.1:11677) :

- **66 MOTD** : `00 00` (CString vide)
- **91 patch** : `00 00 00 7d` + CString `kcnt4c2.the4th-coming.com` + 3 CString vides + `00 02` (langue FR=2)
- **65 version** : `00 00 00 7d` + `00 01` + port `2d 9f` (11679) + CString IP
- **45 time** : 6 u8 + année u16 **big-endian**

Notre serveur Python a été aligné sur ces valeurs (config par défaut :
`default_language=2`, `patch_info_1=kcnt4c2.the4th-coming.com`).
