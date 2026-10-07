#!/bin/bash
# Entrypoint du serveur T4C original sous Wine.
# - initialise le préfixe Wine (idempotent)
# - importe les clés de registre requises par T4C Server.exe
# - configure le DSN ODBC (le serveur authentifie via ODBC -> T4C.mdb)
# - lance le binaire en avant-plan
set -Eeuo pipefail

export WINEPREFIX=/opt/wineprefix
export WINEDEBUG="${WINEDEBUG:--all}"
T4C_DIR=/opt/t4c
DB_DIR=/opt/t4c/db

echo "[t4c] init du préfixe Wine..."
wineboot --init >/dev/null 2>&1 || true
sleep 1

echo "[t4c] import des clés de registre..."
wine regedit /tmp/T4C-server.reg >/dev/null 2>&1

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
cat > "$WINEPREFIX/drive_c/windows/odbc.ini" <<EOF
[ODBC Data Sources]
T4C Server Authentication=Microsoft Access Driver (*.mdb)

[T4C Server Authentication]
Driver=Microsoft Access Driver (*.mdb)
DBQ=C:\\opt\\t4c\\db\\T4C.mdb
EOF
# maj du .mdb principal aussi : certains chemins utilisent la mdb du répertoire
cp -f "$DB_DIR/T4C.mdb" "$T4C_DIR/T4C.mdb" 2>/dev/null || true

echo "[t4c] démarrage du serveur (UDP ${T4C_PORT:-11677})..."
cd "$T4C_DIR"
exec wine "T4C Server.exe" 2>&1
