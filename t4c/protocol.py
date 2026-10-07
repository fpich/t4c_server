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
