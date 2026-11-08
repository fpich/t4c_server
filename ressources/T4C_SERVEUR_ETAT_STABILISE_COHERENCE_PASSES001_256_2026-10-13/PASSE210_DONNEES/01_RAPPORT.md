# Passe 210 — Tables de dispatch attestées

- 47 intervalles issus du registre historique des tables relocalisées.
- 763 pointeurs 32 bits ; tous pointent dans `.text` sur des octets déjà couverts.
- 3,052 octets de **données structurées**, non comptés comme instructions et absents du masque historique.
- La nature exacte de chaque table (virtuelle, saut, etc.) exige l'analyse de son site d'utilisation ; nous conservons le terme *tables de pointeurs*.
