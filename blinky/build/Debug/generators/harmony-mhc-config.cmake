########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(harmony-mhc_FIND_QUIETLY)
    set(harmony-mhc_MESSAGE_MODE VERBOSE)
else()
    set(harmony-mhc_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/harmony-mhcTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${harmony-mhc_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(harmony-mhc_VERSION_STRING "3.8.5")
set(harmony-mhc_INCLUDE_DIRS ${harmony-mhc_INCLUDE_DIRS_DEBUG} )
set(harmony-mhc_INCLUDE_DIR ${harmony-mhc_INCLUDE_DIRS_DEBUG} )
set(harmony-mhc_LIBRARIES ${harmony-mhc_LIBRARIES_DEBUG} )
set(harmony-mhc_DEFINITIONS ${harmony-mhc_DEFINITIONS_DEBUG} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${harmony-mhc_BUILD_MODULES_PATHS_DEBUG} )
    message(${harmony-mhc_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


