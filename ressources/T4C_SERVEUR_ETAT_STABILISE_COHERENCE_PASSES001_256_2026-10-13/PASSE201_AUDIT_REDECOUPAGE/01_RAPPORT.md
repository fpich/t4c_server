# Passe 201 — Audit des frontières x86

- 24 débuts historiques d'instructions apparaissent **à l'intérieur** d'instructions complètes identifiées par les deux désassembleurs. Ils sont conservés comme anomalies de décodage et non comme nouvelles instructions indépendantes.
- Les octets concernés ne sont pas retirés automatiquement : plusieurs correspondent bien aux opérandes des instructions correctes et peuvent légitimement appartenir au masque d'octets.
- Les fenêtres ne sont pas interprétées comme preuve que chaque fonction est intégralement couverte ou que les appels indirects sont résolus.
- Les zones sans source de contrôle du flot, les tables de données et le remplissage ne sont pas ajoutés.
