# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(harmony-csp_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(harmony-csp_FRAMEWORKS_FOUND_DEBUG "${harmony-csp_FRAMEWORKS_DEBUG}" "${harmony-csp_FRAMEWORK_DIRS_DEBUG}")

set(harmony-csp_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET harmony-csp_DEPS_TARGET)
    add_library(harmony-csp_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET harmony-csp_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${harmony-csp_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${harmony-csp_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### harmony-csp_DEPS_TARGET to all of them
conan_package_library_targets("${harmony-csp_LIBS_DEBUG}"    # libraries
                              "${harmony-csp_LIB_DIRS_DEBUG}" # package_libdir
                              "${harmony-csp_BIN_DIRS_DEBUG}" # package_bindir
                              "${harmony-csp_LIBRARY_TYPE_DEBUG}"
                              "${harmony-csp_IS_HOST_WINDOWS_DEBUG}"
                              harmony-csp_DEPS_TARGET
                              harmony-csp_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "harmony-csp"    # package_name
                              "${harmony-csp_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${harmony-csp_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET harmony-csp::harmony-csp
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${harmony-csp_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${harmony-csp_LIBRARIES_TARGETS}>
                 )

    if("${harmony-csp_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET harmony-csp::harmony-csp
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     harmony-csp_DEPS_TARGET)
    endif()

    set_property(TARGET harmony-csp::harmony-csp
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${harmony-csp_LINKER_FLAGS_DEBUG}>)
    set_property(TARGET harmony-csp::harmony-csp
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${harmony-csp_INCLUDE_DIRS_DEBUG}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET harmony-csp::harmony-csp
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${harmony-csp_LIB_DIRS_DEBUG}>)
    set_property(TARGET harmony-csp::harmony-csp
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${harmony-csp_COMPILE_DEFINITIONS_DEBUG}>)
    set_property(TARGET harmony-csp::harmony-csp
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${harmony-csp_COMPILE_OPTIONS_DEBUG}>)

########## For the modules (FindXXX)
set(harmony-csp_LIBRARIES_DEBUG harmony-csp::harmony-csp)
