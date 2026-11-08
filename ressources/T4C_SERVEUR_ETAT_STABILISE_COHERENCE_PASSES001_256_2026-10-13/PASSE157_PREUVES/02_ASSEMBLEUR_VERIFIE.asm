; T4C Server(2).exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Preuve opcode FF25 <imm32 IAT> et import PE; concordance GNU et LLVM
; Chaque ligne = une instruction de 6 octets; aucun byte compté avant la passe 155

; Sous-region 0x004CE4A2-0x004CE4FC (90 octets)
004CE4A2: FF 25 14 e5 4d 00  jmp dword ptr [0x004DE514]   ; sxlrt233.dll!?_Tidy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEX_N@Z
004CE4A8: FF 25 dc e4 4d 00  jmp dword ptr [0x004DE4DC]   ; sxlrt233.dll!?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEXI@Z
004CE4AE: FF 25 e0 e4 4d 00  jmp dword ptr [0x004DE4E0]   ; sxlrt233.dll!?_Grow@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAE_NI_N@Z
004CE4B4: FF 25 e4 e4 4d 00  jmp dword ptr [0x004DE4E4]   ; sxlrt233.dll!?_Freeze@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEXXZ
004CE4BA: FF 25 e8 e4 4d 00  jmp dword ptr [0x004DE4E8]   ; sxlrt233.dll!?_Xran@_String_base@std@@QBEXXZ
004CE4C0: FF 25 f0 e4 4d 00  jmp dword ptr [0x004DE4F0]   ; sxlrt233.dll!??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ
004CE4C6: FF 25 f4 e4 4d 00  jmp dword ptr [0x004DE4F4]   ; sxlrt233.dll!?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@PBDI@Z
004CE4CC: FF 25 f8 e4 4d 00  jmp dword ptr [0x004DE4F8]   ; sxlrt233.dll!??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ
004CE4D2: FF 25 fc e4 4d 00  jmp dword ptr [0x004DE4FC]   ; sxlrt233.dll!?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@ABV12@II@Z
004CE4D8: FF 25 00 e5 4d 00  jmp dword ptr [0x004DE500]   ; sxlrt233.dll!?_Inside@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAE_NPBD@Z
004CE4DE: FF 25 04 e5 4d 00  jmp dword ptr [0x004DE504]   ; sxlrt233.dll!?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@ABV12@II@Z
004CE4E4: FF 25 08 e5 4d 00  jmp dword ptr [0x004DE508]   ; sxlrt233.dll!?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@PBDI@Z
004CE4EA: FF 25 0c e5 4d 00  jmp dword ptr [0x004DE50C]   ; sxlrt233.dll!??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@PBD@Z
004CE4F0: FF 25 10 e5 4d 00  jmp dword ptr [0x004DE510]   ; sxlrt233.dll!??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@ABV01@@Z
004CE4F6: FF 25 d4 e4 4d 00  jmp dword ptr [0x004DE4D4]   ; sxlrt233.dll!?erase@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@II@Z

; Sous-region 0x004CE512-0x004CE53C (42 octets)
004CE512: FF 25 18 e5 4d 00  jmp dword ptr [0x004DE518]   ; sxlrt233.dll!??Mstd@@YA_NABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z
004CE518: FF 25 1c e5 4d 00  jmp dword ptr [0x004DE51C]   ; sxlrt233.dll!?deallocate@?$allocator@D@std@@QAEXPAXI@Z
004CE51E: FF 25 20 e5 4d 00  jmp dword ptr [0x004DE520]   ; sxlrt233.dll!?_Refcnt@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEAAEPBD@Z
004CE524: FF 25 24 e5 4d 00  jmp dword ptr [0x004DE524]   ; sxlrt233.dll!?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEPBDXZ
004CE52A: FF 25 28 e5 4d 00  jmp dword ptr [0x004DE528]   ; sxlrt233.dll!??9std@@YA_NABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z
004CE530: FF 25 2c e5 4d 00  jmp dword ptr [0x004DE52C]   ; sxlrt233.dll!??8std@@YA_NABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@PBD@Z
004CE536: FF 25 30 e5 4d 00  jmp dword ptr [0x004DE530]   ; sxlrt233.dll!?_Xlen@_String_base@std@@QBEXXZ

; Sous-region 0x004CE542-0x004CE566 (36 octets)
004CE542: FF 25 38 e5 4d 00  jmp dword ptr [0x004DE538]   ; sxlrt233.dll!?substr@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBE?AV12@II@Z
004CE548: FF 25 3c e5 4d 00  jmp dword ptr [0x004DE53C]   ; sxlrt233.dll!??8std@@YA_NPBDABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@@Z
004CE54E: FF 25 40 e5 4d 00  jmp dword ptr [0x004DE540]   ; sxlrt233.dll!?_Copy@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AAEXI@Z
004CE554: FF 25 44 e5 4d 00  jmp dword ptr [0x004DE544]   ; sxlrt233.dll!?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEIXZ
004CE55A: FF 25 48 e5 4d 00  jmp dword ptr [0x004DE548]   ; sxlrt233.dll!??8std@@YA_NABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z
004CE560: FF 25 4c e5 4d 00  jmp dword ptr [0x004DE54C]   ; sxlrt233.dll!??9std@@YA_NABV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@PBD@Z

; Sous-region 0x004D1C8A-0x004D1CA8 (30 octets)
004D1C8A: FF 25 7c e3 4d 00  jmp dword ptr [0x004DE37C]   ; MSVCRT.dll!memmove
004D1C90: FF 25 8c e3 4d 00  jmp dword ptr [0x004DE38C]   ; MSVCRT.dll!asctime
004D1C96: FF 25 90 e3 4d 00  jmp dword ptr [0x004DE390]   ; MSVCRT.dll!localtime
004D1C9C: FF 25 78 e3 4d 00  jmp dword ptr [0x004DE378]   ; MSVCRT.dll!time
004D1CA2: FF 25 74 e3 4d 00  jmp dword ptr [0x004DE374]   ; MSVCRT.dll!_vsnprintf

; Sous-region 0x004D1D1E-0x004D1D24 (6 octets)
004D1D1E: FF 25 70 e3 4d 00  jmp dword ptr [0x004DE370]   ; MSVCRT.dll!vsprintf

; Sous-region 0x004D1D5C-0x004D1D7A (30 octets)
004D1D5C: FF 25 64 e3 4d 00  jmp dword ptr [0x004DE364]   ; MSVCRT.dll!??1exception@@UAE@XZ
004D1D62: FF 25 60 e3 4d 00  jmp dword ptr [0x004DE360]   ; MSVCRT.dll!??0exception@@QAE@ABQBD@Z
004D1D68: FF 25 5c e3 4d 00  jmp dword ptr [0x004DE35C]   ; MSVCRT.dll!_beginthreadex
004D1D6E: FF 25 58 e3 4d 00  jmp dword ptr [0x004DE358]   ; MSVCRT.dll!_beginthread
004D1D74: FF 25 54 e3 4d 00  jmp dword ptr [0x004DE354]   ; MSVCRT.dll!isdigit

; Sous-region 0x004D1D86-0x004D1D8C (6 octets)
004D1D86: FF 25 48 e3 4d 00  jmp dword ptr [0x004DE348]   ; MSVCRT.dll!isalpha

; Sous-region 0x004D1E0E-0x004D1E14 (6 octets)
004D1E0E: FF 25 44 e3 4d 00  jmp dword ptr [0x004DE344]   ; MSVCRT.dll!sprintf

; Sous-region 0x004D1E42-0x004D1E60 (30 octets)
004D1E42: FF 25 40 e3 4d 00  jmp dword ptr [0x004DE340]   ; MSVCRT.dll!exit
004D1E48: FF 25 3c e3 4d 00  jmp dword ptr [0x004DE33C]   ; MSVCRT.dll!fclose
004D1E4E: FF 25 38 e3 4d 00  jmp dword ptr [0x004DE338]   ; MSVCRT.dll!fprintf
004D1E54: FF 25 34 e3 4d 00  jmp dword ptr [0x004DE334]   ; MSVCRT.dll!fopen
004D1E5A: FF 25 30 e3 4d 00  jmp dword ptr [0x004DE330]   ; MSVCRT.dll!_snprintf

; Sous-region 0x004D1F0A-0x004D1F52 (72 octets)
004D1F0A: FF 25 2c e3 4d 00  jmp dword ptr [0x004DE32C]   ; MSVCRT.dll!ftell
004D1F10: FF 25 28 e3 4d 00  jmp dword ptr [0x004DE328]   ; MSVCRT.dll!fgetc
004D1F16: FF 25 24 e3 4d 00  jmp dword ptr [0x004DE324]   ; MSVCRT.dll!fseek
004D1F1C: FF 25 20 e3 4d 00  jmp dword ptr [0x004DE320]   ; MSVCRT.dll!strchr
004D1F22: FF 25 1c e3 4d 00  jmp dword ptr [0x004DE31C]   ; MSVCRT.dll!_wcsicmp
004D1F28: FF 25 18 e3 4d 00  jmp dword ptr [0x004DE318]   ; MSVCRT.dll!signal
004D1F2E: FF 25 88 e3 4d 00  jmp dword ptr [0x004DE388]   ; MSVCRT.dll!printf
004D1F34: FF 25 14 e3 4d 00  jmp dword ptr [0x004DE314]   ; MSVCRT.dll!atoi
004D1F3A: FF 25 10 e3 4d 00  jmp dword ptr [0x004DE310]   ; MSVCRT.dll!memchr
004D1F40: FF 25 94 e2 4d 00  jmp dword ptr [0x004DE294]   ; MSVCRT.dll!malloc
004D1F46: FF 25 08 e3 4d 00  jmp dword ptr [0x004DE308]   ; MSVCRT.dll!free
004D1F4C: FF 25 04 e3 4d 00  jmp dword ptr [0x004DE304]   ; MSVCRT.dll!toupper

; Sous-region 0x004D1F94-0x004D1FA0 (12 octets)
004D1F94: FF 25 00 e3 4d 00  jmp dword ptr [0x004DE300]   ; MSVCRT.dll!_strtime
004D1F9A: FF 25 fc e2 4d 00  jmp dword ptr [0x004DE2FC]   ; MSVCRT.dll!vswprintf

; Sous-region 0x004D1FC0-0x004D1FC6 (6 octets)
004D1FC0: FF 25 f8 e2 4d 00  jmp dword ptr [0x004DE2F8]   ; MSVCRT.dll!difftime

; Sous-region 0x004D2070-0x004D208E (30 octets)
004D2070: FF 25 f4 e2 4d 00  jmp dword ptr [0x004DE2F4]   ; MSVCRT.dll!strtok
004D2076: FF 25 f0 e2 4d 00  jmp dword ptr [0x004DE2F0]   ; MSVCRT.dll!_atoi64
004D207C: FF 25 ec e2 4d 00  jmp dword ptr [0x004DE2EC]   ; MSVCRT.dll!ctime
004D2082: FF 25 e8 e2 4d 00  jmp dword ptr [0x004DE2E8]   ; MSVCRT.dll!fputc
004D2088: FF 25 e4 e2 4d 00  jmp dword ptr [0x004DE2E4]   ; MSVCRT.dll!_stricmp

; Sous-region 0x004D21A4-0x004D21BC (24 octets)
004D21A4: FF 25 dc e2 4d 00  jmp dword ptr [0x004DE2DC]   ; MSVCRT.dll!srand
004D21AA: FF 25 d8 e2 4d 00  jmp dword ptr [0x004DE2D8]   ; MSVCRT.dll!rand
004D21B0: FF 25 d4 e2 4d 00  jmp dword ptr [0x004DE2D4]   ; MSVCRT.dll!atol
004D21B6: FF 25 d0 e2 4d 00  jmp dword ptr [0x004DE2D0]   ; MSVCRT.dll!strncpy

; Sous-region 0x004D21D4-0x004D21DA (6 octets)
004D21D4: FF 25 0c e3 4d 00  jmp dword ptr [0x004DE30C]   ; MSVCRT.dll!_exit

; Sous-region 0x004D21E0-0x004D21EC (12 octets)
004D21E0: FF 25 9c e2 4d 00  jmp dword ptr [0x004DE29C]   ; MSVCRT.dll!__p___initenv
004D21E6: FF 25 a0 e2 4d 00  jmp dword ptr [0x004DE2A0]   ; MSVCRT.dll!__getmainargs

; Sous-region 0x004D2204-0x004D220A (6 octets)
004D2204: FF 25 94 e3 4d 00  jmp dword ptr [0x004DE394]   ; MSVCRT.dll!__setusermatherr

; Sous-region 0x004D220E-0x004D2220 (18 octets)
004D220E: FF 25 b0 e2 4d 00  jmp dword ptr [0x004DE2B0]   ; MSVCRT.dll!__p__commode
004D2214: FF 25 b4 e2 4d 00  jmp dword ptr [0x004DE2B4]   ; MSVCRT.dll!__p__fmode
004D221A: FF 25 b8 e2 4d 00  jmp dword ptr [0x004DE2B8]   ; MSVCRT.dll!__set_app_type

; Sous-region 0x004D2226-0x004D2502 (732 octets)
004D2226: FF 25 dc e0 4d 00  jmp dword ptr [0x004DE0DC]   ; KERNEL32.dll!InitializeCriticalSection
004D222C: FF 25 e0 e0 4d 00  jmp dword ptr [0x004DE0E0]   ; KERNEL32.dll!DeleteCriticalSection
004D2232: FF 25 e4 e0 4d 00  jmp dword ptr [0x004DE0E4]   ; KERNEL32.dll!GetLocalTime
004D2238: FF 25 e8 e0 4d 00  jmp dword ptr [0x004DE0E8]   ; KERNEL32.dll!InterlockedDecrement
004D223E: FF 25 ec e0 4d 00  jmp dword ptr [0x004DE0EC]   ; KERNEL32.dll!GetLastError
004D2244: FF 25 f0 e0 4d 00  jmp dword ptr [0x004DE0F0]   ; KERNEL32.dll!MultiByteToWideChar
004D224A: FF 25 f4 e0 4d 00  jmp dword ptr [0x004DE0F4]   ; KERNEL32.dll!lstrlenA
004D2250: FF 25 f8 e0 4d 00  jmp dword ptr [0x004DE0F8]   ; KERNEL32.dll!EnterCriticalSection
004D2256: FF 25 fc e0 4d 00  jmp dword ptr [0x004DE0FC]   ; KERNEL32.dll!LeaveCriticalSection
004D225C: FF 25 00 e1 4d 00  jmp dword ptr [0x004DE100]   ; KERNEL32.dll!TryEnterCriticalSection
004D2262: FF 25 04 e1 4d 00  jmp dword ptr [0x004DE104]   ; KERNEL32.dll!ResumeThread
004D2268: FF 25 08 e1 4d 00  jmp dword ptr [0x004DE108]   ; KERNEL32.dll!CreateIoCompletionPort
004D226E: FF 25 0c e1 4d 00  jmp dword ptr [0x004DE10C]   ; KERNEL32.dll!PostQueuedCompletionStatus
004D2274: FF 25 10 e1 4d 00  jmp dword ptr [0x004DE110]   ; KERNEL32.dll!GetQueuedCompletionStatus
004D227A: FF 25 14 e1 4d 00  jmp dword ptr [0x004DE114]   ; KERNEL32.dll!GetCurrentThreadId
004D2280: FF 25 18 e1 4d 00  jmp dword ptr [0x004DE118]   ; KERNEL32.dll!TerminateThread
004D2286: FF 25 1c e1 4d 00  jmp dword ptr [0x004DE11C]   ; KERNEL32.dll!WaitForSingleObject
004D228C: FF 25 20 e1 4d 00  jmp dword ptr [0x004DE120]   ; KERNEL32.dll!Sleep
004D2292: FF 25 24 e1 4d 00  jmp dword ptr [0x004DE124]   ; KERNEL32.dll!lstrcpyA
004D2298: FF 25 28 e1 4d 00  jmp dword ptr [0x004DE128]   ; KERNEL32.dll!CreateEventA
004D229E: FF 25 2c e1 4d 00  jmp dword ptr [0x004DE12C]   ; KERNEL32.dll!SetEvent
004D22A4: FF 25 30 e1 4d 00  jmp dword ptr [0x004DE130]   ; KERNEL32.dll!SuspendThread
004D22AA: FF 25 38 e1 4d 00  jmp dword ptr [0x004DE138]   ; KERNEL32.dll!CloseHandle
004D22B0: FF 25 3c e1 4d 00  jmp dword ptr [0x004DE13C]   ; KERNEL32.dll!ResetEvent
004D22B6: FF 25 40 e1 4d 00  jmp dword ptr [0x004DE140]   ; KERNEL32.dll!CancelIo
004D22BC: FF 25 44 e1 4d 00  jmp dword ptr [0x004DE144]   ; KERNEL32.dll!SetThreadPriority
004D22C2: FF 25 48 e1 4d 00  jmp dword ptr [0x004DE148]   ; KERNEL32.dll!GetThreadPriority
004D22C8: FF 25 4c e1 4d 00  jmp dword ptr [0x004DE14C]   ; KERNEL32.dll!GetThreadContext
004D22CE: FF 25 50 e1 4d 00  jmp dword ptr [0x004DE150]   ; KERNEL32.dll!InterlockedIncrement
004D22D4: FF 25 54 e1 4d 00  jmp dword ptr [0x004DE154]   ; KERNEL32.dll!ReleaseMutex
004D22DA: FF 25 58 e1 4d 00  jmp dword ptr [0x004DE158]   ; KERNEL32.dll!MapViewOfFile
004D22E0: FF 25 5c e1 4d 00  jmp dword ptr [0x004DE15C]   ; KERNEL32.dll!CreateFileMappingA
004D22E6: FF 25 60 e1 4d 00  jmp dword ptr [0x004DE160]   ; KERNEL32.dll!CreateMutexA
004D22EC: FF 25 64 e1 4d 00  jmp dword ptr [0x004DE164]   ; KERNEL32.dll!UnmapViewOfFile
004D22F2: FF 25 68 e1 4d 00  jmp dword ptr [0x004DE168]   ; KERNEL32.dll!GetCurrentProcessId
004D22F8: FF 25 6c e1 4d 00  jmp dword ptr [0x004DE16C]   ; KERNEL32.dll!GetTimeZoneInformation
004D22FE: FF 25 70 e1 4d 00  jmp dword ptr [0x004DE170]   ; KERNEL32.dll!LocalFree
004D2304: FF 25 74 e1 4d 00  jmp dword ptr [0x004DE174]   ; KERNEL32.dll!FormatMessageA
004D230A: FF 25 78 e1 4d 00  jmp dword ptr [0x004DE178]   ; KERNEL32.dll!GetExitCodeThread
004D2310: FF 25 7c e1 4d 00  jmp dword ptr [0x004DE17C]   ; KERNEL32.dll!TerminateProcess
004D2316: FF 25 80 e1 4d 00  jmp dword ptr [0x004DE180]   ; KERNEL32.dll!GetCurrentProcess
004D231C: FF 25 84 e1 4d 00  jmp dword ptr [0x004DE184]   ; KERNEL32.dll!GlobalFree
004D2322: FF 25 88 e1 4d 00  jmp dword ptr [0x004DE188]   ; KERNEL32.dll!GetCommandLineA
004D2328: FF 25 8c e1 4d 00  jmp dword ptr [0x004DE18C]   ; KERNEL32.dll!DeleteFileA
004D232E: FF 25 90 e1 4d 00  jmp dword ptr [0x004DE190]   ; KERNEL32.dll!SetProcessAffinityMask
004D2334: FF 25 94 e1 4d 00  jmp dword ptr [0x004DE194]   ; KERNEL32.dll!GetProcessAffinityMask
004D233A: FF 25 98 e1 4d 00  jmp dword ptr [0x004DE198]   ; KERNEL32.dll!CreateDirectoryA
004D2340: FF 25 ac e1 4d 00  jmp dword ptr [0x004DE1AC]   ; KERNEL32.dll!GetModuleFileNameA
004D2346: FF 25 a0 e1 4d 00  jmp dword ptr [0x004DE1A0]   ; KERNEL32.dll!GetModuleHandleA
004D234C: FF 25 a4 e1 4d 00  jmp dword ptr [0x004DE1A4]   ; KERNEL32.dll!GetComputerNameA
004D2352: FF 25 34 e1 4d 00  jmp dword ptr [0x004DE134]   ; KERNEL32.dll!SetUnhandledExceptionFilter
004D2358: FF 25 a8 e1 4d 00  jmp dword ptr [0x004DE1A8]   ; KERNEL32.dll!SetErrorMode
004D235E: FF 25 68 e0 4d 00  jmp dword ptr [0x004DE068]   ; KERNEL32.dll!GetCurrentThread
004D2364: FF 25 9c e1 4d 00  jmp dword ptr [0x004DE19C]   ; KERNEL32.dll!CreateNamedPipeA
004D236A: FF 25 d8 e0 4d 00  jmp dword ptr [0x004DE0D8]   ; KERNEL32.dll!GetOverlappedResult
004D2370: FF 25 d4 e0 4d 00  jmp dword ptr [0x004DE0D4]   ; KERNEL32.dll!ReadFile
004D2376: FF 25 d0 e0 4d 00  jmp dword ptr [0x004DE0D0]   ; KERNEL32.dll!WriteFile
004D237C: FF 25 cc e0 4d 00  jmp dword ptr [0x004DE0CC]   ; KERNEL32.dll!ConnectNamedPipe
004D2382: FF 25 c8 e0 4d 00  jmp dword ptr [0x004DE0C8]   ; KERNEL32.dll!DisconnectNamedPipe
004D2388: FF 25 c4 e0 4d 00  jmp dword ptr [0x004DE0C4]   ; KERNEL32.dll!FreeLibrary
004D238E: FF 25 c0 e0 4d 00  jmp dword ptr [0x004DE0C0]   ; KERNEL32.dll!GetSystemInfo
004D2394: FF 25 bc e0 4d 00  jmp dword ptr [0x004DE0BC]   ; KERNEL32.dll!OutputDebugStringA
004D239A: FF 25 b8 e0 4d 00  jmp dword ptr [0x004DE0B8]   ; KERNEL32.dll!LocalAlloc
004D23A0: FF 25 b4 e0 4d 00  jmp dword ptr [0x004DE0B4]   ; KERNEL32.dll!InterlockedExchange
004D23A6: FF 25 b0 e0 4d 00  jmp dword ptr [0x004DE0B0]   ; KERNEL32.dll!LoadLibraryA
004D23AC: FF 25 ac e0 4d 00  jmp dword ptr [0x004DE0AC]   ; KERNEL32.dll!WideCharToMultiByte
004D23B2: FF 25 a8 e0 4d 00  jmp dword ptr [0x004DE0A8]   ; KERNEL32.dll!GetProcAddress
004D23B8: FF 25 a4 e0 4d 00  jmp dword ptr [0x004DE0A4]   ; KERNEL32.dll!GetFileSize
004D23BE: FF 25 a0 e0 4d 00  jmp dword ptr [0x004DE0A0]   ; KERNEL32.dll!CreateFileA
004D23C4: FF 25 9c e0 4d 00  jmp dword ptr [0x004DE09C]   ; KERNEL32.dll!GetTickCount
004D23CA: FF 25 98 e0 4d 00  jmp dword ptr [0x004DE098]   ; KERNEL32.dll!GlobalMemoryStatus
004D23D0: FF 25 94 e0 4d 00  jmp dword ptr [0x004DE094]   ; KERNEL32.dll!lstrcatA
004D23D6: FF 25 90 e0 4d 00  jmp dword ptr [0x004DE090]   ; KERNEL32.dll!IsBadCodePtr
004D23DC: FF 25 8c e0 4d 00  jmp dword ptr [0x004DE08C]   ; KERNEL32.dll!SetFilePointer
004D23E2: FF 25 88 e0 4d 00  jmp dword ptr [0x004DE088]   ; KERNEL32.dll!VirtualQuery
004D23E8: FF 25 84 e0 4d 00  jmp dword ptr [0x004DE084]   ; KERNEL32.dll!GetProcessHeap
004D23EE: FF 25 80 e0 4d 00  jmp dword ptr [0x004DE080]   ; KERNEL32.dll!FileTimeToSystemTime
004D23F4: FF 25 7c e0 4d 00  jmp dword ptr [0x004DE07C]   ; KERNEL32.dll!FileTimeToLocalFileTime
004D23FA: FF 25 78 e0 4d 00  jmp dword ptr [0x004DE078]   ; KERNEL32.dll!FindClose
004D2400: FF 25 74 e0 4d 00  jmp dword ptr [0x004DE074]   ; KERNEL32.dll!FindFirstFileA
004D2406: FF 25 70 e0 4d 00  jmp dword ptr [0x004DE070]   ; KERNEL32.dll!IsBadReadPtr
004D240C: FF 25 6c e0 4d 00  jmp dword ptr [0x004DE06C]   ; KERNEL32.dll!lstrcpynA
004D2412: FF 25 64 e4 4d 00  jmp dword ptr [0x004DE464]   ; USER32.dll!MessageBoxA
004D2418: FF 25 60 e4 4d 00  jmp dword ptr [0x004DE460]   ; USER32.dll!MessageBeep
004D241E: FF 25 5c e4 4d 00  jmp dword ptr [0x004DE45C]   ; USER32.dll!wsprintfA
004D2424: FF 25 68 e4 4d 00  jmp dword ptr [0x004DE468]   ; USER32.dll!IsCharAlphaNumericA
004D242A: FF 25 04 e0 4d 00  jmp dword ptr [0x004DE004]   ; ADVAPI32.dll!StartServiceCtrlDispatcherA
004D2430: FF 25 0c e0 4d 00  jmp dword ptr [0x004DE00C]   ; ADVAPI32.dll!RegisterServiceCtrlHandlerA
004D2436: FF 25 10 e0 4d 00  jmp dword ptr [0x004DE010]   ; ADVAPI32.dll!SetServiceStatus
004D243C: FF 25 14 e0 4d 00  jmp dword ptr [0x004DE014]   ; ADVAPI32.dll!CloseServiceHandle
004D2442: FF 25 18 e0 4d 00  jmp dword ptr [0x004DE018]   ; ADVAPI32.dll!CreateServiceA
004D2448: FF 25 1c e0 4d 00  jmp dword ptr [0x004DE01C]   ; ADVAPI32.dll!OpenSCManagerA
004D244E: FF 25 20 e0 4d 00  jmp dword ptr [0x004DE020]   ; ADVAPI32.dll!DeleteService
004D2454: FF 25 24 e0 4d 00  jmp dword ptr [0x004DE024]   ; ADVAPI32.dll!ControlService
004D245A: FF 25 30 e0 4d 00  jmp dword ptr [0x004DE030]   ; ADVAPI32.dll!OpenServiceA
004D2460: FF 25 3c e0 4d 00  jmp dword ptr [0x004DE03C]   ; ADVAPI32.dll!RegCloseKey
004D2466: FF 25 38 e0 4d 00  jmp dword ptr [0x004DE038]   ; ADVAPI32.dll!RegCreateKeyExA
004D246C: FF 25 34 e0 4d 00  jmp dword ptr [0x004DE034]   ; ADVAPI32.dll!RegOpenKeyExA
004D2472: FF 25 08 e0 4d 00  jmp dword ptr [0x004DE008]   ; ADVAPI32.dll!RegSetValueExA
004D2478: FF 25 00 e0 4d 00  jmp dword ptr [0x004DE000]   ; ADVAPI32.dll!RegQueryValueExA
004D247E: FF 25 2c e0 4d 00  jmp dword ptr [0x004DE02C]   ; ADVAPI32.dll!RegDeleteValueA
004D2484: FF 25 28 e0 4d 00  jmp dword ptr [0x004DE028]   ; ADVAPI32.dll!RegDeleteKeyA
004D248A: FF 25 38 e4 4d 00  jmp dword ptr [0x004DE438]   ; SHELL32.dll!CommandLineToArgvW
004D2490: FF 25 bc e4 4d 00  jmp dword ptr [0x004DE4BC]   ; ole32.dll!OleInitialize
004D2496: FF 25 b8 e4 4d 00  jmp dword ptr [0x004DE4B8]   ; ole32.dll!OleRun
004D249C: FF 25 cc e4 4d 00  jmp dword ptr [0x004DE4CC]   ; ole32.dll!CoCreateInstance
004D24A2: FF 25 c8 e4 4d 00  jmp dword ptr [0x004DE4C8]   ; ole32.dll!CLSIDFromProgID
004D24A8: FF 25 c4 e4 4d 00  jmp dword ptr [0x004DE4C4]   ; ole32.dll!CLSIDFromString
004D24AE: FF 25 b0 e4 4d 00  jmp dword ptr [0x004DE4B0]   ; ole32.dll!CoUninitialize
004D24B4: FF 25 b4 e4 4d 00  jmp dword ptr [0x004DE4B4]   ; ole32.dll!CoInitialize
004D24BA: FF 25 c0 e4 4d 00  jmp dword ptr [0x004DE4C0]   ; ole32.dll!OleUninitialize
004D24C0: FF 25 14 e4 4d 00  jmp dword ptr [0x004DE414]   ; OLEAUT32.dll!ordinal 6
004D24C6: FF 25 20 e4 4d 00  jmp dword ptr [0x004DE420]   ; OLEAUT32.dll!ordinal 150
004D24CC: FF 25 00 e4 4d 00  jmp dword ptr [0x004DE400]   ; OLEAUT32.dll!ordinal 149
004D24D2: FF 25 18 e4 4d 00  jmp dword ptr [0x004DE418]   ; OLEAUT32.dll!ordinal 9
004D24D8: FF 25 04 e4 4d 00  jmp dword ptr [0x004DE404]   ; OLEAUT32.dll!ordinal 8
004D24DE: FF 25 28 e4 4d 00  jmp dword ptr [0x004DE428]   ; OLEAUT32.dll!ordinal 7
004D24E4: FF 25 10 e4 4d 00  jmp dword ptr [0x004DE410]   ; OLEAUT32.dll!ordinal 22
004D24EA: FF 25 30 e4 4d 00  jmp dword ptr [0x004DE430]   ; OLEAUT32.dll!ordinal 21
004D24F0: FF 25 24 e4 4d 00  jmp dword ptr [0x004DE424]   ; OLEAUT32.dll!ordinal 10
004D24F6: FF 25 2c e4 4d 00  jmp dword ptr [0x004DE42C]   ; OLEAUT32.dll!ordinal 24
004D24FC: FF 25 1c e4 4d 00  jmp dword ptr [0x004DE41C]   ; OLEAUT32.dll!ordinal 23

; Sous-region 0x004D2E20-0x004D2E92 (114 octets)
004D2E20: FF 25 44 e0 4d 00  jmp dword ptr [0x004DE044]   ; IMAGEHLP.dll!SymCleanup
004D2E26: FF 25 48 e0 4d 00  jmp dword ptr [0x004DE048]   ; IMAGEHLP.dll!SymGetSymFromAddr
004D2E2C: FF 25 4c e0 4d 00  jmp dword ptr [0x004DE04C]   ; IMAGEHLP.dll!StackWalk
004D2E32: FF 25 50 e0 4d 00  jmp dword ptr [0x004DE050]   ; IMAGEHLP.dll!SymFunctionTableAccess
004D2E38: FF 25 54 e0 4d 00  jmp dword ptr [0x004DE054]   ; IMAGEHLP.dll!SymGetModuleBase
004D2E3E: FF 25 58 e0 4d 00  jmp dword ptr [0x004DE058]   ; IMAGEHLP.dll!SymInitialize
004D2E44: FF 25 5c e0 4d 00  jmp dword ptr [0x004DE05C]   ; IMAGEHLP.dll!SymSetOptions
004D2E4A: FF 25 98 e3 4d 00  jmp dword ptr [0x004DE398]   ; MSVCRT.dll!wcslen
004D2E50: FF 25 9c e3 4d 00  jmp dword ptr [0x004DE39C]   ; MSVCRT.dll!_getch
004D2E56: FF 25 a0 e3 4d 00  jmp dword ptr [0x004DE3A0]   ; MSVCRT.dll!_kbhit
004D2E5C: FF 25 a4 e3 4d 00  jmp dword ptr [0x004DE3A4]   ; MSVCRT.dll!_itoa
004D2E62: FF 25 a8 e3 4d 00  jmp dword ptr [0x004DE3A8]   ; MSVCRT.dll!_strupr
004D2E68: FF 25 ac e3 4d 00  jmp dword ptr [0x004DE3AC]   ; MSVCRT.dll!_strnicmp
004D2E6E: FF 25 64 e0 4d 00  jmp dword ptr [0x004DE064]   ; KERNEL32.dll!lstrlenW
004D2E74: FF 25 f8 e3 4d 00  jmp dword ptr [0x004DE3F8]   ; OLEAUT32.dll!ordinal 200
004D2E7A: FF 25 fc e3 4d 00  jmp dword ptr [0x004DE3FC]   ; OLEAUT32.dll!ordinal 201
004D2E80: FF 25 f4 e3 4d 00  jmp dword ptr [0x004DE3F4]   ; OLEAUT32.dll!ordinal 12
004D2E86: FF 25 0c e4 4d 00  jmp dword ptr [0x004DE40C]   ; OLEAUT32.dll!ordinal 202
004D2E8C: FF 25 08 e4 4d 00  jmp dword ptr [0x004DE408]   ; OLEAUT32.dll!ordinal 2

