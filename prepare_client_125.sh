#!/usr/bin/env bash
set -Eeuo pipefail

# Historical Dialsoft/Vircom 1.25 French clients can enter the old GOA
# registration front-end after the MOTD instead of continuing the game login.
# The known workaround is HKCU\Software\Vircom\T4C -> Language = English.
#
# This script only changes that one value inside the selected Wine prefix.

usage() {
    cat <<'EOF'
Usage: ./prepare_client_125.sh [--prefix /chemin/du/prefix] [--language English|French]

Prefix selection order:
  1. --prefix
  2. existing $WINEPREFIX
  3. ~/.wine-t4c if it exists
  4. ~/.wine
EOF
}

PREFIX=""
LANGUAGE="English"
while (($#)); do
    case "$1" in
        --prefix)
            [[ $# -ge 2 ]] || { echo "Erreur: --prefix exige un chemin" >&2; exit 2; }
            PREFIX="$2"
            shift 2
            ;;
        --language)
            [[ $# -ge 2 ]] || { echo "Erreur: --language exige English ou French" >&2; exit 2; }
            LANGUAGE="$2"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "Option inconnue: $1" >&2
            usage >&2
            exit 2
            ;;
    esac
done

if [[ -z "$PREFIX" ]]; then
    if [[ -n "${WINEPREFIX:-}" && -d "${WINEPREFIX}" ]]; then
        PREFIX="$WINEPREFIX"
    elif [[ -d "$HOME/.wine-t4c" ]]; then
        PREFIX="$HOME/.wine-t4c"
    else
        PREFIX="$HOME/.wine"
    fi
fi

if ! command -v wine >/dev/null 2>&1; then
    echo "Erreur: wine est introuvable." >&2
    exit 1
fi

if [[ ! -d "$PREFIX" ]]; then
    echo "Erreur: le préfixe Wine n'existe pas: $PREFIX" >&2
    exit 1
fi

export WINEPREFIX="$PREFIX"
REGKEY='HKCU\Software\Vircom\T4C'

echo "[T4C 1.25] Préfixe Wine : $WINEPREFIX"
echo "[T4C 1.25] Valeur actuelle (si présente) :"
wine reg query "$REGKEY" /v Language 2>/dev/null || echo "  Language non définie"

echo "[T4C 1.25] Configuration de Language=$LANGUAGE..."
wine reg add "$REGKEY" /v Language /t REG_SZ /d "$LANGUAGE" /f >/dev/null

echo "[T4C 1.25] Vérification :"
wine reg query "$REGKEY" /v Language

echo
echo "[T4C 1.25] Ferme puis relance complètement le client avant le prochain test."
if [[ "$LANGUAGE" == "French" ]]; then
    echo "[T4C 1.25] Attention: certains clients Dialsoft 1.25 FR repassent par l’ancien écran GOA avec Language=French."
fi
