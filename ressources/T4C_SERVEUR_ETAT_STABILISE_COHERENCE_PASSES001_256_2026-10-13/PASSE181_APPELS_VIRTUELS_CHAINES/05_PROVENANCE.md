# Source du bloc

0x49EBCD : mov edx,[esi] deja couvert. Fallthrough vers 0x49EBCF, instruction partiellement masquee.

Le parcours est arrete a 0x49F1F2 ; la continuation suivante appartient a une zone deja analysee.

Ancrage du masque archive avant ce bloc : `0x49ebcd`. Le premier ou les premiers octets de l instruction suivante etaient deja couverts ; les autres octets, ainsi que la suite du flot, ont ete verifies sur le PE.
