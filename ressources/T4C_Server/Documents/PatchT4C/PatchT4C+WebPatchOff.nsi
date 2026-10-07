;NE PAS TOUCHEZ CE FICHIER, QUE SI VOUS CONNAISSEZ LE LANGUAGE NSIS ;D

!include "MUI.nsh"
Name "Patch T4C"
OutFile "PatchT4C.exe"
Var Path
!define MUI_ABORTWARNING
Page custom PathAuto
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_LANGUAGE "French"
ReserveFile "PathAuto.ini"
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

Function .onInit

!insertmacro MUI_INSTALLOPTIONS_EXTRACT "PathAuto.ini"
  
FunctionEnd

Function PathAuto

!insertmacro MUI_HEADER_TEXT "Patch T4C" "Voulez vous vraiment installer le Patch ?"
!insertmacro MUI_INSTALLOPTIONS_DISPLAY "PathAuto.ini"

FunctionEnd

Section "Install"

MessageBox MB_YESNO "Voulez vous vraiment installer le Patch ?" IDYES GOGOGO
  goto re
GOGOGO:
ReadRegStr $Path HKCU "Software\Vircom\T4C" "Path"
IfErrors erreurpath suiteinstall
erreurpath:
  MessageBox MB_OK "Le Jeux T4C n'a pas été détécté sur vôtre disque dur !"
  re:
  MessageBox MB_OK "Installation annulée."
  Abort
suiteinstall:
SetOutPath "$Path"
File serverlist.txt
WriteRegDword HKCU "Software\Vircom\T4C" "WebPatchDisabled" "7929"

SectionEnd