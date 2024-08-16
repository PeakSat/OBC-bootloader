/*
 * $projectname$.c
 *
 * Created: $date$
 * Author : $user$
 */


#include "definitions.h"


char flash_read[512];
uint32_t command=0;
void bootloader_test(void);
int main(void)
{
    __NOP();
  SYS_Initialize(NULL);
  SYSTICK_TimerStart();
    /* Replace with your application code */
    while (1)
    {
      SYSTICK_DelayMs(1000);
      PIO_PinClear(PIO_PIN_PA23);
      SYSTICK_DelayMs(1000);
      PIO_PinSet(PIO_PIN_PA23);
        __NOP();


        uint32_t data[IFLASH_PAGE_SIZE/sizeof(uint32_t)];
        for(long unsigned  i=0; i<IFLASH_PAGE_SIZE/sizeof(uint32_t); i++){
            data[i] = i;
        }




        // bootloader();





        //EFC_PageWrite(data,4201984);


        uint8_t* var  = (uint8_t*)0x00400000;
        __NOP();
        for(int j=0; j<20; j++){
            for(int i=0; i<512; i++){
                uint8_t single= var[i+(j*512)];
                flash_read[i]=(uint8_t)single;
                __NOP();
            }
            __NOP();
        }

      // FUSES_GPNVMBITS_BOOT_MODE()
      //
      //   // uint32_t *nmi = (uint32_t*)0x00800008;
      //   // uint32_t iap_entry = *nmi;
      //
      //   // uint32_t *test = (uint32_t*)0X200;
      //   for(int i=0; i<20; i += 4)
      //   {
      //       *(uint32_t *)(IFLASH_ADDR + (11 * IFLASH_PAGE_SIZE) + i) = 0xCAFEBABE;
      //   }
      //
      //   static int counter = 0;
      //
      //   __NOP();
      //   uint8_t* var  = (uint8_t*)0x00400000;
      //   __NOP();
      //   for(int j=0; j<20; j++){
      //       for(int i=0; i<512; i++){
      //           uint8_t single= var[i+(j*512)];
      //           flash_read[i]=(char)single;
      //           __NOP();
      //       }
      //       __NOP();
      //   }
      //
      //   __NOP();
      //   if(flash_read[0]){
      //       counter++;
      //   }
    }
}

void bootloader_test(void)
{
    __NOP();

    /**
     * data_buffer[0] hold the number of unsuccesful boot tries from the primary partition
     * data_buffer[1] holds the ID of the primary boot partition (either 0 or 1)
     * data_buffer[2] holds the address of the boot partition with ID 0
     * data_buffer[3] holds the address of the boot partition with ID 1
     */

    uint8_t* iflash_addr  = (uint8_t*)0x00400000;
    uint32_t data_offset = 1024; //non volatile data offset from entry point
    uint8_t data_buffer[512];
    uint32_t *data_buffer32 = (uint32_t*) &data_buffer[0];
    uint32_t bootloader_end_address=0x4000;
    for(uint32_t i=0; i<512; i++)
    {
        data_buffer[i] = iflash_addr[data_offset+i];
    }
    // =data_buffer[0];

    int (*func_main)(void);

    if(data_buffer32[0]<3) //this variable should be set to 0 on succesful boot
    {

        data_buffer32[0]++;
        //boot from primary partition
        if(!data_buffer32[1])
        {
            func_main=(int(*)(void))data_buffer32[2];
        }else
        {
            func_main=(int(*)(void))data_buffer32[3];
        }
    }else
    {
        data_buffer32[0]+=0x10000;//just for test purposes
        //boot from secondary partition
        if(data_buffer32[1])
        {
            func_main=(int(*)(void))data_buffer32[2];
        }else
        {
            func_main=(int(*)(void))data_buffer32[3];
        }
    }



    uint16_t page_number = 15;

    uint32_t iflash_page_size=512;

    // EFC_PageWrite(data_buffer32,4196224);

    for (uint32_t i = 0; i < iflash_page_size; i += 4U)
    {
        *((uint32_t *)( iflash_addr + ( page_number * iflash_page_size ) + i )) = *data_buffer32;
        data_buffer32++;
        __DMB();
    }

    __NOP();
    // __DSB();
    // __ISB();
    __asm volatile ("dsb 0xF":::"memory"); //wait for all explicit memory access instructions
    __asm volatile ("isb 0xF":::"memory"); //flush the pipeline



    /* Issue the FLASH write operation*/
    uint32_t *eefc_fcr = (uint32_t*)(0x400e0c00 + 0x04);
    command=(EEFC_FCR_FCMD_EWP | EEFC_FCR_FARG((uint32_t)page_number)| EEFC_FCR_FKEY_PASSWD);//1509953283;//
    __NOP();
    *eefc_fcr=command;
    // EFC_REGS->EEFC_FCR = (EEFC_FCR_FCMD_WP | EEFC_FCR_FARG((uint32_t)page_number)| EEFC_FCR_FKEY_PASSWD);




    // func_main(); //branch to the main function
}