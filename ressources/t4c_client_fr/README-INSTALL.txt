================================================================
 CLIENT T4C 1.25 FR - preparation pour serveur local Docker
================================================================

1) COPIER ce dossier entier (t4c_client_fr) dans la machine Windows
   (VM XP recommandee) - ex. C:\Jeux\T4C\

2) DOUBLE-CLIC sur "configurer-client.bat"
   (desactive le WebPatch et force la langue francaise)

3) VERIFIER serverlist.txt : il pointe sur 192.168.1.50 (l'IP de la
   machine hote Docker). Si votre IP est differente, editez les
   lignes 2 et 3 de serverlist.txt.

4) LANCER t4c.exe

5) CONNEXION : compte "admin", mot de passe "admin"
   (compte super-admin cree automatiquement par le serveur Docker)

Notes :
- Le serveur doit tourne AVANT le lancement du client :
      cd docker && docker compose up -d
- Ports utilises : UDP 11677 (jeu) et 11678 (emission serveur)
- En cas de refus de connexion, voir les logs :
      docker compose exec t4c-server sh -c "tail -20 /opt/t4c/Logs/Debug.log"
================================================================
