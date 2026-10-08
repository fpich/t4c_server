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

# Enregistrer emsmtp.dll (EasyMail.SMTP.5) : le serveur fait
# CoCreateInstance sur ce ProgID au startup — sans regsvr32, _com_error -> crash GP.
echo "=== Enregistrement emsmtp.dll (EasyMail.SMTP.5) ==="
cd /root/server
wine regsvr32 emsmtp.dll 2>&1 | tee /captures/regsvr32.log
echo "=== Vérification ProgID EasyMail.SMTP.5 dans le registre ==="
wine reg query "HKLM\\Software\\Classes\\EasyMail.SMTP.5" /s 2>&1 | head -10 || echo "ProgID ABSENT"

# TRACE des exceptions SEH : code d'exception exact (0xC0000005 /
# 0xE06D7363), adresse et thread fautifs — sans le ralentissement du +relay.
echo "=== Lancement serveur avec trace exceptions (+seh -> trace.log) ==="
rm -f /root/.wine/*.log 2>/dev/null
WINEDEBUG=+seh wine "T4C Server.exe" -m > /captures/trace.log 2>&1 &
SERVER_PID=$!
TRACE_START=$SECONDS

# Captures rapprochées : popup éventuel visible tôt dans sa vie.
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
fi
echo "=== fin diagnostic ==="

# Dump de la clé de crash : le rapport GP du serveur écrit
# "Writing crash info in registry" -> l'adresse/module fautif est dedans.
echo "=== CLÉ DE CRASH DANS LE REGISTRE (rapport GP) ==="
wine reg query "HKLM\\Software\\Vircom" /s 2>&1 | tee /captures/registry-crash.txt | tail -60 || echo "clé Vircom introuvable"

# Surveillance : le serveur charge le monde (T4C Worlds.WDA = 198 Mo, parse
# octet par octet -> plusieurs minutes). On guette l'ouverture du port
# UDP 11677 et on log les étapes toutes les 30 s.
echo "=== Surveillance du serveur (port 11677 ; chargement monde = plusieurs min) ==="
for i in $(seq 1 120); do
    if ss -lun 2>/dev/null | grep -q 11677; then
        echo "=============================================="
        echo "=== PORT 11677 EN ÉCOUTE ! Serveur opérationnel (t+$((i*30))s) ==="
        echo "=============================================="
        break
    fi
    if ! kill -0 $SERVER_PID 2>/dev/null; then
        echo "=== SERVEUR MORT à t+$((i*30))s — capture écran finale ==="
        DISPLAY=:99 import -window root "/captures/death.png" 2>/dev/null || true
        echo "=== Exceptions SEH (code exact : 0xC0000005 / 0xE06D7363...) ==="
        grep -E "Unhandled exception|SEH|exception" /captures/trace.log | tail -20 || echo "aucune exception tracée"
        echo "=== CLÉ DE CRASH DANS LE REGISTRE (rapport GP) ==="
        wine reg query "HKLM\\Software\\Vircom" /s 2>&1 | tee /captures/registry-crash.txt | tail -60 || echo "clé Vircom introuvable"
        break
    fi
    ALIVE=$(ps aux | grep -v grep | grep -c "T4C Server" || true)
    echo "[t+$((i*30))s] vivant=$ALIVE ; $(cat /root/server/Logs/World.log 2>/dev/null | tail -1)"
    DISPLAY=:99 import -window root "/captures/watch-$i.png" 2>/dev/null || true
    sleep 30
done

# Une fois le port ouvert (ou timeout), rester vivant pour la session client.
echo "=== Le conteneur reste ouvert : connectez le client (pcap en cours) ==="
echo "=== Ctrl-C pour terminer la capture ==="
wait $SERVER_PID
kill $TCPDUMP_PID 2>/dev/null
echo "=== Serveur terminé ==="
