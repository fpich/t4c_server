# Serveur T4C original sous Docker/Wine

Objectif : faire tourner le **serveur original Vircom 1.25** pour **capturer
les paquets réels** et extraire les vraies valeurs du protocole (puppet 68
habillé, entrée en jeu 46, vue 16, nom PNJ 35). Ces captures débloqueront
l'habillage 3D et la table des codes portés.

## Infos extraites de la config originale (`Documents/Reg/T4C Server.reg`)

- **Port : 11677** (`SERVER_PORT=0x2d9d`) — identique à notre serveur Python
- **IP : 127.0.0.1** par défaut (`SERVER_IP`)
- **DSN ODBC : "T4C Server"** → base `T4C.mdb` (Jet/Access)
- **Items de départ originaux** : `"Cloth pants"`, `"Cloth vest"`, `"Rusterd Dirk"`, `"Torch"` ×2
- Licence : `VT4C20020060001-242823-C0651943`
- Téléport GM "Bridge of Lighthaven" : (0xae6, 0x406) = (2790, 1030)

## Build (depuis la racine du repo)

```bash
cd ~/t4c_server
docker build -t t4c-original -f docker/original-server/Dockerfile .
```

⚠️ Le contexte de build est **la racine du repo** (le Dockerfile copie
`ressources/T4C_Server/`).

## Run (aucun port publié — réseau local uniquement)

```bash
mkdir -p docker/original-server/captures
docker run -it --rm \
  -v $(pwd)/docker/original-server/captures:/captures \
  --name t4c-orig \
  t4c-original
```

Le serveur démarre et `tcpdump` capture **tout l'UDP 11677** dans
`captures/t4c.pcap`. **Aucun port n'est publié** : le conteneur reste sur le
réseau Docker local. Pour que le client officiel (VM Windows) s'y connecte,
utilisez l'IP locale de la machine Docker (le réseau de votre poste — pas une
exposition publique).

## Procédure de capture (l'objectif !)

Depuis la VM client, avec le client officiel 1.25 pointé vers l'IP Docker :

1. **Login + création d'un personnage** — captures du flux complet
2. **Entrée en jeu** — le paquet 46, le puppet 68 (avec "Cloth pants"/"Cloth vest"
   équipés = les vraies valeurs portées !), le 16
3. **Clic-droit sur un PNJ** — le 35
4. Bougez, parlez, droppez/ramassez

Arrêtez le conteneur (Ctrl-C) puis :

```bash
ls -la docker/original-server/captures/
# t4c.pcap : à analyser
tcpdump -r docker/original-server/captures/t4c.pcap -x 'udp port 11677' | head -100
```

Envoyez le `.pcap` (ou les hex des paquets) — je décode les 8 valeurs du
puppet 68 et corrige `puppet_appearances()` avec la vérité terrain.

## Pièges connus

- **Jet/Access sous Wine** : le point fragile. Le DSN est déclaré dans
  `odbc-setup.reg`, mais il faut que `odbcjt32.dll` (driver Access) existe
  dans le prefixe Wine. Si le serveur affiche une erreur ODBC :
  ```bash
  docker exec -it t4c-orig bash
  apt-get update && apt-get install -y winetricks
  winetricks mdac28 corefonts
  wine regedit /root/odbc-setup.reg   # réimporter
  ```
- **MFC40D.DLL (debug)** : déjà dans le dossier serveur, Wine les chargera.
- **Le serveur peut demander une interaction console** : gardez `-it`.
- **Licence** : le .reg original contient la clé — déjà importée.

## Ce qu'on attend des captures

| Paquet | Ce qu'on veut extraire |
|---|---|
| **68 (habillé)** | les 8 vraies valeurs u16 pour "Cloth pants" + "Cloth vest" |
| 46 | l'ordre exact des paquets d'entrée en jeu |
| 16 | le format des PNJ visibles |
| 35 | la requête/réponse du nom de PNJ |
| 13 | la structure complète réelle (notre version est ~90 % droite) |

Avec ça, l'habillage 3D sera exact et les PNJ auront de vraies apparences.
