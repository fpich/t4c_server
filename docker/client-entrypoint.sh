#!/bin/bash
# Client T4C en mode fenêtré, visible par VNC/noVNC.
set -Eeuo pipefail

export WINEPREFIX=/opt/wineprefix
export WINEARCH=win32
export WINEDEBUG=-all
export XDG_RUNTIME_DIR=/tmp/xdg
export DISPLAY=:98
mkdir -p /tmp/xdg

CLIENT_DIR=/opt/t4c-client

echo "[t4c-client] démarrage de Xvfb (display :98, 1024x768)..."
rm -f /tmp/.X98-lock
Xvfb :98 -screen 0 1024x768x24 -nolisten tcp >/tmp/xvfb.log 2>&1 &
for i in $(seq 1 15); do
    DISPLAY=:98 xset q >/dev/null 2>&1 && break
    sleep 1
done

echo "[t4c-client] démarrage du serveur VNC (mot de passe : t4c)..."
x11vnc -display :98 -forever -shared -rfbport 5900 -passwd t4c \
       -quiet >/tmp/x11vnc.log 2>&1 &

echo "[t4c-client] démarrage de noVNC (http://<hôte>:6080/vnc.html)..."
websockify --web=/usr/share/novnc 6080 localhost:5900 >/tmp/novnc.log 2>&1 &

echo "[t4c-client] init du préfixe Wine (win32)..."
if [ ! -f "$WINEPREFIX/system.reg" ]; then
    mkdir -p "$WINEPREFIX"
    WINEARCH=win32 wineboot --init >/dev/null 2>&1 || true
    sleep 2
fi

# Son : Wine -> PulseAudio réseau (hôte). winepulse est chargé si PULSE_SERVER
# est joignable ; sinon Wine retombe silencieusement sans bloquer le jeu.
if [ -n "${PULSE_SERVER:-}" ]; then
    echo "[t4c-client] audio réseau -> ${PULSE_SERVER}"
    export PULSE_SERVER
fi

# Clés registre client : WebPatch désactivé + langue française
# (identique à configurer-client.bat, exécuté ici automatiquement)
echo "[t4c-client] configuration registre (WebPatch off, langue FR)..."
wine reg add 'HKCU\Software\Vircom\T4C' /v WebPatchDisabled /t REG_DWORD /d 1 /f >/dev/null 2>&1
wine reg add 'HKCU\Software\Vircom\T4C' /v Language /t REG_SZ /d french /f >/dev/null 2>&1

# serverlist : pointer sur le conteneur serveur (nom Docker "t4c-server")
if [ -n "${T4C_SERVER_HOST:-}" ]; then
    echo "[t4c-client] serverlist -> ${T4C_SERVER_HOST}"
    printf 'Serveur T4C Local\n%s\n%s\nBienvenue sur le serveur T4C local !\nServeur T4C Local\nhttp://localhost\n' \
        "$T4C_SERVER_HOST" "$T4C_SERVER_HOST" > "$CLIENT_DIR/serverlist.txt"
fi

echo "[t4c-client] lancement de t4c.exe en mode fenêtré..."
cd "$CLIENT_DIR"
wine explorer /desktop=T4C,1024x768 t4c.exe >/tmp/client.log 2>&1 &
CLIENT_PID=$!

echo ""
echo "============================================================"
echo " Client T4C lancé."
echo " VNC    : <IP-hôte>:5900  (mot de passe : t4c)"
echo " noVNC  : http://<IP-hôte>:6080/vnc.html (navigateur)"
echo "============================================================"

# boucle de vie : si le client meurt, le conteneur redémarre tout
wait $CLIENT_PID
code=$?
echo "[t4c-client] t4c.exe terminé (code $code) — arrêt."
exit $code
