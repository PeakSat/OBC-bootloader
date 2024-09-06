cmake_minimum_required(VERSION 3.19.2)

# Disable CMake's compiler test for cross-compilation
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# Specify the cross-compiler
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER arm-none-eabi-gcc -nostdlib)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)

# Project name
project(Bootloader C CXX ASM)

# Add include directories (for header files)
include_directories(include)

# Add all necessary compilation options
add_compile_options(-c -mcpu=cortex-m7)

# Add linker script
set(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/linker/bootloader.ld)

# Add the source files
add_executable(bootloader src/bootloader.c)

# Linker options: specify the linker script
get_filename_component(LINKER_SCRIPT_PATH ${LINKER_SCRIPT} ABSOLUTE)
target_link_options(bootloader PRIVATE -T ${LINKER_SCRIPT_PATH})

# Set output directory for the build
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Set the output file name with the .elf extension
set_target_properties(bootloader PROPERTIES OUTPUT_NAME "reset_counter.elf")
