# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/SAMV71-DFP-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${samv71-dfp_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${SAMV71-DFP_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET samv71-dfp::samv71-dfp)
    add_library(samv71-dfp::samv71-dfp INTERFACE IMPORTED)
    message(${SAMV71-DFP_MESSAGE_MODE} "Conan: Target declared 'samv71-dfp::samv71-dfp'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/SAMV71-DFP-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()