#!/bin/bash
# Entrypoint du serveur T4C original sous Wine.
# - initialise le préfixe Wine (idempotent)
# - importe les clés de registre requises par T4C Server.exe
# - configure le DSN ODBC (le serveur authentifie via ODBC -> T4C.mdb)
# - lance le binaire en avant-plan
set -Eeuo pipefail

export WINEPREFIX=/opt/wineprefix
export WINEARCH=win32
export WINEDEBUG="${WINEDEBUG:-err+all,fixme-all,trace-none}"
export XDG_RUNTIME_DIR=/tmp/xdg
mkdir -p /tmp/xdg

# Le serveur crée une fenêtre (licence/splash) au démarrage : Xvfb fournit
# un display virtuel, sinon nodrv_CreateWindow -> sortie code 53.
# xvfb-run garantit que le serveur X tourne AVANT Wine (Xvfb lancé à la
# main peut mourir silencieusement — cause des déchargements winex11.drv).
echo "[t4c] display virtuel via xvfb-run..."
T4C_DIR=/opt/t4c
DB_DIR=/opt/t4c/db

echo "[t4c] init du préfixe Wine (win32)..."
if [ ! -f "$WINEPREFIX/system.reg" ]; then
    mkdir -p "$WINEPREFIX"
    WINEARCH=win32 wineboot --init 2>&1 | head -10 || true
    sleep 2
fi

echo "[t4c] import des clés de registre..."
WINEARCH=win32 wine regedit /tmp/T4C-server.reg 2>&1 | head -5 || true

# Base de données : le serveur original exige ODBC/Jet (T4C.mdb).
# La mdb est copiée dans le volume si absente (persistance des comptes).
mkdir -p "$DB_DIR"
if [ ! -f "$DB_DIR/T4C.mdb" ]; then
    echo "[t4c] initialisation de la base T4C.mdb dans le volume..."
    cp "$T4C_DIR/T4C.mdb" "$DB_DIR/T4C.mdb"
fi

# Le binaire ouvre le DSN ODBC "T4C Server Authentication".
# On déclare un DSN utilisateur pointant vers la mdb du volume via le
# pilote MDAC/Jet intégré à Wine (regedit direct dans ODBC.ini de Wine).
# DSN ODBC "T4C Server Authentication" (nom par défaut confirmé dans le
# binaire à 0x503f64). Wine route les appels ODBC vers unixODBC : le pilote
# MDB est fourni par mdbtools. odbcinst.ini déclare le pilote côté système.
cat > /etc/odbcinst.ini <<'ODBCINST'
[MDBTools]
Description=MDBTools Access Driver
Driver=/usr/lib/x86_64-linux-gnu/odbc/libmdb.so
Setup=/usr/lib/x86_64-linux-gnu/odbc/libmdbodbc.so
FileUsage=1
UsageCount=1
ODBCINST
cat > /etc/odbc.ini <<'ODBCINI'
[T4C Server Authentication]
Driver=MDBTools
DBQ=/opt/t4c/db/T4C.mdb
ODBCINI
# et le même DSN vu depuis Windows (C:\odbc.ini)
cat > "$WINEPREFIX/drive_c/odbc.ini" <<'WODBC'
[ODBC Data Sources]
T4C Server Authentication=MDBTools

[T4C Server Authentication]
Driver=MDBTools
DBQ=C:\opt\t4c\db\T4C.mdb
WODBC
# maj du .mdb principal aussi : certains chemins utilisent la mdb du répertoire
cp -f "$DB_DIR/T4C.mdb" "$T4C_DIR/T4C.mdb" 2>/dev/null || true

echo "[t4c] démarrage du serveur (UDP ${T4C_PORT:-11677})..."
cd "$T4C_DIR"
set +e
echo "[t4c] lancement du serveur..."
WINEDEBUG=err+all,-loaddll xvfb-run -a -s "-screen 0 1024x768x16" wine "T4C Server.exe" 2>&1 | head -150
code=${PIPESTATUS[0]}
echo "[t4c] T4C Server.exe terminé (code $code)"
if [ "$code" -ne 0 ]; then
    echo "[t4c] ===== diagnostic ====="
    echo "--- architecture du préfixe :"
    grep -m1 "arch" "$WINEPREFIX/system.reg" 2>/dev/null | head -1
    echo "--- wine sait-il exécuter un binaire 32 bits ? (cmd /c echo)"
    wine cmd /c "echo WINE-OK" 2>&1 | tail -3
    echo "--- DLLs requises présentes à côté du binaire :"
    ls "$T4C_DIR" | grep -iE "\.(dll|exe)$" | head -20
    echo "--- DLLs système 32 bits dans le préfixe :"
    ls "$WINEPREFIX/drive_c/windows/system32/" 2>/dev/null | head -10
    echo "--- startup.log du binaire (diagnostic officiel) :"
    cat "$T4C_DIR/startup.log" 2>/dev/null | head -40 || echo "(pas de startup.log)"
    cat "$T4C_DIR/../startup.log" 2>/dev/null | head -10
    find /opt/t4c -name "startup.log" -exec sh -c 'echo "== {} =="; head -40 "{}"' \; 2>/dev/null
    sleep 5
fi
exit $code
