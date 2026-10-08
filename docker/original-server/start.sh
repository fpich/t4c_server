#!/bin/bash
# Démarrage du serveur T4C original sous Wine + capture tcpdump.
# Toute l'activité reste LOCALE au conteneur/host Docker (aucun -p, aucune
# publication de port vers l'extérieur). Le serveur écoute sur son propre
# interface dans le conteneur ; on y accède depuis la VM via le réseau
# local du poste de dev uniquement.

set -x

mkdir -p /captures

# tcpdump en fond : tout l'UDP vers/depuis le port du serveur (11677).
tcpdump -i any -w /captures/t4c.pcap udp port 11677 &
TCPDUMP_PID=$!
sleep 1

# Le serveur crée une FENÊTRE CONSOLE via USER32 : il faut un display.
# Xvfb MANUELLEMENT : display stable et capturable.
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

# Base SQLite : créée si absente (le DSN "T4C Server" pointe dessus).
if [ ! -f T4C.sqlite3 ]; then
    sqlite3 T4C.sqlite3 < /root/create-db.sql && echo "=== Base T4C.sqlite3 créée ===" || echo "ECHEC creation base"
fi
echo "=== Test ODBC unix : isql sur le DSN 'T4C Server' ==="
echo "select count(*) from T4Cusers;" | isql "T4C Server" 2>&1 | head -5 || true
echo "=== fin test ODBC ==="

wine "T4C Server.exe" -m 2>&1 | tee /captures/server-console.log &
SERVER_PID=$!

# Attendre l'init (DB, licence...) avant le diagnostic.
sleep 15
echo "=== Capture de la console du serveur (display :99) ==="
DISPLAY=:99 import -window root "/captures/console.png" 2>&1 || true
ls -la /captures/console.* 2>/dev/null || echo "echec capture"
echo "=== État du serveur ==="
ps aux | grep -v grep | grep -E "wine|T4C|tcpdump" || echo "processus introuvables"
echo "=== Socket UDP ==="
ss -lunp 2>/dev/null | grep 11677 || netstat -lunp 2>/dev/null | grep 11677 || echo "port 11677 pas encore en écoute"
echo "=== Logs du serveur (contenu intégral) ==="
for f in /root/server/Logs/*.log /root/server/Logs/exit.txt; do
    if [ -f "$f" ] && [ -s "$f" ]; then echo "--- $f ---"; cat "$f"; echo; fi
done

# Attendre indéfiniment (le conteneur reste vivant pour la session de capture).
wait $SERVER_PID
kill $TCPDUMP_PID 2>/dev/null

# Si le serveur se ferme tout de suite, garder le conteneur vivant 30 s
# pour lire les messages d'erreur.
echo "=== Serveur terminé — messages éventuels ci-dessus ==="
sleep 30
