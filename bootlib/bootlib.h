//
// Created by iliaz on 9/10/2024.
//

#ifndef BOOTLIB_H
#define BOOTLIB_H

#include <efc/plib_efc.h>
#include "main.h"
#include <samv71q21b.h>

#define FIRST_FIRMWARE_ID                   0    /* the second variable in the variables partition should be 0 if the first firmware is the primary one*/
#define SECOND_FIRMWARE_ID                  1    /* the second variable in the variables partition should be 1 if the second firmware is the primary one*/
#define BOOT_COUNTER                        0    /* Counter place in the variables partition*/
#define PRIMARY_PARTITION_VARIABLE          1    /* primary partition variable place in the variables partition*/
#define BOOT_STATUS_VARIABLE                2    /* current boot status variable in the variables partition*/


extern uint32_t __variables_start__;


/**
 * resets the boot counter.
 * should be called after nominal operation is observed
 */
void reset_boot_counter();

/**
 * returns the ID of the primary firmware.
 * (0->FIRST_FIRMWARE_IS_PRIMARY
 * 1->SECOND_FIRMWARE_IS_PRIMARY)
 */
uint32_t get_primary_firmware();

/**
 * sets the firmware from which the
 * bootloader will try to boot first.
 * (0->FIRST_FIRMWARE_IS_PRIMARY
 * 1->SECOND_FIRMWARE_IS_PRIMARY)
 */
void set_primary_firmare(uint32_t firmware);
#endif //BOOTLIB_H
