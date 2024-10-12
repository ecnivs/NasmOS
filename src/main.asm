ORG 0x7C00 ; set where BIOS loads the bootloader
BITS 16

main:
    HLT

halt:
    JMP halt

TIMES 510-($-$$) DB 0
DW 0AA55h
