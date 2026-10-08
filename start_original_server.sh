#!/bin/bash
# Serveur T4C original 1.25 (Vircom) sous Docker/Wine + capture tcpdump.
# - construit l'image si elle n'existe pas
# - vérifie que le port UDP 11677 est libre (stoppe le serveur Python si besoin)
# - lance le conteneur avec --network host (le serveur écoute sur la pile
#   réseau de la machine : la VM en accès par pont se connecte à l'IP LAN
#   habituelle, comme pour le serveur Python)
# - capture tout l'UDP 11677 dans docker/original-server/captures/t4c.pcap

set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGE="t4c-original"
CAPTURES_DIR="${REPO_DIR}/docker/original-server/captures"
PORT=11677

cd "${REPO_DIR}"

echo "[T4C-Orig] Construction de l'image si nécessaire..."
if ! docker image inspect "${IMAGE}" >/dev/null 2>&1; then
    docker build -t "${IMAGE}" -f docker/original-server/Dockerfile .
else
    echo "[T4C-Orig] Image '${IMAGE}' déjà construite (supprimer avec 'docker rmi ${IMAGE}' pour forcer un rebuild)."
fi

mkdir -p "${CAPTURES_DIR}"

echo "[T4C-Orig] Vérification du port UDP ${PORT}..."
if ss -lun 2>/dev/null | grep -q ":${PORT}"; then
    echo "[T4C-Orig] Le port UDP ${PORT} est déjà utilisé :"
    ss -lunp 2>/dev/null | grep ":${PORT}" || true
    echo "[T4C-Orig] Arrêtez le serveur Python avant de lancer l'original :"
    echo "             pkill -f run_server.py   # ou Ctrl-C sur start_server.sh"
    exit 1
fi

echo "[T4C-Orig] Démarrage du serveur original (réseau host)..."
echo "[T4C-Orig] La VM client doit pointer vers l'IP LAN de cette machine."
echo "[T4C-Orig] Capture dans : docker/original-server/captures/t4c.pcap"
echo "[T4C-Orig] Ctrl-C pour arrêter (le pcap est conservé)."
echo

docker run -it --rm --network host \
    -v "${CAPTURES_DIR}":/captures \
    --name t4c-orig \
    "${IMAGE}"
