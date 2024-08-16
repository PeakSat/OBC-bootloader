# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/CMSIS-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${cmsis_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${CMSIS_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET cmsis::cmsis)
    add_library(cmsis::cmsis INTERFACE IMPORTED)
    message(${CMSIS_MESSAGE_MODE} "Conan: Target declared 'cmsis::cmsis'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/CMSIS-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()