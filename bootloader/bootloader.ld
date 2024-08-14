/* bootloader.ld */
INCLUDE memory_map.ld

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
