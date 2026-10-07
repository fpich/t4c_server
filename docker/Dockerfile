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

ENV WINEPREFIX=/opt/wineprefix \
    WINEARCH=win32 \
    XDG_RUNTIME_DIR=/tmp/xdg \
    WINE_NO_PROXY=1

# Wine 32 bits (le binaire est un PE32 i386) + unixODBC/MDBTools pour le
# DSN ODBC "T4C Server Authentication" (le serveur authentifie via ODBC
# vers T4C.mdb ; Wine route les appels ODBC vers unixODBC côté Linux).
RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wine wine32:i386 wine64 \
        cabextract \
        curl \
        ca-certificates \
        winbind \
        xvfb \
        xauth \
        xdotool \
        util-linux \
        x11-xserver-utils \
        unixodbc \
        unixodbc-dev \
        libodbc2:i386 \
        odbc-mdbtools \
        odbc-mdbtools:i386 \
        mdbtools \
    && rm -rf /var/lib/apt/lists/*

# Fichiers du serveur original (copiés depuis ressources/T4C_Server)
# Le contexte de build est la racine du dépôt.
COPY ressources/T4C_Server/ /opt/t4c/

# winetricks : absent des dépôts Debian 13, on récupère le script officiel.
RUN curl -L -o /usr/local/bin/winetricks \
      https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks \
    && chmod +x /usr/local/bin/winetricks

# MFC42 : T4C Server.exe importe MFC42.DLL (confirmé par err:module:import_dll).
# Wine ne fournit pas les MFC ; winetricks mfc42 installe les redistributables
# Microsoft officiels dans le préfixe.
RUN export WINEPREFIX=/opt/wineprefix WINEARCH=win32 XDG_RUNTIME_DIR=/tmp/xdg \
    && mkdir -p /tmp/xdg /opt/wineprefix \
    && xvfb-run -a winetricks -q mfc42 \
    && rm -rf /root/.cache

# Clés de registre et script de démarrage
COPY docker/T4C-server.reg /tmp/T4C-server.reg
COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Préfixe Wine initialisé + registre importé (au premier démarrage du conteneur
# via entrypoint ; wineboot rend l'init idempotent).
VOLUME ["/opt/t4c/db"]

# Ports T4C (défauts confirmés en désassemblage : RECV 11677 / SEND 11678)
EXPOSE 11677/udp 11678/udp

ENTRYPOINT ["/entrypoint.sh"]
