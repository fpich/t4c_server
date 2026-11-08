"""Étape 33 (PLAN 2.1) : carte réelle depuis PCX + maps.dat."""

import unittest
from pathlib import Path

from t4c.map_parser import MapParser, load_real_collision, MapRegion
from t4c.maps import WorldMap


class TestMapParser(unittest.TestCase):
    """Tests du parseur de cartes PCX + maps.dat."""

    def setUp(self):
        self.pcx_dir = Path(__file__).parent.parent / "ressources" / "t4c_client_fr" / "Maps"
        self.maps_dat = Path(__file__).parent.parent / "ressources" / "t4c_client_fr" / "Game Files" / "maps.dat"

    def test_load_maps_dat(self):
        """maps.dat se charge correctement."""
        parser = MapParser(maps_dat_path=self.maps_dat, pcx_dir=self.pcx_dir)
        self.assertGreater(len(parser.regions), 60)

    def test_find_region_althea(self):
        """On trouve la région Althea dans le monde 0."""
        parser = MapParser(maps_dat_path=self.maps_dat, pcx_dir=self.pcx_dir)
        althea = next((r for r in parser.regions if "althea" in r.pcx.lower()), None)
        self.assertIsNotNone(althea)
        self.assertEqual(althea.world, 0)

    def test_find_region_at(self):
        """find_region_at retourne la bonne région."""
        parser = MapParser(maps_dat_path=self.maps_dat, pcx_dir=self.pcx_dir)
        # Stoneheim: (8, 1390) 35x1353
        region = parser.find_region_at(0, 10, 1400)
        self.assertIsNotNone(region)
        self.assertEqual(region.pcx, "stoneheim.pcx")

    def test_find_region_not_found(self):
        """find_region_at retourne None si pas de région."""
        parser = MapParser(maps_dat_path=self.maps_dat, pcx_dir=self.pcx_dir)
        region = parser.find_region_at(0, 99999, 99999)
        self.assertIsNone(region)

    def test_parse_pcx_lighthaven(self):
        """Parse un PCX existant."""
        parser = MapParser(maps_dat_path=self.maps_dat, pcx_dir=self.pcx_dir)
        lighthaven = next((r for r in parser.regions if "lighthaven.pcx" in r.pcx.lower() and r.w > 0), None)
        self.assertIsNotNone(lighthaven)

        grid = parser.parse_pcx_collision(
            self.pcx_dir / lighthaven.pcx,
            lighthaven.x, lighthaven.y, lighthaven.w, lighthaven.h,
            target_resolution=(64, 48)
        )
        self.assertGreater(len(grid), 0)
        # Au moins certaines tuiles doivent être walkable
        walkable = sum(1 for v in grid.values() if v)
        self.assertGreater(walkable, 0)

    def test_parse_pcx_missing_file(self):
        """Retourne dict vide si le PCX n'existe pas."""
        parser = MapParser(maps_dat_path=self.maps_dat, pcx_dir=self.pcx_dir)
        grid = parser.parse_pcx_collision(
            self.pcx_dir / "non_existent.pcx",
            0, 0, 100, 100,
            target_resolution=(10, 10)
        )
        self.assertEqual(grid, {})


class TestWorldMapRealCollision(unittest.TestCase):
    """Tests d'intégration WorldMap + collision réelle."""

    def test_worldmap_with_real_collision(self):
        """WorldMap charge les grilles réelles si demandé."""
        # Avec use_real_collision=True, le monde 0 devrait avoir des tuiles
        m = WorldMap(use_real_collision=True)
        # Charger explicitement
        m._load(0)
        grid = m._grids.get(0)
        self.assertIsNotNone(grid)
        self.assertGreater(len(grid), 0)

    def test_worldmap_without_real_collision(self):
        """Sans collision réelle, tout est franchissable."""
        m = WorldMap(use_real_collision=False)
        m._load(0)
        # Pas de grille chargée
        self.assertNotIn(0, m._grids)
        # Donc tout walkable
        self.assertTrue(m.is_walkable(100, 100, 0))

    def test_real_collision_blocks_some_cells(self):
        """La collision réelle bloque certaines tuiles."""
        m = WorldMap(use_real_collision=True)
        m._load(0)
        grid = m._grids.get(0)
        if grid:
            walkable = sum(1 for v in grid.values() if v)
            total = len(grid)
            # Doit y avoir un mélange de walkable et non-walkable
            self.assertGreater(walkable, 0)
            self.assertLess(walkable, total)


class TestMapIntegration(unittest.TestCase):
    """Tests d'intégration avec le serveur."""

    def test_load_all_world0_maps(self):
        """Charge toutes les maps du monde 0."""
        grids = load_real_collision()
        self.assertIn(0, grids)
        grid0 = grids[0]
        self.assertGreater(len(grid0), 1000)  # Au moins 1000 tuiles


if __name__ == "__main__":
    unittest.main()
