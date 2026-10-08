#!/bin/bash
# Injection registre T4C Server via wine reg add (fiable).
set +e
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server" /v "License" /t REG_SZ /d "VT4C20020060001-242823-C0651943" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server" /v "SHUTDOWN" /t REG_DWORD /d 0x00000001 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server" /v "RegUpdate" /t REG_DWORD /d 0x00000001 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "AuthenticationMethod" /t REG_DWORD /d 0x00000001 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_SEC_IP" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_NAS_IP" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_SEC_PORT" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_SECRET" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "AUTH_REALM" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_DB_PWD" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_DSN" /t REG_SZ /d "T4C Server" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_NAME_FLD" /t REG_SZ /d "Account" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_PWD_FLD" /t REG_SZ /d "Password" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_TABLE" /t REG_SZ /d "T4Cusers" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_CREDITS_FLD" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_WHERE" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_DB_USER" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "WG_T4C_KEY" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_ACCT_IP" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_ACCT_PORT" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_2ND_AUTH_IP" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_2ND_AUTH_PORT" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "REMOTE_WG_T4C_KEY" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ACCESS_RIGHT_DENIAL_MSG" /t REG_SZ /d "You do not have access rights to play The 4th Coming." /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_DEDUCT_CREDITS" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "VOP_STRIP_REALM" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_PRIVILEGE_FLD" /t REG_SZ /d "T4CKey" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Authentication" /v "ODBC_PRIVILEGE_VALUE" /t REG_SZ /d "1" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "StartupGold" /t REG_SZ /d "200+1d50" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "DB_USER" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "DB_PWD" /t REG_SZ /d "" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "ShoutDelay" /t REG_DWORD /d 0x000000a0 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "StartupItem1" /t REG_SZ /d "Cloth pants" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "StartupItem2" /t REG_SZ /d "Cloth vest" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "StartupItem3" /t REG_SZ /d "Rusterd Dirk" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "StartupItem4" /t REG_SZ /d "Torch" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "StartupItem5" /t REG_SZ /d "Torch" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation1" /t REG_SZ /d "Blackblood's Castle" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation1X" /t REG_DWORD /d 0x00000172 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation1Y" /t REG_DWORD /d 0x000006ea /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation1W" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation2" /t REG_SZ /d "Bridge of Lighthaven" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation2X" /t REG_DWORD /d 0x00000ae6 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation2Y" /t REG_DWORD /d 0x00000406 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation2W" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation3" /t REG_SZ /d "Brigand's camp" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation3X" /t REG_DWORD /d 0x0000087a /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation3Y" /t REG_DWORD /d 0x000004d8 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation3W" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation4" /t REG_SZ /d "Castle of Orkanis" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation4X" /t REG_DWORD /d 0x0000062c /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation4Y" /t REG_DWORD /d 0x000000d2 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Characters" /v "TeleportLocation4W" /t REG_DWORD /d 0x00000000 /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Contact" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\ExtensionDLLs" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\GeneralConfig" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Logging" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Network" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Network" /v "SERVER_PORT" /t REG_DWORD /d 0x00002d9d /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Network" /v "SERVER_IP" /t REG_SZ /d "127.0.0.1" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\PatchServers" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\PatchServers" /v "OtherServer1_IP" /t REG_SZ /d "80.8.147.110" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\PatchServers" /v "OtherServer1_Port" /t REG_DWORD /d 0x00002d9f /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\PatchServers" /v "WebPatch_URL" /t REG_SZ /d "kcnt4c2.the4th-coming.com" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Paths" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Paths" /v "BINARY_PATH" /t REG_SZ /d "Z:\\root\\server\\" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Paths" /v "LOG_PATH" /t REG_SZ /d "Z:\\root\\server\\Logs" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\Paths" /v "rootWWWdir" /t REG_SZ /d "Z:\\root\\server\\wwwroot\\" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\PVPDeath" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\UserMan" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\UserMan" /v "rootWWWdir" /t REG_SZ /d "Z:\\root\\server\\wwwroot\\" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\WebPatch" /f >/dev/null 2>&1
wine reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Vircom\The 4th Coming Server\WorldConfig" /f >/dev/null 2>&1
echo "=== Vérification : clés Vircom importées ==="
wine reg query "HKLM\Software\Vircom\The 4th Coming Server\Network" 2>&1 | head -10
