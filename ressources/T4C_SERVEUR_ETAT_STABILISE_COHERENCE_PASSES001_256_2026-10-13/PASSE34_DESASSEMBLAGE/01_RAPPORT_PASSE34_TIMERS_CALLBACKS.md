# Passe 34 — Architecture des timers et contrats de callbacks

## Cadre et traçabilité

Exécutable PE32 examiné : `T4C Server(1).exe` (`13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`). Comparaison octet par octet avec le binaire, désassemblage statique `objdump -M intel`. Archive fondée sur les **233 fichiers** de la passe 33, conservés sans changement. Pas de développement Python du serveur.

## 1. Trois circuits à distinguer [CONFIRMÉ]

1. `Unit::VerifyTimers` (`0x48D330`) traite des échéances associées à une unité, structurées autour de `Unit+0xF4` et d'un champ de round `+0x10`. Les callbacks sont appelés avec les codes **5 puis 9** à `0x48D5BE` et `0x48D5CE`, après les tests de présence et d'échéance. Même pointeur fonction `[effet+0x08]`, mais deux appels distincts.
2. `ObjectTimer::VerifyTimers` (`0x44E040`) sélectionne des objets conservés dans un registre global et invoque `Unit::VerifyTimers` sur les unités retenues. Il ne doit pas être confondu avec la liste des effets de l'unité.
3. `TFCTimers::VerifyTimers` (`0x489350`) est un **ordonnanceur général distinct** : il compare `[entrée+0x04]` au résultat de `GetRound`, retire de sa liste les timers échus, puis émet un callback avec le code **5** à `0x489551`. Son enveloppe globale est `TFCTimerManager::VerifyTimers` (`0x4897B0`) sur l'objet `0x516358`.

Dans `BeforeNPCThread`, les deux gestionnaires globaux sont appelés **consécutivement** : `0x444DD7 -> ObjectTimer::VerifyTimers`, puis `0x444DDC -> TFCTimerManager::VerifyTimers`. Ils partagent un contexte d'ordonnancement mais restent deux registres et deux contrats de callback distincts.

## 2. Durée et arguments des timers généraux [CONFIRMÉ]

`TFCTimers::AddTimer` (`0x488C90`) alloue une entrée de **0x10 octets**. Il écrit un identifiant sur 16 bits à `+0x00`, un round d'échéance 32 bits à `+0x04`, un paramètre 32 bits à `+0x08` et un pointeur callback à `+0x0C`. Si le drapeau d'ajout est non nul, l'échéance est calculée `GetRound() + délai`; sinon la valeur est conservée comme une échéance directe. La fonction gère aussi la construction de conteneur, une liste chaînée et ses compteurs.

`TFCTimers::VerifyTimers` vérifie l'échéance, détache l'entrée du conteneur avant l'invocation et utilise ensuite le pointeur `[entrée+0x0C]`. Le callback reçoit des arguments composés d'un identifiant de timer, du code **5**, du paramètre stocké et d'une valeur zéro. Le code contient des branches spécifiques lorsque le callback modifie la liste pendant le parcours. Cette organisation est confirmée par le flot assembleur, mais sa sûreté en présence de concurrence n'a pas été testée.

## 3. Timer d'identifiant 4 : exemple complet [CONFIRMÉ / PARTIEL]

Une routine à `0x459750` inscrit le timer **4**, avec une échéance égale au round courant et la fonction callback `0x459870`. Un autre traitement à `0x459770` appelle `TFCTimerManager::RemoveTimersByID(4)`. À `0x4598E7`, le callback compare son argument événementiel à **5** et consulte un drapeau global `0x514D30`. À `0x459B69`, sur un chemin conditionnel, ce même callback se réenregistre avec une échéance de `GetRound()+0x4B0` (**1 200 rounds**). Ce sont des rounds du jeu, pas une durée précise en secondes.

Deux autres sites à `0x4C925E` et `0x4C970A` appellent `TFCTimerManager::AddTimer` pour l'identifiant **0x64**, la valeur **0xC8** et le callback `0x4C9620`. Le rôle métier de ces timers reste à nommer.

## 4. Registre des callbacks d'effets [PARTIEL]

`UnitEffectManager::RegisterEffect` (`0x490B10`) conserve des associations de code et de fonction dans la liste globale à `0x556400`. `GetEffectProc` (`0x490B40`) recherche un code et retourne la fonction correspondante, ou un pointeur nul. Cette table est distincte du planificateur général `TFCTimers`.

`Unit::SendGlobalEffectMessage` (`0x48CF40`) itère sur les effets de l'unité et propage un **code interne fourni par l'appelant** via les callbacks. Cela ne constitue pas nécessairement un message S2C envoyé au client. Les codes 5 et 9 observés lors de l'expiration ne sont pas encore associés avec certitude à une sémantique métier universelle.

## 5. Avancement documentaire

- Couverture historique passe 33 : **52,789 / 905,117** octets, soit **5.832 %**.
- Ajout net passe 34 (sans compter les chevauchements) : **4,198 octets**.
- Total nouveau : **56,987 / 905,117** octets, soit **6.296 %**.
- Entrées exportées avec adresse d'instruction dans les preuves : **158 / 1125**, contre 142 précédemment.

Il s'agit d'une **couverture de preuves en octets**, pas d'une couverture de toutes les branches ou d'une compréhension fonctionnelle complète. Les plages contiennent potentiellement du code de liaison, des NOP et des portions non atteignables ; les preuves octets ne préjugent pas de leur utilité.

## 6. Travaux encore nécessaires

- Suivre les noms des fonctions concrètes enregistrées avec `UnitEffectManager::RegisterEffect` pour chaque code.
- Reconstruire la sémantique des callbacks 5 et 9 pour chacune des familles de timer, sans l'extrapoler entre elles.
- Valider les retours et changements d'état lorsque les callbacks ajoutent/suppriment des timers pendant un parcours.
- Identifier les rôles fonctionnels des timers 4 et 0x64 et des appels à `0x4C9620`.
- Ne pas convertir les valeurs de round en temps réel sans exécution et mesure.
