# Docker — le client fenêtré (le serveur tourne sur l'hôte)

## Architecture

```
[hôte p50]  bash start_server.sh    →  serveur Python UDP 0.0.0.0:11677
     ↑ host.docker.internal
[conteneur t4c-client]  Wine + t4c.exe fenêtré
     → noVNC : http://<IP-hôte>:6080/vnc.html (navigateur)
     → VNC :5900 (mot de passe : t4c)
     → son : PulseAudio de l'hôte
```

Le serveur Python ne tourne **pas** dans Docker : `bash start_server.sh`
depuis la racine du dépôt. Les logs sont directement dans le terminal,
le débogage est immédiat, et la persistance est le fichier SQLite local.

## Démarrage complet

```bash
# 1. terminal 1 — le serveur (logs en direct)
cd ~/t4c_server
bash start_server.sh

# 2. terminal 2 — le client Docker
cd ~/t4c_server/docker
docker compose -f compose.client.yaml up -d --build

# 3. navigateur
http://192.168.1.45:6080/vnc.html
```

## Options du client

```bash
# pointer le client vers un autre serveur (VM XP, autre machine) :
T4C_SERVER_HOST=192.168.1.x docker compose -f compose.client.yaml up -d

# son (une fois sur l'hôte) :
pactl load-module module-native-protocol-tcp auth-ip-acl='127.0.0.1;172.17.0.0/16;172.18.0.0/16'
```

## compose.original-server.yaml (expérimental)

Le binaire original sous Wine, conservé pour reprise ultérieure.
La VM XP l'héberge de façon fiable. Voir l'historique git.
