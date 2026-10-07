# Docker — trois compose séparés, un rôle chacun

## 1. compose.python.yaml — SERVEUR PYTHON (recommandé) ✅

La réimplémentation du dépôt (48 tests verts : bootstrap complet, comptes,
personnages, mouvements, persistance SQLite). Conteneur trivial :
Debian 13 + Python stdlib, zéro Wine.

```bash
cd docker
docker compose -f compose.python.yaml up -d --build
docker compose -f compose.python.yaml logs -f
# persistance : volume t4c_python_db -> /data/t4c.sqlite3
```

## 2. compose.client.yaml — CLIENT fenêtré (VNC/noVNC) ✅

Wine + t4c.exe du dossier t4c_client_fr, affiché dans le navigateur.
Le serveur cible se choisit par variable :

```bash
cd docker
docker network create t4cnet 2>/dev/null
# vers le serveur Python (réseau Docker, par défaut) :
docker compose -f compose.client.yaml up -d --build
# ... puis http://<IP-hôte>:6080/vnc.html (mot de passe VNC : t4c)

# ou vers une IP externe (VM XP avec le serveur original, autre machine) :
T4C_SERVER_HOST=192.168.1.x docker compose -f compose.client.yaml up -d
```

Son : VNC ne transporte pas l'audio ; la sortie Wine est routée vers
PulseAudio de l'hôte :
  pactl load-module module-native-protocol-tcp auth-ip-acl='127.0.0.1;172.17.0.0/16;172.18.0.0/16'

## 3. compose.original-server.yaml — SERVEUR ORIGINAL (expérimental) ⚠️

T4C Server.exe (binaire Vircom 1999) sous Wine. Beaucoup progressé
(win32, Xvfb+xauth, MFC42, ODBC 32 bits, TTY, compte admin auto) mais
le binaire exige une console interactive réelle : en conteneur détaché
il démarre puis se ferme (boucle). La VM XP l'héberge de façon fiable.
Conservé pour reprise ultérieure.

## Architecture cible

```
[t4c-python conteneur]  <-réseau t4cnet->  [t4c-client conteneur]
        (protocole validé)                      -> noVNC :6080 (navigateur)
        (SQLite persistée)                      -> son : PulseAudio hôte
```
