#include "stdint.h"
#include "stdio/stdio.h"
#include "disk/asmDisk.h"

void _cdecl cstart_(){
    uint8_t error;

    x86_Disk_Reset(0, &error);
    printf("Error %d\r\n", error);
}
