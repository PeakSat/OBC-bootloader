OBJS	= bootloader.o
SOURCE	= bootloader.c
HEADER	= memory_map.h
OUT	= bootloader.elf
CC	 = arm-none-eabi-gcc -nostdlib -Wl,-Tbootloader.ld
FLAGS	 = -c -mcpu=cortex-m7
LFLAGS	 =

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

bootloader.o: bootloader.c
	$(CC) $(FLAGS) bootloader.c


clean:
	rm -f $(OBJS) $(OUT)

	# $(BUILD_DIR)/$(PROJECT)-app.bin: $(BUILD_DIR)/$(PROJECT)-app.elf
	#   $(OCPY) $< $@ -O binary
	#   $(SZ) $<
	#
	# $(BUILD_DIR)/$(PROJECT)-boot.bin: $(BUILD_DIR)/$(PROJECT)-boot.elf
	#   $(OCPY) --pad-to=0x4000 --gap-fill=0xFF -O binary $< $@
	#   $(SZ) $<
