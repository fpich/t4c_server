# Serveur T4C original (Vircom 1.25) sous Wine — Docker
# Objectif : faire tourner le serveur original pour capturer les paquets
# réels (puppet 68 habillé, 46, 16, 35) et extraire les vraies valeurs.
#
# Construction (depuis la racine du repo) :
#   bash start_original_server.sh
# (le script build avec ce Dockerfile si l'image n'existe pas)
#
# Exécution : le script start_original_server.sh gère tout
# (--network host, capture pcap, garde le port libre).

FROM debian:bookworm-slim

ENV WINEPREFIX=/root/.wine \
    WINEARCH=win32

# Dépendances : Wine 32 bits + tcpdump.
# Le serveur importe MFC42.DLL (vérifié objdump), pas les MFC40D fournies
# dans le dossier. winetricks n'est PAS dans les dépôts bookworm : on
# télécharge le script officiel upstream (une seule dépendance : curl).
# xvfb+xauth pour l'installation de mfc42 (winetricks ouvre un installeur).
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        wine wine32:i386 libwine:i386 \
        winbind \
        tcpdump \
        procps \
        cabextract \
        curl ca-certificates \
        unixodbc:i386 \
        imagemagick \
        xvfb xauth && \
    rm -rf /var/lib/apt/lists/* && \
    curl -fsSL -o /usr/local/bin/winetricks \
        https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks && \
    chmod +x /usr/local/bin/winetricks

# Initialiser le préfixe Wine puis installer MFC42 (requis par l'exe).
# mfc42 installe le redistribuable officiel Microsoft (VC++ 6.0 era).
# WINEDEBUG=-all : coupe le bruit (fixme hid, systray, etc.) ; la sortie
# utile du serveur reste visible.
ENV WINEDEBUG=-all

RUN wineboot --init || true && \
    sleep 3 && \
    xvfb-run -a winetricks --unattended mfc42 || true

# Copier le serveur original (depuis ressources/T4C_Server du repo).
COPY "ressources/T4C_Server/" "/root/server/"

# Configuration registre : les .reg sont en UTF-16LE (format natif regedit).
# Import avec /s (silencieux MAIS les erreurs restent visibles), puis
# vérification immédiate DANS LA MÊME COUCHÉE : si les clés n'existent pas,
# le build échoue avec un message clair au lieu de laisser passer.
COPY docker/original-server/t4c-server.reg /root/t4c-server.reg
COPY docker/original-server/odbc-setup.reg /root/odbc-setup.reg
RUN wine regedit /s /root/t4c-server.reg; \
    wine regedit /s /root/odbc-setup.reg; \
    wine reg query "HKLM\Software\Vircom\The 4th Coming Server\Network" && \
    echo "=== REGISTRE OK ===" || \
    (echo "=== ECHEC IMPORT REGISTRE ==="; wine reg query "HKLM\Software\Vircom" 2>&1 | head -20; exit 1)

WORKDIR /root/server

# Script de démarrage : lance tcpdump en fond + le serveur, garde la console.
COPY docker/original-server/start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT ["/root/start.sh"]
