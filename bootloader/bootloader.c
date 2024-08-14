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

__attribute__((section(".vectors")))
const Vectors myVec = {
  .stack_pointer = (void*) (&__ram_start__), // "&" does not dereference  apointer. The value of __ram_start__is put to the .stack_pointer
  .pc = (void*) &bootloader
};

int bootloader(void) {
    //dereference stack pointer and reset handler pointer
    // __asm("nop");
    uint32_t *app_code = (uint32_t *) &__approm_start__;// "&" does not dereference  apointer. The value of __approm_start__is put to the app_code pointer
    uint32_t app_sp = app_code[0];
    uint32_t app_start = app_code[1];
    start_app(app_start,app_sp);
    /* Not Reached */
    while (1) {}
}
