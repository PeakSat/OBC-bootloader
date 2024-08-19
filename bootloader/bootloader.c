//
// Created by iliaz on 8/6/2024.
//
#include <inttypes.h>
#include "memory_map.h"
// #include "cmsis_gcc.h"

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

    //store variabes in a buffer
    uint32_t *data = (uint32_t *) &__variables_start__;// "&" does not dereference a pointer. The value of __variables_start__is put to the data pointer
    uint32_t data_buffer[128];
    for(uint32_t i=0; i<128; i++)
    {
      data_buffer[i] = data[i];
    }


    /**
    * data_buffer[0] hold the number of unsuccesful boot tries from the primary partition
    * data_buffer[1] holds the ID of the primary boot partition (either 0 or 1)
    */

    uint32_t bootrom_choise=0;
    if(data_buffer[0]<3) //this variable should be set to 0 on succesful boot
    {
      data_buffer[0]++;
      if(!data_buffer[1])//try and boot from primary partition
      {
        bootrom_choise=0;
      }else
      {
        bootrom_choise=1;
      }
    }else
  {
    if(!data_buffer[1]) //primary partition not healthy. Try and boot from secondary partition
    {
      bootrom_choise=1;
    }else
    {
      bootrom_choise=0;
    }
  }

  //erase variables

  uint32_t variables= (uint32_t)(&__variables_start__);// "&" does not dereference a pointer. The value of __variables_start__is put to the data pointer
  uint32_t iflash_page_size=512;

  uint32_t *eefc_fcr = (uint32_t*)(0x400e0c00 + 0x04);
  uint32_t erase_Command=0x00000007;
  uint32_t iflash_start = (uint32_t)(&__bootrom_start__);
  uint32_t page_number = ((variables - iflash_start) / iflash_page_size)|0x2U;
  uint32_t arg = 0xFFFF & (page_number << 8);
  uint32_t passwd = 0x5A000000;

  *eefc_fcr = erase_Command | arg | passwd;

  __asm("dmb 0xF":::"memory"); //wait for all previous explicit memory accesses to be observed
  __asm volatile ("dsb 0xF":::"memory"); //wait for all previous instructions to be completed
  __asm volatile ("isb 0xF":::"memory"); //flush the pipeline


  // //write the variables to the flash
  for (uint32_t i = 0; i < iflash_page_size; i += 4U)
  {
    *(((uint32_t *)( variables)+(i/4U))) = data_buffer[i/4U];
    __asm("dmb 0xF":::"memory"); //wait for all previous explicit memory accesses to be observed
  }

  uint32_t write_pageCommand=0x00000001;
  page_number = ((variables - iflash_start) / iflash_page_size);
  arg = 0xFFFF & (page_number << 8);

  *eefc_fcr = write_pageCommand | arg | passwd;

  __asm volatile ("dsb 0xF":::"memory"); //wait for all previous instructions to be completed
  __asm volatile ("isb 0xF":::"memory"); //flush the pipeline


  // branch to the correct firmware
  uint32_t *app_code;
  if(bootrom_choise==0){
    app_code = (uint32_t *) &__approm1_start__;
  }else{
    app_code = (uint32_t *) &__approm2_start__;
  }
  uint32_t app_sp = app_code[0];
  uint32_t app_start = app_code[1];
  start_app(app_start,app_sp);

    /* Not Reached */
    while (1) {}
}
