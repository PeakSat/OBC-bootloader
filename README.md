# READY FOR TESTING
A dual firmware bootloader for the ATSAMV71Q21B

### HOW TO TEST
bootloader/final.bin includes the bootloader and a blinky with 1s delay as the first firmware.
blinky_binaries/entry_point_0x503000/0.2s_Delay/blinky.bin is the second firmware with a 0.2s delay and the entry point beeing at 0x503000.
To upload each firmwre you run openocd in a terminal:
```shell
 openocd -f atmel_samv71_xplained_ultra.cfg
```
connect to the board through telnet with:
```shell
 telnet localhost 4444
```
and upload the firmwares with:
```shell
 program final.bin 0x00400000 verify reset exit
```
The final.bin should start at 0x400000 as shown, but the blinky.bin should start at 0x503000.

After uploading the firmwares, you should be able to boot from the second firmware by reseting the board 3 times.
