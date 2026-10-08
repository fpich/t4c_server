# T4C Server original (Vircom 1.25) sous Wine — Docker
# Objectif : faire tourner le serveur original pour capturer les paquets
# réels (puppet 68 habillé, 46, 16, 35) et extraire les vraies valeurs.
#
# Construction :
#   docker build -t t4c-original -f docker/original-server/Dockerfile ressources/T4C_Server/..
#
# Le contexte de build est le REPO ROOT car on copie ressources/T4C_Server/.
# En pratique : cd <repo> && docker build -t t4c-original -f docker/original-server/Dockerfile .
#
# Exécution (sécurité réseau : None des ports ne sont publiés hors du host
# de test — tout reste sur le loopback/bridge local du poste de dev) :
#   docker run -it --rm \
#     -v $(pwd)/docker/original-server/captures:/captures \
#     t4c-original
#
# À l'intérieur, le serveur démarre et un tcpdump capture tout l'UDP 11677
# dans /captures/t4c.pcap. Connectez le client depuis la VM via l'IP du host
# Docker ( PAS de -p : le port reste sur le réseau local du poste).

FROM debian:bookworm-slim

ENV WINEDEBUG=-all \
    WINEPREFIX=/root/.wine \
    WINEARCH=win32

# Dépendances minimales : Wine 32 bits + tcpdump + xvfb (console virtuelle,
# le serveur est une application CONSOLE PE32 mais MFC peut vouloir un DISPLAY).
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        wine wine32:i386 libwine:i386 \
        winbind \
        tcpdump \
        xvfb \
        procps \
        cabextract && \
    rm -rf /var/lib/apt/lists/*

# Initialiser le préfixe Wine (version win98 : MFC40/ODBC 2003 s'y sentent bien).
RUN xvfb-run -a winecfg -v win98 || true; \
    xvfb-run -a wineboot --init || true

# Copier le serveur original (depuis ressources/T4C_Server du repo).
COPY "ressources/T4C_Server/" "/root/server/"

# Configuration registre : DSN ODBC "T4C Server", port 11677, licence.
COPY docker/original-server/t4c-server.reg /root/t4c-server.reg

# Importer la config registre dans le préfixe Wine (HKLM -> Wine's HKLM).
RUN xvfb-run -a wine regedit /root/t4c-server.reg || true

# Créer le DSN ODBC système (Access MDB). Wine n'a pas de panneau ODBC,
# on l'écrit directement dans le registre :
#   Driver = emsmtp? Non — le serveur utilise VOPCom/VOPSEC + MDAC.
# Le DSN "T4C Server" pointe vers T4C.mdb via le driver Access (Jet).
# Si le driver Access n'existe pas dans Wine, le serveur utilisera son
# fallback ODBC — la trace de démarrage nous le dira.
COPY docker/original-server/odbc-setup.reg /root/odbc-setup.reg
RUN xvfb-run -a wine regedit /root/odbc-setup.reg || true

WORKDIR /root/server

# Script de démarrage : lance tcpdump en fond + le serveur, garde la console.
COPY docker/original-server/start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT ["/root/start.sh"]
