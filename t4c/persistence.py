"""Étape 9 : persistance SQLite du schéma T4C (porté de T4C.mdb original).

Schéma de référence : la base Access `T4C.mdb` du serveur 1.25 original.
Tables portées : T4Cusers (comptes) et PlayingCharacters (personnages).
"""
from __future__ import annotations

import sqlite3
from pathlib import Path

from .characters import Character
from .items import BACKPACK_SLOT, Inventory, Item

SCHEMA = """
CREATE TABLE IF NOT EXISTS T4Cusers (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Account TEXT UNIQUE NOT NULL,
    Password TEXT NOT NULL DEFAULT '',
    Account_type INTEGER NOT NULL DEFAULT 0,
    CreationDate TEXT NOT NULL DEFAULT (datetime('now')),
    RevisionDate TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE TABLE IF NOT EXISTS PlayingCharacters (
    UserID INTEGER NOT NULL,
    PlayerName TEXT UNIQUE NOT NULL,
    AccountName TEXT NOT NULL,
    wlX INTEGER NOT NULL DEFAULT 0,
    wlY INTEGER NOT NULL DEFAULT 0,
    wlWorld INTEGER NOT NULL DEFAULT 0,
    nClass INTEGER NOT NULL DEFAULT 0,
    CurrentHP INTEGER NOT NULL DEFAULT 50,
    MaxHP INTEGER NOT NULL DEFAULT 50,
    CurrentMana INTEGER NOT NULL DEFAULT 30,
    MaxMana INTEGER NOT NULL DEFAULT 30,
    Strength INTEGER NOT NULL DEFAULT 10,
    Endurance INTEGER NOT NULL DEFAULT 10,
    Agility INTEGER NOT NULL DEFAULT 10,
    Intelligence INTEGER NOT NULL DEFAULT 10,
    WillPower INTEGER NOT NULL DEFAULT 10,
    Wisdom INTEGER NOT NULL DEFAULT 10,
    Luck INTEGER NOT NULL DEFAULT 10,
    CurrentLevel INTEGER NOT NULL DEFAULT 1,
    Gold INTEGER NOT NULL DEFAULT 0,
    XP INTEGER NOT NULL DEFAULT 0,
    Gender INTEGER NOT NULL DEFAULT 0,
    Karma INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (UserID) REFERENCES T4Cusers(ID)
);

CREATE TABLE IF NOT EXISTS CharacterItems (
    ItemUnitID INTEGER PRIMARY KEY AUTOINCREMENT,
    CharacterName TEXT NOT NULL,
    TemplateID INTEGER NOT NULL,
    Quantity INTEGER NOT NULL DEFAULT 1,
    EquipSlot INTEGER NOT NULL DEFAULT -1
);
"""


class Persistence:
    """Stockage SQLite des comptes et personnages (schéma T4C.mdb porté)."""

    def __init__(self, path: str | Path = "t4c.sqlite3"):
        self.path = Path(path)
        self._db = sqlite3.connect(self.path)
        self._db.row_factory = sqlite3.Row
        self._db.executescript(SCHEMA)
        self._db.commit()

    def close(self) -> None:
        self._db.close()

    # --- comptes -------------------------------------------------------

    def user_id(self, account: str) -> int | None:
        row = self._db.execute(
            "SELECT ID FROM T4Cusers WHERE Account = ? COLLATE NOCASE",
            (account,),
        ).fetchone()
        return row["ID"] if row else None

    def create_user(self, account: str, password: str = "") -> int:
        cur = self._db.execute(
            "INSERT INTO T4Cusers (Account, Password) VALUES (?, ?)",
            (account, password),
        )
        self._db.commit()
        return cur.lastrowid

    # --- personnages ---------------------------------------------------

    def characters(self, account: str) -> list[Character]:
        rows = self._db.execute(
            "SELECT * FROM PlayingCharacters WHERE AccountName = ? COLLATE NOCASE",
            (account,),
        ).fetchall()
        return [
            Character(
                name=row["PlayerName"],
                race=row["nClass"],
                level=row["CurrentLevel"],
                agi=row["Agility"],
                end=row["Endurance"],
                intelligence=row["Intelligence"],
                strength=row["Strength"],
                wisdom=row["Wisdom"],
                max_hp=row["MaxHP"],
                hp=row["CurrentHP"],
                max_mana=row["MaxMana"],
                mana=row["CurrentMana"],
            )
            for row in rows
        ]

    def character_name_exists(self, name: str) -> bool:
        row = self._db.execute(
            "SELECT 1 FROM PlayingCharacters WHERE PlayerName = ? COLLATE NOCASE",
            (name,),
        ).fetchone()
        return row is not None

    def save_character(self, account: str, character: Character) -> bool:
        if self.character_name_exists(character.name):
            return False
        uid = self.user_id(account)
        if uid is None:
            uid = self.create_user(account)
        self._db.execute(
            """INSERT INTO PlayingCharacters (
                   UserID, PlayerName, AccountName, nClass,
                   CurrentHP, MaxHP, CurrentMana, MaxMana,
                   Strength, Endurance, Agility, Intelligence, Wisdom,
                   CurrentLevel
               ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)""",
            (
                uid,
                character.name,
                account,
                character.race,
                character.hp,
                character.max_hp,
                character.mana,
                character.max_mana,
                character.strength,
                character.end,
                character.agi,
                character.intelligence,
                character.wisdom,
                character.level,
            ),
        )
        self._db.commit()
        return True

    def delete_character(self, name: str) -> bool:
        cur = self._db.execute(
            "DELETE FROM PlayingCharacters WHERE PlayerName = ? COLLATE NOCASE",
            (name,),
        )
        self._db.commit()
        return cur.rowcount > 0

    def save_position(self, name: str, x: int, y: int, world: int) -> None:
        self._db.execute(
            "UPDATE PlayingCharacters SET wlX = ?, wlY = ?, wlWorld = ? "
            "WHERE PlayerName = ? COLLATE NOCASE",
            (x, y, world, name),
        )
        self._db.commit()

    def position(self, name: str) -> tuple[int, int, int] | None:
        row = self._db.execute(
            "SELECT wlX, wlY, wlWorld FROM PlayingCharacters "
            "WHERE PlayerName = ? COLLATE NOCASE",
            (name,),
        ).fetchone()
        return (row["wlX"], row["wlY"], row["wlWorld"]) if row else None

    # --- inventaire ----------------------------------------------------
    def inventory(self, name: str) -> Inventory | None:
        """Reconstruit l'inventaire (sac + équipement) d'un personnage."""
        rows = self._db.execute(
            "SELECT ItemUnitID, TemplateID, Quantity, EquipSlot "
            "FROM CharacterItems WHERE CharacterName = ? COLLATE NOCASE "
            "ORDER BY ItemUnitID",
            (name,),
        ).fetchall()
        if rows is None:
            return None
        inv = Inventory()
        for row in rows:
            item = Item(
                unit_id=row["ItemUnitID"],
                template_id=row["TemplateID"],
                quantity=row["Quantity"],
                equip_slot=row["EquipSlot"],
            )
            if row["EquipSlot"] == BACKPACK_SLOT:
                inv.backpack.append(item)
            else:
                inv.equipment[row["EquipSlot"]] = item
        if rows:
            inv._next_unit_id = max(r["ItemUnitID"] for r in rows) + 1
        return inv

    def save_inventory(self, name: str, inv: Inventory) -> None:
        """Remplace l'inventaire persisté par l'état en mémoire."""
        self._db.execute(
            "DELETE FROM CharacterItems WHERE CharacterName = ? COLLATE NOCASE",
            (name,),
        )
        for item in list(inv.backpack) + list(inv.equipment.values()):
            self._db.execute(
                "INSERT INTO CharacterItems "
                "(CharacterName, TemplateID, Quantity, EquipSlot) "
                "VALUES (?, ?, ?, ?)",
                (name, item.template_id, item.quantity, item.equip_slot),
            )
        self._db.commit()
