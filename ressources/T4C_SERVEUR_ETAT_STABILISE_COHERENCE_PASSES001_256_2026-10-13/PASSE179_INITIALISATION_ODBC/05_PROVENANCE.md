# Source du bloc

0x41305C : mov cl,[ebp-0x0D] deja couvert. Fallthrough vers 0x41305F, dont seul le premier octet etait masque.

Le graphe se termine par un ret a 0x4132F6; les NOP ulterieurs sont exclus.

Ancrage du masque archive avant ce bloc : `0x41305c`. Le premier ou les premiers octets de l instruction suivante etaient deja couverts ; les autres octets, ainsi que la suite du flot, ont ete verifies sur le PE.
