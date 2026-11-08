# Limites — Passe 47

1. **Dégâts finaux :** la soustraction d'AC physique est confirmée dans `Character::attacked`, mais l'ordre global entre armure, résistances élémentaires, autres callbacks et dégâts persistés exige encore une trace de chaîne complète.
2. **Résistances :** `GetXResist` additionne `100 + ViewFlag + QueryBoost` ; les fonctions qui interprètent ce résultat lors de l'activation de sorts restent à identifier.
3. **Munitions :** `Character::RangeAttack` passe par `Objects::Remove`/`GetQty` et `DeleteUnit` selon plusieurs conditions. Il faut suivre séparément l'événement de rupture / retrait et la synchronisation de l'inventaire.
4. **Paquets 95/96 :** les séquences et les arguments sont documentés, mais leur format exhaustif et l'interprétation client ne sont pas prouvés. Le paquet 96 contient un ratio HP entier : les conditions de HP maximum nul restent à contrôler avant toute affirmation de défaut.
5. **Flag anti-zone** : `GAME_RULES::InSafeHaven` ne doit pas être présenté comme un blocage systématique de tous combats ; seuls certains tests et une branche d'attaque à distance sont prouvés.
6. **Séparation données/code :** lire une vtable `.rdata` ne doit jamais compter comme une couverture de `.text` ; seuls les extraits assembleur exacts comptent.
7. **Piste passe48 :** identifier les consommateurs de `GetFireResist`/`GetWaterResist` etc., puis les fonctions de distribution de dégâts magiques, et analyser une chaîne complète de `Character::RangeAttack` à `Character::hit`.
