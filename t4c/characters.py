"""In-memory character storage for the T4C 1.25 development server.

Characters are keyed by account.  The wire-visible fields (name, race, level)
match what the original server serializes in RQ_GetPersonnalPClist.  Stats are
minimal but follow the Character::packet_stats layout used by RQ_CreatePlayer.
"""
from __future__ import annotations

from dataclasses import dataclass, field


@dataclass(slots=True)
class Character:
    name: str
    race: int = 0
    level: int = 1
    # packet_stats layout: AGI, END, INT, luck, STR, wil, WIS.
    agi: int = 10
    end: int = 10
    intelligence: int = 10
    strength: int = 10
    wisdom: int = 10
    max_hp: int = 50
    hp: int = 50
    max_mana: int = 30
    mana: int = 30
    answers: tuple[int, ...] = ()


@dataclass(slots=True)
class CharacterStore:
    max_per_account: int = 3
    _by_account: dict[str, list[Character]] = field(default_factory=dict)

    def characters(self, account: str) -> list[Character]:
        return self._by_account.get(account.casefold(), [])

    def all_names(self) -> set[str]:
        return {
            character.name.casefold()
            for characters in self._by_account.values()
            for character in characters
        }

    def name_exists(self, name: str) -> bool:
        return name.casefold() in self.all_names()

    def create(self, account: str, character: Character) -> bool:
        characters = self._by_account.setdefault(account.casefold(), [])
        if len(characters) >= self.max_per_account:
            return False
        if self.name_exists(character.name):
            return False
        characters.append(character)
        return True
