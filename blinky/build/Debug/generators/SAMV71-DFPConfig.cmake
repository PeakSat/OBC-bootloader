########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(SAMV71-DFP_FIND_QUIETLY)
    set(SAMV71-DFP_MESSAGE_MODE VERBOSE)
else()
    set(SAMV71-DFP_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/SAMV71-DFPTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${samv71-dfp_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(SAMV71-DFP_VERSION_STRING "4.9.117")
set(SAMV71-DFP_INCLUDE_DIRS ${samv71-dfp_INCLUDE_DIRS_DEBUG} )
set(SAMV71-DFP_INCLUDE_DIR ${samv71-dfp_INCLUDE_DIRS_DEBUG} )
set(SAMV71-DFP_LIBRARIES ${samv71-dfp_LIBRARIES_DEBUG} )
set(SAMV71-DFP_DEFINITIONS ${samv71-dfp_DEFINITIONS_DEBUG} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${samv71-dfp_BUILD_MODULES_PATHS_DEBUG} )
    message(${SAMV71-DFP_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


