//
// Created by Ilia Zarka on 6/8/2024.
//

#ifndef BOOTLOADER_H
#define BOOTLOADER_H

#define IFLASH_PAGE_SIZE                    512                    /* size of the internal flash pages*/
#define IFLASH_START                        0x00400000             /* start of the internal flash*/
#define MAX_REBOOT_TRIES                    3                      /* number of unsuccesful reboots before switching to the secondary firmware*/
#define FIRST_FIRMWARE_IS_PRIMARY           0                      /* the second variable in the variables partition should be 0 if the first firmware is the primary one*/
#define SECOND_FIRMWARE_IS_PRIMARY          1                      /* the second variable in the variables partition should be 1 if the second firmware is the primary one*/
#define EEFC_FCR_FCMD_WP                    0x00000001             /* command to write a page*/
#define EEFC_FCR_FCMD_EP                    0x00000007             /* command to erase pages. see "Erase Commands" section for more information*/
#define EEFC_FCR_FCMD_SLB                   0x00000008             /* command to lock a region*/
#define EEFC_FCR_FARG_Pos                   8                      /* (EEFC_FCR) Flash Command Argument Position */
#define BOOTLOADER_REGION                   0x00                   /* bootloader region to be locked*/
#define EEFC_FCR_PASSWD                     0x5A000000             /* password for the EEFC_FCR register*/
#define EEFC_FCR                            0x400e0c04             /* EEFC + FCR offset (0x400e0c00 + 0x04)*/
#define BOOT_COUNTER                        0                      /* Counter place in the variables partition*/
#define PRIMARY_PARTITION_VARIABLE          1                      /* primary partition variable place in the variables partition*/


#endif //BOOTLOADER_H
