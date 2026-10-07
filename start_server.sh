#!/usr/bin/env bash
set -Eeuo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_BIN="${PYTHON:-python3}"
PORT="${T4C_PORT:-11677}"
EXTRA_ARGS=("$@")

# If --port was supplied to this launcher, use the same port when finding
# the previous server instance.
for ((i=0; i<${#EXTRA_ARGS[@]}; i++)); do
    case "${EXTRA_ARGS[$i]}" in
        --port)
            if (( i + 1 < ${#EXTRA_ARGS[@]} )); then
                PORT="${EXTRA_ARGS[$((i + 1))]}"
            fi
            ;;
        --port=*)
            PORT="${EXTRA_ARGS[$i]#--port=}"
            ;;
    esac
done

if ! command -v lsof >/dev/null 2>&1; then
    echo "Erreur: 'lsof' n'est pas installé."
    echo "Installe-le avec: sudo apt install lsof"
    exit 1
fi

if ! command -v "$PYTHON_BIN" >/dev/null 2>&1; then
    echo "Erreur: '$PYTHON_BIN' est introuvable."
    exit 1
fi

echo "[T4C] Recherche d'une ancienne instance sur UDP $PORT..."
mapfile -t PIDS < <(sudo lsof -nP -t -iUDP:"$PORT" 2>/dev/null | sort -u || true)

if ((${#PIDS[@]} > 0)); then
    echo "[T4C] Ancienne instance détectée: PID(s) ${PIDS[*]}"
    sudo kill -TERM "${PIDS[@]}" 2>/dev/null || true

    # Laisse un court délai au processus pour libérer proprement le socket.
    for _ in {1..20}; do
        STILL_RUNNING=()
        for pid in "${PIDS[@]}"; do
            if sudo kill -0 "$pid" 2>/dev/null; then
                STILL_RUNNING+=("$pid")
            fi
        done

        if ((${#STILL_RUNNING[@]} == 0)); then
            break
        fi
        sleep 0.1
    done

    STILL_RUNNING=()
    for pid in "${PIDS[@]}"; do
        if sudo kill -0 "$pid" 2>/dev/null; then
            STILL_RUNNING+=("$pid")
        fi
    done

    if ((${#STILL_RUNNING[@]} > 0)); then
        echo "[T4C] Arrêt forcé: PID(s) ${STILL_RUNNING[*]}"
        sudo kill -KILL "${STILL_RUNNING[@]}" 2>/dev/null || true
        sleep 0.1
    fi
else
    echo "[T4C] Aucun processus n'utilise UDP $PORT."
fi

cd "$SCRIPT_DIR"

echo "[T4C] Démarrage du serveur sur UDP $PORT..."
exec "$PYTHON_BIN" run_server.py \
    --host 0.0.0.0 \
    --port "$PORT" \
    --debug \
    "${EXTRA_ARGS[@]}"
