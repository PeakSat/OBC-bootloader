# !/bin/bash

make
arm-none-eabi-objcopy -O binary bootloader.elf bootloader.bin
# dd if=/dev/zero bs=1 count=$((24576 - $(stat -c%s "bootloader.bin"))) | tr '\0' '\377' >> bootloader.bin

truncate -s 24K bootloader.bin
cat bootloader.bin /mnt/c/users/iliaz/desktop/OBC-bootloader/blinky_binaries/entry_point_0x406000/1s_Delay/blinky.bin > final.bin
