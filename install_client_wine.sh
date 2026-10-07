#!/usr/bin/env bash
# =====================================================================
# install_client_wine.sh — Installation et lancement du client T4C 1.25 FR
# sous Wine, directement sur l'hôte Linux. Aucun Docker.
#
# Usage :
#   ./install_client_wine.sh              # installation + lancement
#   ./install_client_wine.sh --install     # installation seule
#   ./install_client_wine.sh --run        # lancement (si déjà installé)
#   ./install_client_wine.sh --prefix /chemin/vers/wineprefix
#   ./install_client_wine.sh --server 192.168.1.x
# =====================================================================
set -Eeuo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PREFIX="$HOME/.wine-t4c"
CLIENT_SRC="$SCRIPT_DIR/ressources/t4c_client_fr"
CLIENT_DIR="$PREFIX/drive_c/t4c"
SERVER_IP="127.0.0.1"
ACTION="all"

while (($#)); do
    case "$1" in
        --prefix)  PREFIX="$2"; shift 2 ;;
        --server)  SERVER_IP="$2"; shift 2 ;;
        --install) ACTION="install"; shift ;;
        --run)     ACTION="run"; shift ;;
        -h|--help) grep '^#' "$0" | head -12; exit 0 ;;
        *) echo "Option inconnue: $1" >&2; exit 2 ;;
    esac
done

bold() { printf '\033[1m%s\033[0m\n' "$*"; }
step() { printf '\n\033[1m==> %s\033[0m\n' "$*"; }

# ---------------------------------------------------------------- dépendances
step "1/6 Vérification des dépendances système"
MISSING=()
for cmd in wine wine64; do command -v "$cmd" >/dev/null || MISSING+=("$cmd"); done
if ((${#MISSING[@]})); then
    bold "Installation des paquets Wine (32+64 bits) — mot de passe sudo requis :"
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get install -y wine wine32:i386 wine64 winetricks cabextract
fi
command -v winetricks >/dev/null || { sudo apt-get install -y winetricks; }

# ---------------------------------------------------------------- préfixe
step "2/6 Préparation du préfixe Wine 32 bits : $PREFIX"
export WINEPREFIX="$PREFIX"
export WINEARCH=win32
export WINEDEBUG=-all
if [ ! -f "$PREFIX/system.reg" ]; then
    wineboot --init
else
    # arch du préfixe existant
    if ! grep -q '#arch=win32' "$PREFIX/system.reg"; then
        echo "ERREUR : le préfixe $PREFIX n'est pas win32. Supprimez-le ou choisissez --prefix ailleurs." >&2
        exit 1
    fi
fi

# ---------------------------------------------------------------- MFC42 + DirectDraw
step "3/6 MFC42 (requis par t4c.exe — vérifié par import_dll)"
winetricks -q mfc42 || { echo "ERREUR winetricks mfc42"; exit 1; }

# ---------------------------------------------------------------- fichiers client
step "4/6 Copie du client dans C:\\t4c"
mkdir -p "$CLIENT_DIR"
rsync -a "$CLIENT_SRC"/ "$CLIENT_DIR"/ 2>/dev/null || cp -r "$CLIENT_SRC"/. "$CLIENT_DIR"/

# ---------------------------------------------------------------- registre
step "5/6 Configuration (langue FR, WebPatch désactivé, serveur $SERVER_IP)"
wine reg add 'HKCU\Software\Vircom\T4C' /v Language /t REG_SZ /d french /f >/dev/null 2>&1
wine reg add 'HKCU\Software\Vircom\T4C' /v WebPatchDisabled /t REG_DWORD /d 1 /f >/dev/null 2>&1
# le serveur de jeu : l'IP donnée (l'hôte où tourne start_server.sh)
printf 'Serveur T4C Local\n%s\n%s\nBienvenue !\nServeur T4C Local\nhttp://localhost\n' \
    "$SERVER_IP" "$SERVER_IP" > "$CLIENT_DIR/serverlist.txt"

# ---------------------------------------------------------------- lancement
bold "Installation terminée."
if [ "$ACTION" = "install" ]; then
    echo "Lancez le jeu avec :  $0 --run --server $SERVER_IP"
    exit 0
fi

step "6/6 Lancement de T4C en mode fenêtré (bureau virtuel 1024x768)"
echo "Le serveur doit tourner :  bash $SCRIPT_DIR/start_server.sh"
cd "$CLIENT_DIR"
exec wine explorer /desktop=T4C,1024x768 t4c.exe
