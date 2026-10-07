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
step "1/6 Installation des dépendances système (Wine + graphique 32 bits)"
# Tout le nécessaire en une passe :
#  - wine 32 bits (le client est un PE32 i386)
#  - libGL/libGLU 32 bits : SANS elles, Wine n'a pas d'OpenGL -> le client
#    meurt au changement de mode vidéo ("Failed to load libGL.so.1",
#    "Failed to find a suitable pixel format" — confirmé sur p50/NVIDIA)
#  - bibliothèque NVIDIA 32 bits si carte NVIDIA (détectée via nvidia-smi)
#  - winetricks + cabextract (MFC42)
bold "Installation des paquets — mot de passe sudo requis :"
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y \
    wine wine32:i386 wine64 winetricks cabextract \
    libgl1:i386 libgl1-mesa-dri:i386 libglu1-mesa:i386 \
    mesa-utils

# Carte NVIDIA : ajouter la lib GL 32 bits du pilote en place.
if command -v nvidia-smi >/dev/null 2>&1; then
    NV_VER="$(nvidia-smi --query-gpu=driver_version --format=csv,noheader 2>/dev/null | head -1 | cut -d. -f1)"
    if [ -n "${NV_VER:-}" ]; then
        echo "Carte NVIDIA détectée (pilote $NV_VER) — installation de libnvidia-gl-$NV_VER:i386"
        sudo apt-get install -y "libnvidia-gl-$NV_VER:i386" \
            || echo "ATTENTION : libnvidia-gl-$NV_VER:i386 introuvable — OpenGL 32 bits restera sur Mesa (peut suffire)"
    fi
fi

# Vérification : libGL 32 bits présente ?
if [ -f /usr/lib/i386-linux-gnu/libGL.so.1 ] || ldconfig -p | grep -q "i386.*libGL.so.1"; then
    bold "libGL 32 bits : OK"
else
    echo "ATTENTION : libGL 32 bits toujours absente — le client ne pourra pas s'afficher." >&2
fi

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
# Language=English : le contournement GOA documenté (étape 4) — possible car
# english.elng est présent dans le dossier client (copie du français : le client
# prend le chemin réseau "anglais" mais affiche les textes français).
# Avec french, le client FR retombe sur l'ancien écran GOA après le login.
wine reg add 'HKCU\Software\Vircom\T4C' /v Language /t REG_SZ /d English /f >/dev/null 2>&1
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
