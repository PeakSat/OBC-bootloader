########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(CMSIS_FIND_QUIETLY)
    set(CMSIS_MESSAGE_MODE VERBOSE)
else()
    set(CMSIS_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/CMSISTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${cmsis_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(CMSIS_VERSION_STRING "5.4.0")
set(CMSIS_INCLUDE_DIRS ${cmsis_INCLUDE_DIRS_DEBUG} )
set(CMSIS_INCLUDE_DIR ${cmsis_INCLUDE_DIRS_DEBUG} )
set(CMSIS_LIBRARIES ${cmsis_LIBRARIES_DEBUG} )
set(CMSIS_DEFINITIONS ${cmsis_DEFINITIONS_DEBUG} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${cmsis_BUILD_MODULES_PATHS_DEBUG} )
    message(${CMSIS_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


