"""Étape 25 : catalogue WDA — déchiffrement, extraction, intégration items/sorts."""

import hashlib
import unittest
from pathlib import Path

from t4c import items as items_mod
from t4c import spells as spells_mod
from tools.wda_decrypt import gen_mask, decrypt

REPO = Path(__file__).resolve().parent.parent
WDA = REPO / "ressources" / "T4C_Server" / "T4C Worlds.WDA"


class WdaCryptoTests(unittest.TestCase):
    def test_mask_sha256_matches_reference(self):
        # Empreinte documentée dans la passe 40 (hypothèse dernier_initial=0).
        mask = gen_mask()
        self.assertEqual(
            hashlib.sha256(mask).hexdigest(),
            "848111896031adfaf1cd4bea25f412530c9261e560615e0663f6524215e44fdd",
        )

    @unittest.skipUnless(WDA.is_file(), "WDA absent")
    def test_decrypt_wda_header_is_readable(self):
        raw = WDA.read_bytes()[:4096]
        dec = decrypt(raw)
        # Le contenu déchiffré contient des définitions textuelles.
        self.assertIn(b"ITEM: ", dec)


class WdaCatalogTests(unittest.TestCase):
    def test_items_catalog_loaded(self):
        # Le CSV extrait du WDA est chargé dans TEMPLATES.
        self.assertIn(10007, items_mod.TEMPLATES)
        self.assertIn("healing", items_mod.TEMPLATES[10007].name.lower())
        self.assertGreater(len(items_mod.TEMPLATES), 100)

    def test_spells_catalog_loaded(self):
        self.assertIn(414, spells_mod.SPELLS)
        self.assertIn("Fire dart", spells_mod.spell_name(414))
        self.assertGreater(len(spells_mod.SPELLS), 500)


if __name__ == "__main__":
    unittest.main()
