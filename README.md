## Brief
The bootloaders job is to choose the right firmware to boot from. During development though, there might be only one firmware uploaded and it would be very inconvenient to re-upload the bootloader each time the boot counter reaches the threshold. This project build a binary with an entry point of 0x00503000 (where the second firmware should start), which resets the boot counter, sets the first firmware as primary and branches to the first firmware. This way the first firmware will be executed no matter what, which should make it easier to develop while using the bootloader.

## Usage


### 1st option(easiest)

There is e precompiled binary available (bin/reset_counter.bin) . The only thing necessary to use it is to upload it correctly. One easy way to do it is to use OpenOCD. If you already have it you can just run the command:

```shell
openocd -f atmel_samv71_xplained_ultra.cfg -c "program reset_counter.bin 0x00503000 verify reset exit"
```

within the bin folder.

### 2nd option, build it yourself.

Go to reset_counter_project/build and run

```shell
cmake .. -G "MinGW Makefiles"
```

This should build the necessary make files within that directory. Then run

```shell
mingw32-make
```

to compile the project. The resulting elf can be uploaded as is or it can be stripped to a binary using

```shell
arm-none-eabi-objcopy -O binary reset_counter.elf reset_counter.bin
```

It can then be uploaded to the MCU using the OpenOCD command above.
