#!/bin/bash
# Démarrage du serveur T4C original sous Wine + capture tcpdump.
# Toute l'activité reste LOCALE (aucun -p, réseau host LAN du poste de dev).

set -x

mkdir -p /captures

tcpdump -i any -w /captures/t4c.pcap udp port 11677 &
TCPDUMP_PID=$!
sleep 1

# Display virtuel stable (le serveur crée une fenêtre console USER32).
export DISPLAY=:99
rm -f /tmp/.X99-lock
Xvfb :99 -screen 0 1280x1024x24 &
XVFB_PID=$!
sleep 2

cd /root/server

echo "=== Vérification registre (clés Vircom) ==="
wine reg query "HKLM\\Software\\Vircom\\The 4th Coming Server\\Network" 2>&1 | tee /captures/registry-dump.txt
echo "---"
wine reg query "HKLM\\Software\\Vircom\\The 4th Coming Server\\Paths" 2>&1 | tee -a /captures/registry-dump.txt
echo "---"
wine reg query "HKLM\\Software\\ODBC\\ODBC.INI\\T4C Server" 2>&1 | tee -a /captures/registry-dump.txt

# Base SQLite : créée si absente (le DSN "T4C Server" pointe dessus).
if [ ! -f T4C.sqlite3 ]; then
    sqlite3 T4C.sqlite3 < /root/create-db.sql && echo "=== Base T4C.sqlite3 créée ===" || echo "ECHEC creation base"
fi
echo "=== Test ODBC unix : isql sur le DSN 'T4C Server' ==="
echo "select count(*) from T4Cusers;" | isql "T4C Server" 2>&1 | head -5 || true
echo "=== fin test ODBC ==="

# TRACE des API du serveur : registry + ODBC + fichiers. Le serveur quitte
# sans message — la trace relay nous dira exactement le DERNIER appel avant
# l'exit (quel registre/DSN/fichier il cherchait).
echo "=== Lancement serveur avec trace API (trace.log) ==="
rm -f /root/.wine/*.log 2>/dev/null
WINEDEBUG=+relay wine "T4C Server.exe" -m > /captures/trace.log 2>&1 &
SERVER_PID=$!
TRACE_START=$SECONDS

# Captures rapprochées : popup éventuelle visible tôt dans sa vie.
sleep 3
DISPLAY=:99 import -window root "/captures/console-early.png" 2>/dev/null || true
sleep 12
echo "=== Capture console (t+15s) ==="
DISPLAY=:99 import -window root "/captures/console.png" 2>/dev/null || true
ls -la /captures/*.png 2>/dev/null || echo "echec capture"

echo "=== État du serveur ==="
ps aux | grep -v grep | grep -E "wine|T4C|tcpdump" || echo "processus introuvables"
echo "=== Socket UDP ==="
ss -lunp 2>/dev/null | grep 11677 || netstat -lunp 2>/dev/null | grep 11677 || echo "port 11677 pas encore en écoute"
echo "=== Logs du serveur (contenu intégral) ==="
for f in /root/server/Logs/*.log /root/server/Logs/exit.txt; do
    if [ -f "$f" ] && [ -s "$f" ]; then echo "--- $f ---"; cat "$f"; echo; fi
done
echo "=== DERNIERS APPELS TRACE (fin de trace.log = cause de l'exit) ==="
if [ -f /captures/trace.log ]; then
    echo "tail -80 de trace.log :"
    tail -80 /captures/trace.log
    echo "=== Appels ODBC/SQL dans la trace ==="
    grep -E "SQLDriverConnect|SQLConnect|SQLAllocEnv|RegOpenKey|GetPrivateProfile" /captures/trace.log | tail -30 || echo "aucun appel ODBC/registry trace"
fi
echo "=== fin diagnostic ==="

# Attendre indéfiniment (le conteneur reste vivant pour la session de capture).
wait $SERVER_PID
kill $TCPDUMP_PID 2>/dev/null

echo "=== Serveur terminé — messages éventuels ci-dessus ==="
sleep 30
