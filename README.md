
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
openocd -f atmel_samv71_xplained_ultra.cfg -c "program bootloader.elf verify reset exit"
```
(Select the correct .cfg file for the interface you want to use).

If you get a “memory region is locked message”, the MCU probably already has a version of the bootloader installed (or the memory is locked for some other reason). Erase the chip and try again. After erasing the chip you will also need to set the GPNVM boot mode selection bit using [these](https://gitlab.com/acubesat/software-management/-/wikis/ATSAM/Running-code-on-an-ATSAMV71Q21B-for-the-first-time) instructions.

Make sure to **UPDATE YOUR LINKER SCRIPT** so that you have the correct memory map. To do so, you replace the linker script your project uses with the one in the linker script directory. The default entry point is 0x00410000, which corresponds to the first firmware. If you need to build for the second bank, you need to open the linker script provided, comment out the line which sets the ROM_ORIGIN to 0x00410000 and uncomment the one which sets it to 0x00500000. After uploading the bootloader, the primary firmware will start at address 0x00410000 and the secondary at address 0x00500000, and they will both have a maximum size of 960 kB.
You do need to **CHANGE YOUR CMAKE**/make/ninja or whatever you are using to build your project, so that it points to the new linker script.

You also need to add some code to your project so that it resets the boot counter every time it runs. When reseting the counter, you assure the bootloader that your firmware runs properly. So you need to make sure that you **RESET THE COUNTER ONLY AFTER NOMINAL OPERATION IS OBSERVED**. Failing to reset the counter, or resetting it at the wrong time, will lead to undesired behavior. If you have installed the MHC peripheral libraries you can add the bootlib(within the bootlib folder) files to you project and use the ```reset_boot_counter()``` to do so. There are also two more functions ```get_primary_firmware()``` and ```void set_primary_firmare(uint32_t firmware)``` to get the ID if the running firmware and set the primary firmware.
**THIS IS C CODE** so if you want to call it from a c++ routine, you will have to declare it as extern "C".

For development purposes, you might need a way to boot from the primary firmware regardless of the boot counter. To do this you can load the [reset_boot.elf](https://github.com/PeakSat/OBC-bootloader/tree/reset-counter) program, which resets the counter and branches to the primary firmware.

## High Level Explanation
The bootloader starts by locking the memory region it occupies. Then it copies the variables from the memory location which is shared with the firmwares, and stores them in a buffer. One of the variables stored there is the boot counter. Every time the bootloader is executed, it adds 1 to that variable. It is the firmwares responsibility to reset the boot counter to 0. If it fails to do so, the bootloader will assume that the firmware did not boot correctly, and after 3 tries boot from the secondary firmware.

The next variable sets the primary firmware. At any given time there will be two firmwares installed on the internal flash of the ATSAMV71Q21B. The location of the primary firmware might change, thus primary firmware does not mean the first firmware in memory. For example, a new firmware upload might be put at the second memory partition. Then the bootloader should be informed that the second partition contains the primary firmware by changing the appropriate variable on the shared memory. On the next boot, the bootloader will boot on the second partition, which contains the primary firmware.

The third variable contains the ID of the firmware that the bootloader tried to boot from. Under nominal operation, the firmware can use this and the second variable to switch to the other firmware after reboot.

After reading these variables, the bootloader can decide the appropriate firmware to boot from. Before branching to the correct memory address, it needs to erase the shared memory and write the buffer with the updated variables to the memory. The erase is necessary since only 0s can be programed in the type of memory that the MCU is using.

Finally the bootloader can branch to the firmwares entry point. Two things need to be implemented in the firmware for the bootloader to work correctly. One is the reset of the boot counter, which should happen at every successful boot and the second is to change the primary boot variable after a successful firmware upgrade.
