# Passe 43 — Grammaire des paramètres de superstructures de sorts

## 1. Séparation des deux contrats [CONFIRMÉ]

Le chargeur de la passe 41 vérifie **présence des paramètres** puis appelle la méthode virtuelle `[vptr+0]` de la superstructure pour chaque `(id, valeur textuelle)`. Cette passe étend les validateurs des types **2, 9, 14** sans transformer ces clés en noms de spells. Dans le validateur, `eax=0` indique l'échec du traitement local; la réussite ne garantit pas que le sort complet soit enregistré.

## 2. Type 9 : événement textuel et expressions [CONFIRMÉ]

`0x4C75A0` lit l'ID comme WORD, soustrait 1 et utilise une table de quatre pointeurs à `0x4C770C` ; destinations `0x4c7690, 0x4c75e2, 0x4c76a8, 0x4c76c8`. L'ID **1** appelle `atoi` via l'import à `0x4DE314`, écrit le WORD résultant à `this+0x0C` et **rejette zéro**. L'ID **2** compare successivement via `_stricmp` (import `0x4DE2E4`) les libellés `OnAttack`, `OnAttacked`, `OnTimer`, `OnDisturbed`, `OnHit`, `OnAttackHit`, en affectant respectivement **1, 2, 5, 3, 14, 28** à `this+0x0E`; tout autre libellé est rejeté. IDs **3** et **4** appellent `0x409900` pour parser la chaîne dans des champs d'expression à `this+0x88` et `this+0x18` ; le résultat non nul est exigé.

Point essentiel : les valeurs 5 ou 9 des callbacks runtime des passes 32–38 ne sont **pas** déduites comme sémantique universelle des ID WDA. Ici, `OnTimer` donne la valeur 5 dans un champ configuré. `07_EVENEMENTS_TYPE9.tsv` fournit les six couples exacts.

## 3. Type 14 : quatre expressions [CONFIRMÉ]

`0x4C5880` lit également l'ID WORD et utilise la table `0x4C5970`; ses destinations sont `0x4c58b7, 0x4c58d7, 0x4c5914, 0x4c592b`. Pour les IDs 1,2,3,4, la routine construit une copie temporaire de la chaîne et appelle `0x409900` sur les objets internes à `this+0x80`, `+0x10`, `+0xF0` et `+0x160`. Tout autre ID est refusé. La fonction `0x409900` effectue une **analyse syntaxique/structurelle** ; une validation vraie n'est pas une borne métier sur la valeur numérique calculée.

Le constructeur/application adjacent `0x4C5980` utilise ultérieurement plusieurs de ces expressions via `0x40C350`, appelle une méthode virtuelle d'unité, puis `SpellEffect::CreateEffectStatus` (`0x460820`). Cette chaîne confirme que des valeurs textuelles validées peuvent alimenter le calcul runtime. **Les cibles et le sens métier de chacune des quatre expressions restent non démontrés.**

## 4. Type 2 : lexique de caractéristiques [CONFIRMÉ]

`0x4C32F0` expose un lexique textuel embarqué vérifiable, comparé via `_stricmp`. Pour l'ID WDA **2**, il traduit plusieurs libellés en codes WORD à `this+0x0C` : `strength`/`str`→3, `agility`/`agi`→6, `wisdom`/`wis`→4, `endurance`/`end`→2, `intelligence`/`int`→1, `mana`→240, `fire resist`/`r_fire`→13, `fire power`/`fire`→17 et bien d'autres variantes. Le tableau `06_LEXIQUE_TYPE2.tsv` liste **8 libellés effectivement intégrés au binaire**. Des synonymes ont exactement le même code. La comparaison n'est pas sensible à la casse.

Une branche de repli recherche le préfixe `skill `, lit ensuite un entier via `atoi`, rejette zéro et ajoute `0x2710` (**10 000**) au code stocké sous forme de WORD; ce stockage 16 bits peut tronquer la somme en arithmétique machine. L'existence de cette branche ne signifie pas que tous ces indices de compétences correspondent à une donnée WDA réelle.

Le type 2 a également une voie pour les IDs WDA 1 et 3, distincte du vaste lexique de l'ID 2. Les instructions la documentent sans extrapoler une interprétation fonctionnelle complète de ses champs.

## 5. Parseur d'expressions partagé [CONFIRMÉ, portée limitée]

L'adresse `0x409900` assure préparation, suppression d'espaces et normalisation de certains marqueurs avant la construction de la représentation de l'expression. `0x40C390` examine l'équilibrage des parenthèses; `0x40C400` distribue des classes de caractères et des opérateurs; des sous-routines lisent les nombres décimaux. `0x40C350` est un pont vers `0x409C10`, un évaluateur de la représentation structurée manipulant des nombres flottants et plusieurs opérations.

Les contrôles observés appartiennent à une **validation de grammaire**, et pas nécessairement à des gardes de plage min/max pour le gameplay. Aucun fichier WDA authentique n'a été exécuté ou chargé. Aucun essai dynamique sur serveur réel n'a été effectué.

## 6. Limites et réserves

- Les huit destinations de saut sont confirmées par les octets 32 bits des tables `.text`, **pas par le décodage trompeur des données comme instructions x86**.
- Un validateur peut accepter des expressions syntaxiquement correctes dont le résultat dépend des variables runtime ou d'un contexte de jeu absent.
- Le lexique et ses codes sont ceux du PE étudié, pas une spécification intemporelle de toutes les versions T4C.
- La signification exhaustive des codes des types 2 et 9 pendant l'exécution est à rapprocher de leurs callbacks et de leurs effets sur `Unit`.
- `+0x3AC` et l'indexation WDA restent documentés dans les passes 36 à 42, sans changement rétroactif.
