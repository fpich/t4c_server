# Passe 61 — retour au binaire et provenance du conteneur WDA

## Identité vérifiée

- Binaire PE x86 fourni : `T4C Server(2).exe`, 1 200 128 octets.
- SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.
- `.text` : adresse virtuelle de début `0x401000` (ImageBase `0x400000` + RVA `0x1000`), taille virtuelle `0xDCF9D` = 905 117 octets.
- Identité avec empreinte attendue par les passes archivées : établie.

## Avancée : passage des paramètres de 0x45C890 à 0x45A7A0

L'ordre de `push` vérifié dans le binaire à `0x45C8C3–0x45C8CB` est : `EAX`, adresse du temporaire `[EBP-0x10]`, `EDX`, `EDI`, `ESI`, `EBX`. L'appel direct `0x45C8D3` cible `0x45A7A0`.

Sous la convention x86 utilisée ici, le premier argument logique du dispatcher `[EBP+0x08]` est le dernier poussé (`EBX`), et le sixième `[EBP+0x1C]` est le premier poussé (`EAX`). Avant les pushes, `0x45C8B4` définit `EAX=[EBP+0x18]` du wrapper. **Ainsi, le conteneur lu à `[EBP+0x1C]` dans le dispatcher est transmis comme `[EBP+0x18]` du wrapper, pour cet appel direct.**

Ceci établit une provenance interprocédurale supplémentaire par rapport à la passe 60, mais pas le propriétaire objet : il faut remonter les appelants du wrapper et tracer le paramètre `[EBP+0x18]`. Le conteneur utilisé par le lecteur `var` `[EBP+0x2C]` reste à raccorder.

## Contrôle du chemin conversation

À `0x45C8E9`, appel indirect au slot `+0x1A4` de l'objet `ESI` ; selon `EAX`, `0x45C903` appelle le slot `+0x1A8` de `EDI` ou `0x45C91B` le slot `+0x158` de `ESI`. Les instructions sont contrôlées sur le binaire. La nomenclature IsPrivateTalk / SendPrivateMessage / Talk reste liée à la résolution des vtables et exports, pas aux seuls octets du wrapper.

## Contrôle du helper d'arbre

À `0x40F23C`, la routine lit `[ECX+4]`, puis descend dans une structure de nœuds. À `0x40F28F`, elle appelle `0x40F300` dans un chemin d'insertion. Ces instructions correspondent aux preuves anciennes et au binaire présent.

## Limite de couverture

Les plages redésassemblées sont des vérifications ciblées de zones déjà étudiées. **Nouveaux octets uniques comptabilisés : zéro par prudence** ; ne pas confondre plage redésassemblée et ajout au cumul vérifié. Le déficit historique de 233 octets n'est pas levé.

## Prochain objectif

Rechercher les appels directs `call 0x45C890`, dresser la liste des sources du cinquième argument du wrapper, puis rapprocher les appels du lecteur `var` de l'origine de son `[EBP+0x2C]`. Poursuivre ensuite la localisation du destructeur sur base de références croisées.
