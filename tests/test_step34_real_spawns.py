"""Étape 34 (PLAN 2.1) : spawns réels depuis spawns.json."""

import json
import unittest
from pathlib import Path

from t4c.spawns import load_spawns, get_random_spawn, Spawner, SpawnPoint


class TestLoadSpawns(unittest.TestCase):
    """Tests du chargeur de spawners."""

    def setUp(self):
        self.spawns_path = Path(__file__).parent.parent / "ressources" / "wda_extract" / "spawns.json"

    def test_load_spawns_file(self):
        """Le fichier spawns.json se charge correctement."""
        spawners = load_spawns(self.spawns_path)
        self.assertGreater(len(spawners), 0)

    def test_spawner_has_coords(self):
        """Chaque spawner a au moins un point de spawn."""
        spawners = load_spawns(self.spawns_path)
        for s in spawners:
            self.assertGreater(len(s.coords), 0)

    def test_spawn_point_format(self):
        """Les points de spawn ont le bon format."""
        spawners = load_spawns(self.spawns_path)
        for s in spawners:
            for coord in s.coords:
                self.assertIsInstance(coord, SpawnPoint)
                self.assertGreaterEqual(coord.world, 0)
                self.assertGreaterEqual(coord.x, 0)
                self.assertGreaterEqual(coord.y, 0)

    def test_missing_file(self):
        """Retourne liste vide si le fichier n'existe pas."""
        spawners = load_spawns(Path("/non/existent/spawns.json"))
        self.assertEqual(spawners, [])


class TestGetRandomSpawn(unittest.TestCase):
    """Tests de sélection aléatoire de spawn."""

    def setUp(self):
        self.spawners = [
            Spawner(name="Test1", coords=[
                SpawnPoint(world=0, x=100, y=200),
                SpawnPoint(world=0, x=300, y=400),
            ]),
            Spawner(name="Test2", coords=[
                SpawnPoint(world=1, x=50, y=50),
            ]),
        ]

    def test_random_spawn_returns_valid_point(self):
        """get_random_spawn retourne un point valide."""
        for _ in range(10):
            point = get_random_spawn(self.spawners)
            self.assertIsNotNone(point)
            self.assertIn(point.world, [0, 1])

    def test_filter_by_world(self):
        """Le filtre par monde fonctionne."""
        points_world0 = []
        for _ in range(100):
            point = get_random_spawn(self.spawners, world=0)
            if point:
                points_world0.append(point)

        # Tous les points doivent être dans le monde 0
        for p in points_world0:
            self.assertEqual(p.world, 0)

    def test_empty_spawners(self):
        """Retourne None si pas de spawner."""
        point = get_random_spawn([])
        self.assertIsNone(point)


class TestSpawnIntegration(unittest.TestCase):
    """Tests d'intégration avec le serveur."""

    def test_auto_load_spawns(self):
        """Le chargement automatique fonctionne."""
        from t4c.spawns import auto_load_spawns
        spawns = auto_load_spawns()
        self.assertGreater(len(spawns), 0)


if __name__ == "__main__":
    unittest.main()
