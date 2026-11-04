# Table des handlers C2S — RE directe de T4C Server.exe (2026-10-13)

Méthode : la fonction d'init du dispatcher contient une séquence
`push opcode; push handler; call register` (6a XX 68 YY YY YY YY e8).
Scan regex de tout .text -> 79 handlers. ImageBase 0x400000.

| opcode | handler VA | note |
|---|---|---|
| 1 | 0x004C68E0 | move N |
| 2 | 0x004C3EC0 | move NE |
| 3 | 0x004C5EF0 | move E |
| 4 | 0x0047A170 | move SE (StopAutoCombat) |
| 5 | 0x0047A170 | move S (StopAutoCombat) |
| 6 | 0x004C4230 | move SW |
| 7 | 0x004C72D0 | move W |
| 8 | 0x0047A170 | move NW (StopAutoCombat) |
| 9 | 0x004C7910 | GET_PLAYER_POS |
| 10 | 0x004C5630 | ? |
| 11 | 0x004C7430 | PICKUP/GET_UNIT |
| 12 | 0x004C7DF0 | DROP_ITEM |
| 13 | 0x004C52A0 | PUT_PLAYER_IN_GAME |
| 14 | 0x004C5AD0 | REGISTER_ACCOUNT |
| 15 | 0x004C6FD0 | DELETE_PLAYER |
| 16 | 0x004C4F30 | ? |
| 17 | 0x004C4690 | ? |
| 18 | 0x0047E270 | VIEW_BACKPACK |
| 19 | 0x0047E450 | VIEW_EQUIPED |
| 20 | 0x0047E520 | EXIT_GAME |
| 21 | 0x0047E620 | EQUIP_ITEM |
| 22 | 0x0047E770 | UNEQUIP_SLOT |
| 23 | 0x0047E8C0 | USE_ITEM |
| 24 | 0x0047EB30 | attaque distance? (StartAutoCombat) |
| 25 | 0x0047BB20 | CREATE_PLAYER |
| 26 | 0x0047EF80 | GET_PERSONAL_PC_LIST |
| 27 | 0x0047F110 | UNIT_TALK C2S |
| 28 | 0x0047F680 | ? |
| 29 | 0x0047F910 | whisper |
| 30 | 0x0047FC90 | LOCAL_TALK |
| 31 | 0x0047BD90 | ? |
| 32 | 0x00480240 | ATTAQUE/SORT sur unité (StartAutoCombat x2) |
| 33 | 0x00481000 | ? |
| 34 | 0x004804C0 | ? |
| 35 | 0x004805C0 | NPC_NAME req |
| 36 | 0x00480820 | ? |
| 38 | 0x004809E0 | RETURN_TO_MENU |
| 39 | 0x00480B30 | GET_SKILL_LIST |
| 40 | 0x00482360 | TRAIN_SKILL_LIST |
| 41 | 0x00482940 | BUY_ITEMS |
| 42 | 0x00480BF0 | USE_SKILL_UNIT |
| 43 | 0x00480E60 | GET_STATUS |
| 44 | 0x00480F20 | ? |
| 45 | 0x004810E0 | GET_TIME |
| 46 | 0x0047B750 | FROM_PREINGAME_TO_INGAME |
| 48 | 0x004813D0 | ENTER_CHATTER |
| 49 | 0x004816D0 | CHAT msg |
| 50 | 0x00481940 | CHATTER users |
| 51 | 0x00481F20 | LEAVE_CHATTER |
| 52 | 0x00481FB0 | PUBLIC channels |
| 53 | 0x00482080 | TOGGLE listen |
| 54 | 0x00482150 | ? |
| 55 | 0x00482620 | TEACH_SKILL_LIST PNJ |
| 56 | 0x00482C70 | SELL_ITEMS |
| 58 | 0x00482EE0 | ? |
| 59 | 0x00483330 | ITEM_NAME req |
| 60 | 0x00483530 | GET_NEAR_ITEMS |
| 62 | 0x00483650 | ONLINE player list |
| 65 | 0x00483770 | QUERY_SERVER_VERSION |
| 66 | 0x00483920 | MOTD |
| 68 | 0x00483AD0 | PUPPET req |
| 71 | 0x00483CA0 | ? |
| 72 | 0x00483EC0 | ? |
| 74 | 0x00481B00 | ? |
| 75 | 0x00481CD0 | CHANNEL list req |
| 76 | 0x00484000 | ? |
| 77 | 0x00484010 | ? |
| 78 | 0x00484020 | GROUP invite |
| 79 | 0x00484300 | GROUP join |
| 80 | 0x00484420 | GROUP leave |
| 81 | 0x004844C0 | GROUP disband |
| 85 | 0x00484700 | ? |
| 86 | 0x00481DC0 | ? |
| 88 | 0x004845E0 | GROUP autosplit (u8) |
| 89 | 0x00484810 | TOGGLE_PAGE |
| 90 | 0x00484AD0 | NAME_EXISTENCE |
| 91 | 0x00484C50 | PATCH_INFO |
| 93 | 0x00484DF0 | ? |
| 99 | 0x00484EF0 | AUTH version |

## C2S combat (découvert 2026-10-13)

- handler opcode 32 = 0x00480240 appelle Character::StartAutoCombat (0x41FDD0)
  deux fois (0x480304, 0x48035b) : C2S 32 sur une unité hostile = attaque.
- handler opcode 24 = 0x0047EB30 appelle aussi StartAutoCombat (0x47ecf9).
- TFCMAIN::Attack = 0x4722A0 (résolution d'un round : GetCollisionPos,
  GetDODGE/GetATTACK/GetAGI, GAME_RULES::GetBlowPrecision, puis BCMiss 0x40FD90
  ou BCAttack 0x40FCA0).

## C2S groupes

- 78 (0x484020) : CreateGroup + Invite -> S2C 78 (u32 leaderUnitId, CString leaderName)
- 79 (0x484300) : Group::Join
- 80 (0x484420) : Group::Dismiss(character) = quitter
- 81 (0x4844C0) : Group::Dismiss() = dissoudre
- 88 (0x4845E0) : ToggleAutoSplit, lecture u8
