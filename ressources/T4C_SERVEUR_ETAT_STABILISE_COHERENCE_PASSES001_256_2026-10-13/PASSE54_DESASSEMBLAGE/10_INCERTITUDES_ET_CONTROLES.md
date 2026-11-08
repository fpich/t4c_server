# Passe 54 — Inconnues et contrôles de reproductibilité

**CONFIRMÉ :** 16 noms spéciaux et leurs sous-types immédiats; pour `if`, 3 pointeurs enfants, séparateurs `?` et `:`, 3 messages d'erreur spécifiques; un arbre équilibré avec marqueurs de nœud `+0x28/+0x29` dans les routines `0x40F300/0x40F5E0`.

**INFÉRÉ :** les liens entre la famille d'arbre et les valeurs contextuelles du parseur peuvent être pertinents; aucune recherche inverse d'appel démontrant la chaîne complète `var → insertion` n'est fournie.

**INCONNU :** langage complet des formules WDA, ordre et priorité pour toutes les combinaisons `if`, types internes des valeurs variables, effet précis des opérandes avec état modifiable, bugs éventuels d'allocation et cas d'erreurs sous entrées malformées.

**VALIDATION :** extraction des octets exacte par l'objdump PE x86 et comparaison avec `T4C Server(1).exe`. Les plages excluent les données de saut `0x40F121` et suivantes. Les anciens fichiers restent inchangés. Aucun WDA réel n'a été fourni, aucune affirmation sur des données absentes. Différence historique maintenue : **91 octets**.

**MESURE :** brute **120518**, prudente **120427** octets, nouvelles preuves 952 instructions validées. Les anciens extraits marqués client ne sont pas confondus avec les preuves serveur.
