# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/harmony-csp-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${harmony-csp_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${harmony-csp_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET harmony-csp::harmony-csp)
    add_library(harmony-csp::harmony-csp INTERFACE IMPORTED)
    message(${harmony-csp_MESSAGE_MODE} "Conan: Target declared 'harmony-csp::harmony-csp'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/harmony-csp-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()