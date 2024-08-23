# !/bin/bash

make
echo "make"
arm-none-eabi-objcopy -O binary bootloader.elf bootloader.bin
echo "objcopy"
# dd if=/dev/zero bs=1 count=$((24576 - $(stat -c%s "bootloader.bin"))) | tr '\0' '\377' >> bootloader.bin

truncate -s 24K bootloader.bin
echo "truncate"
cat bootloader.bin /mnt/c/users/iliaz/desktop/OBC-bootloader/binaries/entry_point_0x406000/blinky_1s_Delay/blinky.bin > final.bin
echo "cat"
