#!/bin/bash
# Démarrage du serveur T4C original sous Wine + capture tcpdump.
# Toute l'activité reste LOCALE au conteneur/host Docker (aucun -p, aucune
# publication de port vers l'extérieur). Le serveur écoute sur son propre
# interface dans le conteneur ; on y accède depuis la VM via le réseau
# local du poste de dev uniquement.

set -x

mkdir -p /captures

# tcpdump en fond : tout l'UDP vers/depuis le port du serveur (11677).
# Écrit dans /captures (monté en volume par l'utilisateur si souhaité).
tcpdump -i any -w /captures/t4c.pcap udp port 11677 &
TCPDUMP_PID=$!
sleep 1

cd /root/server

# Le serveur crée une FENÊTRE CONSOLE via USER32 ("nodrv_CreateWindow" sans
# display) : xvfb est nécessaire AU RUNTIME. xauth est installé (c'était
# lui qui manquait lors du premier essai).
cd /root/server
xvfb-run -a wine "T4C Server.exe" 2>&1 | tee /captures/server-console.log &
SERVER_PID=$!

# Suivi : si le serveur écrit un log, l'afficher aussi.
# Attendre l'init (DB, licence...) avant le diagnostic.
sleep 15
echo "=== Capture de la console du serveur (display virtuel) ==="
# Le serveur écrit dans sa FENÊTRE CONSOLE X (invisible depuis l'hôte) :
# on la capture en PNG pour voir ce qu'il affiche / attend.
DISPLAY_CHECK=$(ps -o args= -p $SERVER_PID 2>/dev/null | grep -o ':[0-9]*' | head -1 || true)
for D in $(ls /tmp/.X11-unix/ 2>/dev/null | sed 's/X//'); do
    import -window root -display ":$D" "/captures/console-$(date +%H%M%S).png" 2>/dev/null || \
    import -window root ":$D" "/captures/console-$(date +%H%M%S).png" 2>/dev/null || true
done
ls -la /captures/*.png 2>/dev/null || echo "pas de capture (display absent)"
echo "=== État du serveur ==="
ps aux | grep -v grep | grep -E "wine|T4C|tcpdump" || echo "processus introuvables"
echo "=== Socket UDP ==="
ss -lunp 2>/dev/null | grep 11677 || netstat -lunp 2>/dev/null | grep 11677 || echo "port 11677 pas encore en écoute"
echo "=== Logs du serveur (s'ils existent) ==="
ls -la /root/server/Logs/ 2>/dev/null || true
tail -50 /root/server/Logs/*.log 2>/dev/null || true

# Attendre indéfiniment (le conteneur reste vivant pour la session de capture).
wait $SERVER_PID
kill $TCPDUMP_PID 2>/dev/null

# Si le serveur se ferme tout de suite, garder le conteneur vivant 30 s
# pour lire les messages d'erreur.
echo "=== Serveur terminé — messages éventuels ci-dessus ==="
sleep 30
