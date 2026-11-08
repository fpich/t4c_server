# Rapport technique — Passe 65

## Source vérifiée

Exécutable : `T4C Server(2).exe`. Empreinte SHA-256 : `13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc`.

## Catégorie 20

À `0x45BA77` / `0x45BA7D`, chargement de deux composantes de valeur dans EDX et EAX ; à `0x45BA83` et `0x45BA8B`, écritures respectivement dans `[ESI+0x20]` et `[ESI+0x24]`. Cet extrait confirme la mutation d'un nœud déjà référencé par ESI. La provenance complète de ESI dans cette catégorie nécessite encore l'analyse du bloc antérieur complet, et n'est pas requalifiée comme nouvelle preuve de propriété.

## Collection locale `[EBP-0x3C]`

La construction par `0x45E8A0` se situe à `0x45CB0D`. Les deux appels explicites à `0x45E3D0` repérés dans le désassemblage complet de `0x45C950` sont `0x45CF90` et `0x45D0ED`, précédés de `LEA ECX,[EBP-0x3C]` à `0x45CF83` et `0x45D0E0`. À `0x45D0E9`, `[EBP-4]` (état de nettoyage) est remis à 3 avant destruction.

## Limites et hypothèses

Le désassemblage comporte un prologue d'enregistrement SEH à `0x45C953–0x45C967`, et une variable d'état à `[EBP-4]`. Ceci suggère un nettoyage via mécanisme de déroulement, **sans démontrer** que toutes les exceptions traversent un destructeur valide ni exclure fuite, terminaison brutale ou destruction par un autre chemin. Il faut décoder précisément l'enregistrement d'unwind associé à `0x4D77EB` et les handlers.

Un décompte de deux appels directs dans cette fonction ne prouve pas un nombre exhaustif de chemins de destruction : possibles helpers, tables EH ou destruction indirecte.

## Mesure

126 431 / 905 117 octets, soit 13,968 % (référence conservée de la passe 64). Nouveaux octets uniques officiellement comptabilisés : 0. Les extraits sont revérifiés sur le binaire mais se chevauchent potentiellement avec les anciennes preuves.
