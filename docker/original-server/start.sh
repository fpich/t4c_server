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

# emsmtp.dll (EasyMail.SMTP.5) : les cles COM sont importees au BUILD via
# emsmtp-com.reg (extraites du RGS embarque dans la DLL). regsvr32 est tente
# en runtime mais un echec n'est plus bloquant : CoCreateInstance ne lit que
# ces cles du registre.
echo "=== Verrou COM emsmtp (cles importees au build) ==="
cd /root/server
# timeout : sous Wine 10, regsvr32 peut bloquer (dialogue sans message pump).
# Non bloquant : les cles COM sont DEJA en place via emsmtp-com.reg au build.
timeout 60 wine regsvr32 emsmtp.dll 2>&1 | tee /captures/regsvr32.log || echo "regsvr32 bloque/echoue (non bloquant : cles deja en place via emsmtp-com.reg)"
echo "=== Verification ProgID EasyMail.SMTP.5 + InprocServer32 ==="
wine reg query "HKLM\\Software\\Classes\\EasyMail.SMTP.5" /s 2>&1 | head -10 || echo "ProgID ABSENT"
wine reg query "HKLM\\Software\\Classes\\CLSID\\{4610E7BF-710F-11d3-813D-00C04F6B92D0}\\InprocServer32" /s 2>&1 | head -10 || echo "CLSID ABSENT"

# Syntaxe WINEDEBUG correcte pour un relay limite a une DLL : relay=odbc32
# (relay+odbc32 est invalide -> rien n'etait trace au run precedent).
# +odbc = canal debug du proxy unixODBC de Wine (echecs DSN/driver logues).
echo "=== Lancement serveur (+seh,+odbc + relay=odbc32 -> trace.log) ==="
rm -f /root/.wine/*.log 2>/dev/null
WINEDEBUG=+seh,+odbc,relay=odbc32 wine "T4C Server.exe" -m > /captures/trace.log 2>&1 &
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
    echo "tail -400 de trace.log (retro-appels autour de l'exit) :"
    tail -400 /captures/trace.log
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
for i in $(seq 1 240); do
    if ss -lun 2>/dev/null | grep -q 11677; then
        echo "=============================================="
        echo "=== PORT 11677 EN ÉCOUTE ! Serveur opérationnel (t+$((i*30))s) ==="
        echo "=============================================="
        break
    fi
    if ! kill -0 $SERVER_PID 2>/dev/null; then
        echo "=== SERVEUR MORT à t+$((i*30))s — capture écran finale ==="
        echo "=== ARBRE DES FENÊTRES X (un popup bloquant serait ici) ==="
        DISPLAY=:99 xwininfo -root -tree 2>&1 | head -40 || echo "xwininfo indisponible"
        DISPLAY=:99 import -window root "/captures/death.png" 2>/dev/null || true
        echo "=== exit.txt (heure STARTUP -> EXIT) ==="
        cat /root/server/Logs/exit.txt 2>/dev/null || echo "pas d'exit.txt"
        echo "=== Memory.log (rapport de crash GP du serveur original !) ==="
        for f in /root/server/Memory.log /root/server/Logs/Memory.log; do
            if [ -f "$f" ]; then echo "--- $f ($(stat -c%s "$f") octets) ---"; cat "$f"; echo; fi
        done
        echo "=== APPELS ODBC (retval de chaque SQL* : SQL_ERROR = cause de l'exit 111) ==="
        grep -E "trace:odbc:SQL(ExecDirect|Connect|Fetch) |SQLError  (SqlState|MessageText)" /captures/trace.log | tail -160 || echo "aucun appel ODBC tracé"
        echo "=== ExitProcess(0x6f=111) : 120 lignes AVANT dans la trace = cause ==="
        grep -n "ExitProcess" /captures/trace.log | head -5
        LINE=$(grep -n "ExitProcess(0000006f)" /captures/trace.log | head -1 | cut -d: -f1)
        if [ -n "$LINE" ]; then
            START=$(( LINE > 120 ? LINE - 120 : 1 ))
            sed -n "${START},${LINE}p" /captures/trace.log
        else
            echo "ExitProcess(0x6f) non trouvé dans la trace"
        fi
        echo "=== DERNIÈRES LIGNES DE LA TRACE (vrai appel final avant l'exit) ==="
        tail -300 /captures/trace.log
        echo "=== DERNIERS FICHIERS OUVERTS AVANT LA MORT (handle -> fichier) ==="
        grep -E "Call KERNEL32.CreateFile|Ret  KERNEL32.CreateFile" /captures/trace.log | tail -30 || echo "aucun CreateFile tracé"
        echo "=== DERNIERS APPELS EXIT/MESSAGEBOX/DIALOGUE ==="
        grep -E "ExitProcess|MessageBox|DialogBox|CreateWindowEx|SetForegroundWindow" /captures/trace.log | tail -30 || echo "aucun"
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
