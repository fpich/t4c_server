"""Inventaire : catalogue d'objets, sac à dos et équipement.

Formats wire confirmés par RE client 1.25 (passe V3/V5) :
  - S2C 18 BACKPACK : u8 headerFlag, u32 headerValue, u16 count,
    puis par objet u16 templateField, u32 unitId, u16 baseField,
    u32 quantity, u32 uniqueData.
  - S2C 19 EQUIPMENT : u8 rangedAttack puis 13 entrées dans l'ordre
    de slots fixe 0,2,3,4,6,7,8,9,11,12,14,15,1 ;
    par entrée u32 unitId, u16 templateField, u16 baseField, u16 quantity,
    u32 uniqueData, CString displayName.

Le slot 0 correspond à l'arme de mêlée dans l'UI du client.
"""

from __future__ import annotations

from dataclasses import dataclass

# Ordre de slots consommé par le handler client du paquet 19 (@0x49942B).
EQUIPMENT_SLOT_ORDER = (0, 2, 3, 4, 6, 7, 8, 9, 11, 12, 14, 15, 1)

# Slot "sac à dos" dans la persistance.
BACKPACK_SLOT = -1


@dataclass(slots=True)
class ItemTemplate:
    template_id: int
    name: str
    appearance: int      # champ u16 templateField sur le fil
    base_field: int = 0  # champ u16 baseField sur le fil
    price: int = 0
    equip_slot: int | None = None  # None = non équipable


@dataclass(slots=True)
class Item:
    unit_id: int
    template_id: int
    quantity: int = 1
    equip_slot: int = BACKPACK_SLOT  # -1 = dans le sac

    @property
    def template(self) -> ItemTemplate:
        return TEMPLATES[self.template_id]


# Catalogue minimal de développement. Les apparences DOIVENT exister dans
# la table du client (map 0x5B40F0, extraite dans
# docs/reverse-engineering/client-item-appearances.tsv) : une valeur inconnue
# fait silencieusement ignorer l'objet par le client (sac vide).
# Apparence 1 = 64kInvShortSword ; 241 = 64kInvPotion 1.
TEMPLATES: dict[int, ItemTemplate] = {
    1: ItemTemplate(1, "Épée courte", appearance=1, price=50, equip_slot=0),
    2: ItemTemplate(2, "Potion de soin", appearance=241, price=10),
}


class Inventory:
    """Sac + équipement d'un personnage, avec allocation d'unit IDs."""

    def __init__(self) -> None:
        self.backpack: list[Item] = []
        self.equipment: dict[int, Item] = {}  # slot -> Item
        self._next_unit_id = 1

    def _allocate(self) -> int:
        unit_id = self._next_unit_id
        self._next_unit_id += 1
        return unit_id

    def add(self, template_id: int, quantity: int = 1, *, to_backpack: bool = True) -> Item:
        if template_id in TEMPLATES and not _stackable_ok(template_id):
            quantity = 1
        # Empilement : les objets non uniques d'un même template se cumulent.
        for item in self.backpack:
            if item.template_id == template_id:
                item.quantity += quantity
                return item
        item = Item(unit_id=self._allocate(), template_id=template_id, quantity=quantity)
        if to_backpack:
            self.backpack.append(item)
        return item

    def find(self, unit_id: int) -> Item | None:
        for item in self.backpack:
            if item.unit_id == unit_id:
                return item
        for item in self.equipment.values():
            if item.unit_id == unit_id:
                return item
        return None

    def equip(self, unit_id: int) -> bool:
        """Déplace un objet du sac vers son slot d'équipement."""
        item = next((i for i in self.backpack if i.unit_id == unit_id), None)
        if item is None:
            return False
        slot = item.template.equip_slot
        if slot is None or slot not in EQUIPMENT_SLOT_ORDER:
            return False
        # Retire d'abord ce qui occupe le slot.
        if slot in self.equipment:
            previous = self.equipment.pop(slot)
            previous.equip_slot = BACKPACK_SLOT
            self.backpack.append(previous)
        self.backpack.remove(item)
        item.equip_slot = slot
        self.equipment[slot] = item
        return True

    def unequip(self, slot: int) -> bool:
        """Remet l'objet d'un slot dans le sac."""
        item = self.equipment.get(slot)
        if item is None:
            return False
        del self.equipment[slot]
        item.equip_slot = BACKPACK_SLOT
        self.backpack.append(item)
        return True

    def consume(self, unit_id: int, quantity: int = 1) -> bool:
        """Retire `quantity` exemplaires d'un objet du sac."""
        for item in self.backpack:
            if item.unit_id == unit_id:
                if item.quantity < quantity:
                    return False
                item.quantity -= quantity
                if item.quantity <= 0:
                    self.backpack.remove(item)
                return True
        return False


def _stackable_ok(template_id: int) -> bool:
    return True


def starting_inventory() -> Inventory:
    """Inventaire de création : épée courte + 3 potions."""
    inv = Inventory()
    inv.add(1)  # épée courte
    inv.add(2, quantity=3)  # potions de soin
    return inv
