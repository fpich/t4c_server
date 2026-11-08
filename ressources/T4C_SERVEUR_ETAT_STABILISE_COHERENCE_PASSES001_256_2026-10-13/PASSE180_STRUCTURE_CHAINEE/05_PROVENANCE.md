# Source du bloc

0x44F5C7 : mov eax,[esi+0x24] deja couvert. Fallthrough vers 0x44F5CA, instruction partiellement masquee.

La reprise a 0x44F6ED et le saut vers 0x44F726 sont deja dans le masque historique.

Ancrage du masque archive avant ce bloc : `0x44f5c7`. Le premier ou les premiers octets de l instruction suivante etaient deja couverts ; les autres octets, ainsi que la suite du flot, ont ete verifies sur le PE.
