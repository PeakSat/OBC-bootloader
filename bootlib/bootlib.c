//
// Created by iliaz on 9/10/2024.
//

#include "bootlib.h"

/**
 * resets the boot counter.
 * should be called after nominal operation is observed
 */
void reset_boot_counter()
{
    uint32_t variables=(uint32_t)(&__variables_start__);// "&" does not dereference a pointer. The value of __variables_start__ is put to the data pointer
    uint32_t *data = (uint32_t *) variables;
    uint32_t data_buffer[IFLASH_PAGE_SIZE/sizeof(uint32_t)];

    data_buffer[BOOT_COUNTER]=0;//reset counter
    data_buffer[PRIMARY_PARTITION_VARIABLE]=data[PRIMARY_PARTITION_VARIABLE];//keep primary firmware the same
    data_buffer[BOOT_STATUS_VARIABLE]=data[BOOT_STATUS_VARIABLE];//keep boot status variable the same

    for(uint32_t i=3; i<IFLASH_PAGE_SIZE/sizeof(uint32_t); i++) // reduce memory wear
    {
        data_buffer[i]=0xFFFFFFFF;
    }

    EFC_SectorErase(variables);
    EFC_PageWrite(data_buffer,variables);
}


/**
 * returns the ID of the primary firmware.
 * (0->FIRST_FIRMWARE_IS_PRIMARY
 * 1->SECOND_FIRMWARE_IS_PRIMARY)
 */
uint32_t get_primary_firmware()
{
    uint32_t variables=(uint32_t)(&__variables_start__);// "&" does not dereference a pointer. The value of __variables_start__ is put to the data pointer
    uint32_t *data = (uint32_t *) variables;

    if(data[PRIMARY_PARTITION_VARIABLE]==SECOND_FIRMWARE_ID)
    {
        return SECOND_FIRMWARE_ID;
    }else
    {
        return FIRST_FIRMWARE_ID;
    }

}

/**
 * sets the firmware from which the
 * bootloader will try to boot first.
 * (0->FIRST_FIRMWARE_IS_PRIMARY
 * 1->SECOND_FIRMWARE_IS_PRIMARY)
 */
void set_primary_firmare(uint32_t firmware)
{
    uint32_t variables=(uint32_t)(&__variables_start__);// "&" does not dereference a pointer. The value of __variables_start__ is put to the data pointer
    uint32_t *data = (uint32_t *) variables;
    uint32_t data_buffer[IFLASH_PAGE_SIZE/sizeof(uint32_t)];

    data_buffer[BOOT_COUNTER]=data[BOOT_COUNTER];;//keep boot counter the same
    data_buffer[BOOT_STATUS_VARIABLE]=data[BOOT_STATUS_VARIABLE];//keep boot status variable the same
    if((firmware != FIRST_FIRMWARE_ID) && (firmware != SECOND_FIRMWARE_ID))
    {
        data_buffer[PRIMARY_PARTITION_VARIABLE]=data[PRIMARY_PARTITION_VARIABLE];//garbage in -> primary firmware stays the same
    }else
    {
        data_buffer[PRIMARY_PARTITION_VARIABLE]=firmware;
    }

    for(uint32_t i=3; i<IFLASH_PAGE_SIZE/sizeof(uint32_t); i++) // reduce memory wear
    {
        data_buffer[i]=0xFFFFFFFF;
    }

    EFC_SectorErase(variables);
    EFC_PageWrite(data_buffer,variables);
}