# Points restant ouverts — passe 38

**CONFIRMÉ** : les 14 inscriptions directes à RegisterSuperstructure ont des clés WORD distinctes ; elles sont des déclarations statiques, pas une preuve de tous les objets créés en jeu. Le chargement WDA possède une étape préparant les définitions de sorts. Un rappel code 0x18 est exécuté depuis DeferredLoadEffects sur procédure retrouvée. Le rappel code 9 de RemoveEffect précède le déverrouillage de son unité.

**INFÉRÉ / conditionnel** : une base d'identifiants d'effets peut entrer en collision modulo 32 bits si la partie haute des valeurs source varie ; l'absence de contrôle de 1000 allocations a été observée dans les constructeurs considérés, pas prouvée globalement. Le rappel 0x1B du callback 0x4C7990 peut réentrer dans RemoveEffect sous certaines chaînes d'appels, qui restent à tracer.

**INCONNU** : format binaire intégral des WDA, provenance des bits 16–31 de la valeur à source+0x24, contenu réel des fichiers, présence d'autres inscriptions indirectes, politique exacte de thread du serveur et sémantique des callbacks sur tous les types. La copie de références dans SendGlobalEffectMessage n'implique pas un mécanisme de référence comptée.

**Suite** : (1) tracer les décodeurs de T4C Edit.WDA ; (2) enregistrer la liste des erreurs sur l'absence de GetEffectProc pendant le rechargement ; (3) examiner les verrouillages dynamiques réentrants avant de conclure sur la concurrence ; (4) chercher le lien concret entre contenus de WDA et noms des familles d'effets sans inventer les fichiers manquants.
