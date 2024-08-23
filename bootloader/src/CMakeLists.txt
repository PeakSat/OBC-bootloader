# Collect all source files
set(SRC_FILES
    ${CMAKE_SOURCE_DIR}/src/bootloader.c
    # Add other source files here
)

# Ensure the root CMakeLists.txt will have access to SRC_FILES
set(SRC_FILES ${SRC_FILES} PARENT_SCOPE)
