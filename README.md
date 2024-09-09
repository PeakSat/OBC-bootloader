## Brief
One of the requirements of the Acubesat/peaksat missions is to have two firmwares installed on the OBC. In order to be able to assess the health of the primary firmware, and boot from the secondary firmware if needed, a custom dual-boot bootloader was developed. Its objective is to count the unsuccessful boot tries, select the correct firmware to boot from and pass information to the firmware. The firmware needs to be able to reset the unsuccessful boot counter and change the order in which the bootloader tries to boot from.
A high level flow chart of the bootloader logic is shown in the figure below.
```mermaid
graph LR
A(BOOT) --> B[BOOT COUNTER++]
B --> C{BOOT COUNTER < 3}
C -- FALSE --> F[BOOT COUNTER=0]
C -- TRUE --> G[CHANGE<BR>PRIMARY<BR>FIRMWARE]
G --> F
F --> E[BOOT FROM<BR>PRIMARY<BR>FIRMWARE]
```

## Usage

The bootloader is a precompiled binary file. The only thing necessary to use it is to upload it correctly. One easy way to do it is to use OpenOCD. If you already have it you can go to bootloader/bin and just run the command:
```shell
openocd -f atmel_samv71_xplained_ultra.cfg -c "program bootloader.bin 0x00400000 verify reset exit"
```
(The included config file uses the CMSIS-DAP programming interface. Select the correct file for the interface you want to use).

If you get a “memory region is locked message”, the MCU probably already has a version of the bootloader installed (or the memory is locked for some other reason). Erase the chip and try again. After erasing the chip you will also need to set the GPNVM boot mode selection bit using [these](https://gitlab.com/acubesat/software-management/-/wikis/ATSAM/Running-code-on-an-ATSAMV71Q21B-for-the-first-time) instructions.

Make sure to **UPDATE YOUR LINKER SCRIPT** so that you have the correct memory map. To do so, you replace the linker script your project uses with one of the two provided in the linker scripts folder. Under normal development you should use the one with 0x00406000 entry point, shown by the files name. From this point forward the primary firmware will start at address 0x00406000 and will have a maximum size of 1012 kB.
You do need to **CHANGE YOUR CMAKE**/make/ninja or whatever you are using to build your project, so that it points to the new linker script.

For development purposes, you might need a way to boot from the primary firmware regardless of the boot counter. To do this you can load the reset_boot.bin binary at 0x00503000, which resets the counter once the bootloader branches to it. At the next reset the bootloader will again branch to 0x00406000.

You also need to add some code to your project so that it resets the boot counter every time it runs. reseting the counter means that your firmware runs properly. So you need to be sure that you **RESET THE COUNTER ONLY AFTER NOMINAL OPERATION IS OBSERVED**. Failing to reset the counter, or resetting it at the wrong time, will lead to undesired behavior. If you have installed the MHC peripheral libraries this code should do the trick:
```shell
uint32_t variables=(uint32_t)(&__variables_start__);// "&" does not dereference a pointer. The value of __variables_start__ is put to the data pointer  
uint32_t *data = (uint32_t *) variables;  
uint32_t data_buffer[IFLASH_PAGE_SIZE/sizeof(uint32_t)];  

data_buffer[0]=0;//reset counter  
data_buffer[1]=data[1];//keep primary firmware the same  

for(int i=2; i++; i<IFLASH_PAGE_SIZE/sizeof(uint32_t)) // reduce memory wear  
{  
    data_buffer[i]=0xFFFFFFFF;  
}  

EFC_SectorErase(variables);  
EFC_PageBufferWrite(data_buffer,variables);
```
**THIS IS C CODE** so if you want to call it from a c++ routine, you will have to declare it as extern "C". You will also need to declare the \_\_variables_start\_\_ variable as ```extern uint32_t __variables_start__;``` in a .h file so that the compiler can find it. If you are facing problems you can just set \_\_variables_start\_\_ to 0x404000, but it is not advised.

## High Level Explanation
The bootloader starts by locking the memory region it occupies. Then it copies the variables from the memory location which is shared with the firmwares, and stores them in a buffer. One of the variables stored there is the boot counter. Every time the bootloader is executed, it adds 1 to that variable. It is the firmwares responsibility to reset the boot counter to 0. If it fails to do so, the bootloader will assume that the firmware did not boot correctly, and after 3 tries boot from the secondary firmware.

The next variable sets the primary firmware. At any given time there will be two firmwares installed on the internal flash of the ATSAMV71Q21B. The location of the primary firmware might change, thus primary firmware does not mean the first firmware in memory. For example, a new firmware upload might be put at the second memory partition. Then the bootloader should be informed that the second partition contains the primary firmware by changing the appropriate variable on the shared memory. On the next boot, the bootloader will boot on the second partition, which contains the primary firmware.

After reading these variables, the bootloader can decide the appropriate firmware to boot from. Before branching to the correct memory address, it needs to erase the shared memory and write the buffer with the updated variables to the memory. The erase is necessary since only 0s can be programed in the type of memory that the MCU is using.

Finally the bootloader can branch to the firmwares entry point. Two things need to be implemented in the firmware for the bootloader to work correctly. One is the reset of the boot counter, which should happen at every successful boot and the second is to change the primary boot variable after a successful firmware upgrade.

## TBD
Implement the rebootCounter and changePrimaryFirmware functions in a library for ease of use.
