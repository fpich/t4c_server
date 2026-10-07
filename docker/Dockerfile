# T4C Server 1.25 (binaire original) sous Wine — Debian 13.
#
# Le vrai T4C Server.exe (PE32 console, 1999) est exécuté via Wine.
# Prérequis découverts par analyse du binaire :
#   - clés registre HKLM\Software\Vircom\The 4th Coming Server\{Network,
#     GeneralConfig,Authentication,ExtensionDLLs} (sinon "Could not open
#     registry key ... required by T4C Server", il utilise des défauts ou
#     refuse de démarrer pour les NPCs)
#   - fichier de langue serveur t4c_fr.elng (chiffré, chargé via LangDB1)
#   - base de données : le serveur parle ODBC (Jam/Microsoft Access .mdb) ;
#     le DSN "T4C Server Authentication" pointe vers T4C.mdb (volume persistant)
#
# Construction :
#   docker compose build
#   docker compose up -d
#   docker compose logs -f t4c-server

FROM debian:trixie-slim

ENV WINEDEBUG=-all \
    WINEPREFIX=/opt/wineprefix \
    WINE_NO_PROXY=1

# Wine 32 bits (le binaire est un PE32 i386) + cabextract pour winetricks
RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wine wine32:i386 \
        cabextract \
        winbind \
    && rm -rf /var/lib/apt/lists/*

# Fichiers du serveur original (copiés depuis ressources/T4C_Server)
# Le contexte de build est la racine du dépôt.
COPY ressources/T4C_Server/ /opt/t4c/

# Clés de registre et script de démarrage
COPY docker/T4C-server.reg /tmp/T4C-server.reg
COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Préfixe Wine initialisé + registre importé (au premier démarrage du conteneur
# via entrypoint ; wineboot rend l'init idempotent).
VOLUME ["/opt/t4c/db"]

# Port jeu T4C (UDP 11677 — valeur par défaut confirmée dans le binaire)
EXPOSE 11677/udp

ENTRYPOINT ["/entrypoint.sh"]
