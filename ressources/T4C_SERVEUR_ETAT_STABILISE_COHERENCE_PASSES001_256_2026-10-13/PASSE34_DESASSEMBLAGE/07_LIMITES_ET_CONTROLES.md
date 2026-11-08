# Limites et contrôles de la passe 34

- [CONFIRMÉ] `TFCTimers::VerifyTimers` et `Unit::VerifyTimers` sont deux fonctions distinctes utilisant `GetRound`.
- [CONFIRMÉ] `BeforeNPCThread` appelle successivement `ObjectTimer::VerifyTimers` puis `TFCTimerManager::VerifyTimers`.
- [CONFIRMÉ] Un code callback `5` est émis dans les deux systèmes, avec des conventions d'arguments non identiques.
- [CONFIRMÉ] Le code `9` est émis après `5` dans un chemin de `Unit::VerifyTimers` ; il n'est pas observé dans le même chemin de `TFCTimers::VerifyTimers`.
- [CONFIRMÉ] Le timer ID 4 dispose d'un chemin de reprogrammation à +0x4B0 rounds.
- [PARTIEL] Certaines listes conservent des indicateurs de modification durant l'itération ; leur robustesse en concurrence n'est pas établie.
- [INCONNU] Sémantique métier des callbacks 5/9, conditions complètes du timer ID 4, effet exact des timers ID 0x64.
- [MÉTHODE] Octets vérifiés ne signifie pas couverture de chemins, absence de données mélangées au code ni compatibilité d'une réimplémentation.
