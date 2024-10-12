ORG 0x7C00 ; set where BIOS loads the bootloader
BITS 16

main:
    ; set segments to 0
    MOV ax, 0
    MOV ds, ax
    MOV es, ax
    MOV ss, ax

    MOV sp, 0x7C00 ; set stack pointer to 0x7C00

    ; print message
    MOV si, os_boot_msg
    CALL print

    HLT ; halt the CPU

halt:
    JMP halt ; infinite loop

print:
    PUSH si ; save SI (string pointer)
    PUSH ax ; save AX register
    PUSH bx ; save BX register

print_loop:
    LODSB ; Load byte from [SI] into AL, increment SI
    OR al, al ; check if AL is 0 (end of string)
    JZ done_print ; if 0, done_print

    MOV ah, 0x0E ; BIOS teletype function
    MOV bh, 0 ; page number
    INT 0x10 ; BIOS interrupt to print the character in AL

    JMP print_loop ; repeat to the next character

done_print:
    # restore registers
    POP bx
    POP ax
    POP si
    RET ; return to caller

os_boot_msg: 
    DB 'OS has booted successfully!', 0x0D, 0x0A, 0

; fill the rest of the sector with zeros
TIMES 510-($-$$) DB 0

; boot signature (must be 0xAA55 at the end of first 512 bytes)
DW 0xAA55
