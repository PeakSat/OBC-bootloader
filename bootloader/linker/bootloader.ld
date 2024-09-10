/* bootloader.ld
Created by Ilia Zarka on 6/8/2024.*/
MEMORY
{
  bootrom  (rx)  : ORIGIN = 0x00400000, LENGTH = 0x00008000
  var      (rwx) : ORIGIN = 0x00408000, LENGTH = 0x00008000
  approm1  (rx)  : ORIGIN = 0x00410000, LENGTH = 0x000F8000
  approm2  (rx)  : ORIGIN = 0x00508000, LENGTH = 0x000F8000
  ram      (rwx) : ORIGIN = 0x20400000, LENGTH = 0x60000
}

__stack_size__ = 0x400;
__bootrom_start__ = ORIGIN(bootrom);
__bootrom_size__ = LENGTH(bootrom);
__approm1_start__ = ORIGIN(approm1);
__approm2_start__ = ORIGIN(approm2);
__variables_start__ = ORIGIN(var);
__approm_size__ = LENGTH(approm1);
__ram_start__ = ORIGIN(ram)+__stack_size__;

/* Section Definitions */
SECTIONS
{
    .text :
    {
        . = ALIGN(4);
        KEEP(*(.vectors .vectors.*))
        *(.text*)
        *(.rodata*)
        _etext = .;
    } > bootrom
}
