# Passe 69 — Allocateur `0x441FF0` et états SEH 0 à 4

## Référence binaire

Exécutable original `T4C Server(2).exe` SHA-256 `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`. PE x86; section `.text` VA 0x00401000, taille 905117 octets. Aucune instruction inventée.

## Découverte 1 : `0x441FF0` choisit allocation directe ou pool

- `0x441FF7` appelle `0x4420B0` afin de récupérer l'instance du gestionnaire de pool.
- `0x441FFE–0x442003` teste un drapeau du gestionnaire à l'offset `+0x20`.
- Branche drapeau à zéro `0x442005–0x442016` : taille `[EBP+8]`, `call DWORD PTR [0x4DE294]`, retourne la valeur de `malloc` sans test `EAX`.
- Branche drapeau non nul `0x442017–0x442050` : collecte d'un contexte sur la pile (`0x462BD0`), prend un verrou (`0x409680`), et enregistre l'allocation via `0x4422E0`. Le verrou est relâché par `0x4096A0`. La routine `0x4422E0` réalise également une allocation par `malloc` et peut retourner 0 lorsque la table de pool `[EBX+0x34]` est nulle.
- Le répertoire d'import PE nomme exactement `MSVCRT.dll!malloc` à l'IAT `0x4DE294`, et `free` à `0x4DE308`. Ce n'est pas `operator new` C++ dans le chemin direct identifié.

## Découverte 2 : risque de déréférencement nul pendant la construction `var`

Le constructeur d'arbre `0x45E8A0` pousse `0x30` octets à `0x45E8B0`, puis appelle `0x441FF0` à `0x45E8B7`. Il exécute `MOV [EAX+4],ECX` à `0x45E8C1` et d'autres écritures sur `EAX`, **sans instruction de test** entre le retour et la première écriture.

Par conséquent, si l'allocateur retourne `NULL` (ex. échec de `malloc`), la première écriture tenterait d'accéder à l'adresse `0x00000004`. Cette déduction statique met en évidence un risque de violation d'accès. Elle ne prouve pas qu'un échec a été observé, ni que le serveur fuit de la mémoire en pratique. L'état 5 de nettoyage exceptionnel de l'arbre n'est installé qu'après le constructeur (`0x45CB1B`) ; son fonclet ne protège donc pas spécifiquement ce cas. Le traitement d'une exception Windows matérielle ou du processus n'est pas établi ici.

## Découverte 3 : états SEH 0 à 4, callback MFC et objets locaux

- État 0 : fonclet `0x4D7770` appelle `0x4D1B90` avec un tableau local `[EBP-0x78]`, **5** éléments, pas de **4** octets et callback `0x4D1A40`. Le helper `0x4D1B90` appelle ce callback depuis le dernier élément vers le premier. À l'entrée de `0x45C950`, `0x4D1D8C` effectue la construction du tableau avec le callback `0x4D1A5E` ; il comporte un chemin de nettoyage pour tableau partiellement construit via `0x4D1C10`.
- États 1 à 4 : fonclets `0x4D7783`, `0x4D778B`, `0x4D7793`, `0x4D779B` ciblent respectivement `[EBP-0x10]`, `[EBP-0x2C]`, `[EBP-0x30]`, et `[EBP+0x10]`, puis sautent vers `0x4D1A40`.
- Le thunk `0x4D1A40` est un `jmp` vers l'IAT `0x4DE28C`, import **MFC42.DLL, ordinal 800**. Le nom exact de la classe et de la méthode n'est pas fourni par la table d'import (ordinal seulement) : le qualifier de destructeur MFC est une **inférence par son rôle dans l'unwind**, non une résolution de nom source.
- `0x4D1A5E` et `0x4D1A64` sont également des imports MFC, respectivement ordinal 540 et 537 dans ce binaire. Ces valeurs corroborent l'utilisation de constructions de petits objets MFC, sans prouver leur type précis.

## Couverture strictement non redondante

- Base certifiée passe 68 : **128,659** octets.
- Nouveaux octets de cette passe : **1,111** octets concordants avec le PE et absents du masque P68.
- Cumul passe 69 : **129,770 / 905,117 octets = 14.337373 %**.
- Instructions vérifiées : 448; discordances : zéro; intervalles nouveaux : 13.
- Toutes les preuves nouvelles et historiques sont disjointes au niveau des bits nouveaux, avec conservation du masque intégral de la passe 68.

### Répartition

| Preuve | Instructions vérifiées | Octets nouveaux |
|---|---:|---:|
| `02_ALLOCATEUR_441FF0.asm` | 40 | 97 |
| `03_POOL_ALLOCATION_4422E0.asm` | 93 | 238 |
| `04_POOL_CYCLE_VIE.asm` | 154 | 311 |
| `05_SEH_0_4_ET_IMPORTS.asm` | 135 | 416 |
| `06_HELPER_ALLOCATION_PILE.asm` | 26 | 49 |


## Limites et suite

Analyse exclusivement statique. La concordance binaire n'est ni un test dynamique d'allocation, ni la preuve d'une fuite ou d'une récupération correcte d'un access violation. Les états d'exception pris en charge par C++ ne couvrent pas nécessairement tous les chemins d'erreur ou arrêts brutaux. L'archive n'inclut pas l'exécutable original (déjà fourni séparément). Prochaine priorité : élucider le comportement du mode pool actif lors d'un `malloc` nul, identifier la gestion globale des erreurs mémoire et étudier les chemins de terminaison du constructeur.
