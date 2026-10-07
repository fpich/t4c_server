#!/usr/bin/env bash
# t4c.sh — lancer le client T4C sous Wine (court-circuit d'install_client_wine.sh)
# Prérequis : avoir exécuté ./install_client_wine.sh --install une fois.
# Usage :
#   bash t4c.sh                      # lancement standard (serveur local)
#   bash t4c.sh --server 192.168.1.x # pointer un autre serveur
#   bash t4c.sh --window 800x600     # taille de fenêtre
set -Eeuo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PREFIX="$HOME/.wine-t4c"
CLIENT_DIR="$PREFIX/drive_c/t4c"
SERVER_IP="127.0.0.1"
WINDOW="1024x768"

while (($#)); do
    case "$1" in
        --server) SERVER_IP="$2"; shift 2 ;;
        --window) WINDOW="$2"; shift 2 ;;
        *) echo "Option inconnue: $1 (usages: --server IP, --window WxH)" >&2; exit 2 ;;
    esac
done

if [ ! -f "$CLIENT_DIR/t4c.exe" ]; then
    echo "Client absent — installation d'abord :" >&2
    echo "  bash $SCRIPT_DIR/install_client_wine.sh --install" >&2
    exit 1
fi

export WINEPREFIX="$PREFIX"
export WINEARCH=win32
export WINEDEBUG=-all

# serverlist à jour (permet de changer de serveur sans réinstaller)
printf 'Serveur T4C Local\n%s\n%s\nBienvenue !\nServeur T4C Local\nhttp://localhost\n' \
    "$SERVER_IP" "$SERVER_IP" > "$CLIENT_DIR/serverlist.txt"

echo "[t4c] serveur : $SERVER_IP — fenêtre : $WINDOW"
cd "$CLIENT_DIR"
exec wine explorer /desktop=T4C,"$WINDOW" t4c.exe
