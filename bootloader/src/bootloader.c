//
// Created by Ilia Zarka on 6/8/2024.
//
#include <inttypes.h>
#include "memory_map.h"
#include "bootloader.h"

__attribute__((naked)) static void start_app(uint32_t pc, uint32_t sp)  {
  __asm("           \n\
        msr msp, r1 /* load r1 into MSP */\n\
        bx r0       /* branch to the address at r0 */\n\
  ");
}

int bootloader(void);

typedef struct _v {
  void* stack_pointer;
  void* pc;
} Vectors;

__attribute__((section(".vectors"))) // start binary with the stack pointer and program counter
const Vectors myVec = {
  .stack_pointer = (void*) (&__ram_start__), // "&" does not dereference a pointer. The value of __ram_start__is put to the .stack_pointer
  .pc = (void*) &bootloader
};

int bootloader(void) {

    __asm volatile ("nop");
    /*lock bootloader region. (Yes it is only needed once, but it's the easiest way)*/
    uint32_t variables= (uint32_t)(&__variables_start__);// "&" does not dereference a pointer. The value of __variables_start__is put to the data pointer
    uint32_t boot_start= (uint32_t)(&__bootrom_start__);// "&" does not dereference a pointer. The value of __bootrom_start__is put to the boot_start pointer
    uint32_t *eefc_fcr = (uint32_t*)EEFC_FCR; //pointer to FCR register    page_number = ((boot_start - boot_start) / IFLASH_PAGE_SIZE); //bootloader is in the beggining of the memory so IFlash_start = boot_start

    uint32_t page_number = ((boot_start - IFLASH_START) / IFLASH_PAGE_SIZE);
    uint32_t arg = 0xFFFF & (page_number << EEFC_FCR_FARG_Pos);
    // *eefc_fcr = EEFC_FCR_FCMD_SLB | arg | EEFC_FCR_PASSWD; // [0:7] CMD, [8:23] ARGS, [24:31]PASSWORD

    //store variabes in a buffer
    uint32_t *data = (uint32_t *) &__variables_start__;// "&" does not dereference a pointer. The value of __variables_start__is put to the data pointer
    uint32_t data_buffer[IFLASH_PAGE_SIZE/sizeof(uint32_t)];
    for(uint32_t i=0; i<IFLASH_PAGE_SIZE/sizeof(uint32_t); i++)
    {
      data_buffer[i] = data[i];
    }

    /**
    * data_buffer[BOOT_COUNTER_VARIABLE] hold the number of unsuccesful boot tries from the primary partition
    * data_buffer[PRIMARY_PARTITION_VARIABLE] holds the ID of the primary boot partition (either 0 or 1)
    */

    if(data_buffer[BOOT_COUNTER_VARIABLE]>MAX_REBOOT_TRIES){
      data_buffer[BOOT_COUNTER_VARIABLE]=0;
      if(data_buffer[PRIMARY_PARTITION_VARIABLE]==FIRST_FIRMWARE_ID){
        data_buffer[PRIMARY_PARTITION_VARIABLE]=SECOND_FIRMWARE_ID;
      }else{
        data_buffer[PRIMARY_PARTITION_VARIABLE]=FIRST_FIRMWARE_ID;
      }
    }else{
      data_buffer[BOOT_COUNTER_VARIABLE]++;
    }

    /*store the boot configuration so that the firmware can find it easily*/
    if(data_buffer[PRIMARY_PARTITION_VARIABLE]==SECOND_FIRMWARE_ID){
      data_buffer[BOOT_STATUS_VARIABLE]=SECOND_FIRMWARE_ID;
    }else{
      data_buffer[BOOT_STATUS_VARIABLE]=FIRST_FIRMWARE_ID;
    }

  /*erase variables partition. (Only 0s can be programmed)*/

  page_number = ((variables - boot_start) / IFLASH_PAGE_SIZE)|0x2U; //0x2U to clear 16 pages(the size of the variables partition)
  arg = 0xFFFF & (page_number << EEFC_FCR_FARG_Pos);

  *eefc_fcr = EEFC_FCR_FCMD_EP | arg | EEFC_FCR_PASSWD; // [0:7] CMD, [8:23] ARGS, [24:31]PASSWORD

  __asm("dmb 0xF":::"memory"); //wait for all previous explicit memory accesses to be observed
  __asm volatile ("dsb 0xF":::"memory"); //wait for all previous instructions to be completed
  __asm volatile ("isb 0xF":::"memory"); //flush the pipeline


  /*write the variables to the flash*/
  for (uint32_t i = 0; i < IFLASH_PAGE_SIZE; i += 4U)
  {
    *(((uint32_t *)( variables)+(i/4U))) = data_buffer[i/4U];
    __asm("dmb 0xF":::"memory"); //wait for all previous explicit memory accesses to be observed
  }

  page_number = ((variables - boot_start) / IFLASH_PAGE_SIZE);
  arg = 0xFFFF & (page_number << EEFC_FCR_FARG_Pos);

  *eefc_fcr = EEFC_FCR_FCMD_WP | arg | EEFC_FCR_PASSWD; // [0:7] CMD, [8:23] ARGS, [24:31]PASSWORD

  __asm volatile ("dsb 0xF":::"memory"); //wait for all previous instructions to be completed
  __asm volatile ("isb 0xF":::"memory"); //flush the pipeline

  /*branch to the correct firmware*/
  uint32_t *app_code;
  if(data_buffer[PRIMARY_PARTITION_VARIABLE]==SECOND_FIRMWARE_ID){
    app_code = (uint32_t *) &__approm2_start__;
  }else{
    app_code = (uint32_t *) &__approm1_start__;
  }
  uint32_t app_sp = app_code[0]; //arm convention. First 32 bits of the binary are the stack pointer
  uint32_t app_start = app_code[1]; //arm convention. Second 32 bits of the binary are the start point
  start_app(app_start,app_sp);

    /* Not Reached */
    while (1) {}
}
