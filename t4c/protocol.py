"""Known T4C packet ids used by the 1.25 compatibility work.

The pre-session subset is confirmed against the legacy server dispatcher.  A
small set of post-auth/menu ids is named as well so real client traces are
immediately readable while their payloads are still being reconstructed.
"""

from __future__ import annotations

from enum import IntEnum


class PacketID(IntEnum):
    # Early gameplay/menu ids from the legacy request table.
    PUT_PLAYER_IN_GAME = 13
    # RQ_PlayerMove : 1-8 = directions, 9 = position. (tfc_main.h original)
    MOVE_NORTH = 1
    MOVE_NORTH_EAST = 2
    MOVE_EAST = 3
    MOVE_SOUTH_EAST = 4
    MOVE_SOUTH = 5
    MOVE_SOUTH_WEST = 6
    MOVE_WEST = 7
    MOVE_NORTH_WEST = 8
    GET_PLAYER_POS = 9
    REGISTER_ACCOUNT = 14
    EXIT_GAME = 20
    CREATE_PLAYER = 25
    GET_PERSONAL_PC_LIST = 26
    TOGGLE_PAGE = 89
    # Données demandées par le client à l'entrée en monde (confirmées par trace réelle).
    DELETE_PLAYER = 15            # RQ_DeletePlayer
    GET_STATUS = 43               # RQ_GetStatus
    GET_SKILL_LIST = 39          # RQ_GetSkillList
    SEND_TRAIN_SKILL_LIST = 40   # RQ_SendTrainSkillList
    GET_NEAR_ITEMS = 60          # RQ_GetNearItems
    GET_ONLINE_PLAYER_LIST = 62  # RQ_GetOnlinePlayerList
    PUPPET_INFORMATION = 68       # RQ_PuppetInformation
    VIEW_BACKPACK = 18            # RQ_ViewBackpack
    VIEW_EQUIPED = 19             # RQ_ViewEquiped
    GET_CHATTER_USER_LIST = 50    # RQ_GetChatterUserList
    GET_CHATTER_CHANNEL_LIST = 75 # RQ_GetChatterChannelList
    # Inventaire / équipement / sorts / skills (RE client 1.25).
    EQUIP_ITEM = 21               # client @0x434C5A : u32 itemUnitId
    UNEQUIP_SLOT = 22             # client @0x434924 : u8 equipSlot
    USE_ITEM = 23                 # client @0x434536 : u16 x, u16 y, u32 itemUnitId
    ITEM_NAME_REQUEST = 59        # client @0x433C7B : u32 itemId
    USE_SPELL_UNIT = 32           # client @0x455BF0 : u16 spellId, u16 x, u16 y, u32 targetUnitId
    USE_SKILL_UNIT = 42           # client @0x415C00 : u16 skillId, u16 x, u16 y, u32 targetUnitId
    LOCAL_TALK_REQUEST = 30       # client -> serveur : u16 x, u16 y, u32 fieldA, u8 dir, u32 style, CString text
    UNIT_TALK = 27                # serveur -> client : parole au-dessus d'une unité
    SERVER_MESSAGE = 63           # serveur -> client : u16 catégorie, u16 style, CString texte
    PICKUP_UNIT = 11              # client @0x47A640 : u16 x, u16 y, u32 unitId (directionnel !)
    DROP_ITEM = 12                # client @0x47A9B0 : u16 x, u16 y, u32 itemUnitId, u32 quantity
    ACTION_FAILURE = 70           # serveur -> client : u32 objectOrUnitId, u16 relatedRequestOpcode
    RETURN_TO_MENU = 38
    GET_TIME = 45
    FROM_PREINGAME_TO_INGAME = 46

    # Pre-session/bootstrap requests.
    QUERY_SERVER_VERSION = 65
    MESSAGE_OF_THE_DAY = 66
    QUERY_NAME_EXISTENCE = 90
    QUERY_PATCH_SERVER_INFO = 91

    # Later bootstrap/menu metadata seen in the legacy request table.
    AUTHENTICATE_SERVER_VERSION = 99
    MAX_CHARACTERS_PER_ACCOUNT_INFO = 103

    # Backwards-compatible alias used by earlier prototype code/docs.
    ENTER_WORLD = FROM_PREINGAME_TO_INGAME


PRE_SESSION_PACKET_IDS = frozenset(
    {
        PacketID.REGISTER_ACCOUNT,
        PacketID.GET_TIME,
        PacketID.QUERY_SERVER_VERSION,
        PacketID.MESSAGE_OF_THE_DAY,
        PacketID.QUERY_NAME_EXISTENCE,
        PacketID.QUERY_PATCH_SERVER_INFO,
    }
)


PACKET_NAMES: dict[int, str] = {
    int(packet_id): packet_id.name for packet_id in PacketID
}


def packet_name(packet_id: int) -> str:
    return PACKET_NAMES.get(packet_id, f"UNKNOWN_{packet_id}")
