cmake_minimum_required(VERSION 3.19.2)

# Disable CMake's compiler test for cross-compilation
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# Specify the cross-compiler
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)

# Set the project name and specify the languages
project(BOOTLOADER C CXX ASM)

set(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/linker/bootloader.ld)

add_definitions(-DARM_MATH_CM7 -DARM_MATH_MATRIX_CHECK -DARM_MATH_ROUNDING -D__FPU_PRESENT=1)
SET(CMAKE_EXE_LINKER_FLAGS_INIT "-Wl,-gc-sections,--print-memory-usage -T ${LINKER_SCRIPT}")


include_directories(.)
include_directories(src)
include_directories(include)
include_directories(linker)


# Define the target
#add_executable(bootloader.elf ${SRC_FILES})
add_executable(${PROJECT_NAME}.elf ${SOURCES} ${LINKER_SCRIPT} ${EXTRA_SOURCES})

set(CMAKE_EXE_LINKER_FLAGS
        "${CMAKE_EXE_LINKER_FLAGS_INIT} -Wl,-Map=${PROJECT_BINARY_DIR}/${PROJECT_NAME}.map")
