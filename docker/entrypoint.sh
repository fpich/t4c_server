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
Driver=libmdbodbc.so
Setup=libmdb.so
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

# --- Compte admin/admin (super admin) créé automatiquement au 1er démarrage ---
if mdb-tables "$DB_DIR/T4C.mdb" 2>/dev/null | grep -q "T4Cusers" \
   && ! mdb-sql -p "$DB_DIR/T4C.mdb" "SELECT Account FROM T4Cusers WHERE Account='admin'" 2>/dev/null | grep -q admin; then
    echo "[t4c] création du compte admin/admin (super admin)..."
    mdb-sql -p "$DB_DIR/T4C.mdb" \
      "INSERT INTO T4Cusers (Account, Password, Account_type, Expired, FullName, Email, CreationDate, RevisionDate) VALUES ('admin', 'admin', 0, 0, 'Administrateur', '', NOW, NOW)" \
      2>&1 | head -3 || echo "[t4c] ATTENTION : INSERT mdb-sql a échoué — créer le compte via T4C Database Manager (VM XP) si le login refuse"
    cp -f "$DB_DIR/T4C.mdb" "$T4C_DIR/T4C.mdb" 2>/dev/null || true
else
    echo "[t4c] compte admin déjà présent (ou table absente)."
fi

echo "[t4c] démarrage du serveur (UDP ${T4C_PORT:-11677})..."
cd "$T4C_DIR"
set +e
echo "[t4c] lancement du serveur avec TTY (console interactive requise)..."
# T4C Server exige une vraie console interactive (sinon il sort illico, code 0).
# 'script' lui fournit un pseudo-TTY ; la sortie est capturée intégralement.
# Display fixe :99 — xvfb-run seul choisirait un display aléatoire,
# rendant le pilotage xdotool impossible.
rm -f /tmp/.X99-lock
Xvfb :99 -screen 0 1024x768x16 -nolisten tcp >/tmp/xvfb.log 2>&1 &
for i in 1 2 3 4 5 6 7 8 9 10; do
    if DISPLAY=:99 xset q >/dev/null 2>&1; then break; fi
    sleep 1
done
export DISPLAY=:99
WINEDEBUG=-all wine "T4C Server.exe" > /tmp/server-console.log 2>&1 &
SERVER_PID=$!

# Fenêtre de licence éventuelle : la détecter et cliquer OK automatiquement.
sleep 8
for i in 1 2 3 4 5; do
    WIN=$(xdotool search --name "." 2>/dev/null | head -1)
    if [ -n "$WIN" ]; then
        echo "[t4c] fenêtre détectée (id $WIN) — titre :"
        xdotool getwindowname "$WIN" 2>/dev/null
        echo "[t4c] clic automatique (licence OK)..."
        xdotool key --window "$WIN" space 2>/dev/null
        xdotool key --window "$WIN" Return 2>/dev/null
        break
    fi
    sleep 2
done

wait $SERVER_PID
code=$?
echo "[t4c] T4C Server.exe terminé (code $code)"
echo "[t4c] ===== console du serveur (100 dernières lignes) ====="
tail -100 /tmp/server-console.log
echo "[t4c] ===== logs du serveur ====="
for f in "$T4C_DIR"/Logs/*.log "$T4C_DIR"/startup.log; do
    [ -f "$f" ] || continue
    echo "--- $f (30 dernières lignes) :"
    tail -30 "$f"
done
exit $code
