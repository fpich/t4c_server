# Registre des limites — passe 33

- C33-01 [CONFIRMÉ] Deux parcours structurellement distincts : ObjectTimer global et Unit local. Le fait qu’ils appellent la même routine ne les rend pas équivalents.
- C33-02 [CONFIRMÉ] Des handlers d’événements d’objets invoquent Unit::VerifyTimers ; ces appels ne garantissent pas l’expiration d’un effet.
- C33-03 [CONFIRMÉ] Sleep(50) est demandé dans un thread d’horloge ; le round réel n’est pas garanti de 50 ms à cause des recalages et de la planification.
- C33-04 [PARTIEL] Le type 3 vérifié par ObjectTimer::AddObject n’est pas nommé métier sur ce seul chemin.
- C33-05 [INCONNU] Les significations métier des codes callback 5 et 9 et la couverture exhaustive des effets.
- C33-06 [MÉTHODE] La couverture est celle des octets documentés, avec vérification contre le fichier ; elle n'implique pas une compréhension exhaustive ni un désassemblage sans code/données ambigu.
