@echo off
REM Configuration du client T4C 1.25 FR pour le serveur local Docker.
REM A executer une fois dans le repertoire du client (double-clic).
REM - WebPatch desactive (pas de mise a jour au lancement)
REM - Language=french (le fichier french.elng est present dans ce dossier)
reg add "HKCU\Software\Vircom\T4C" /v WebPatchDisabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Vircom\T4C" /v Language /t REG_SZ /d french /f
echo.
echo Configuration terminee : WebPatch desactive, langue francaise.
echo Le serveur est declare dans serverlist.txt (192.168.1.50).
echo Lancez t4c.exe puis connectez-vous avec admin / admin
pause
