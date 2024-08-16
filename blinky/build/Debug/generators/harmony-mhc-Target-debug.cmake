# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(harmony-mhc_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(harmony-mhc_FRAMEWORKS_FOUND_DEBUG "${harmony-mhc_FRAMEWORKS_DEBUG}" "${harmony-mhc_FRAMEWORK_DIRS_DEBUG}")

set(harmony-mhc_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET harmony-mhc_DEPS_TARGET)
    add_library(harmony-mhc_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET harmony-mhc_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${harmony-mhc_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${harmony-mhc_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### harmony-mhc_DEPS_TARGET to all of them
conan_package_library_targets("${harmony-mhc_LIBS_DEBUG}"    # libraries
                              "${harmony-mhc_LIB_DIRS_DEBUG}" # package_libdir
                              "${harmony-mhc_BIN_DIRS_DEBUG}" # package_bindir
                              "${harmony-mhc_LIBRARY_TYPE_DEBUG}"
                              "${harmony-mhc_IS_HOST_WINDOWS_DEBUG}"
                              harmony-mhc_DEPS_TARGET
                              harmony-mhc_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "harmony-mhc"    # package_name
                              "${harmony-mhc_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${harmony-mhc_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET harmony-mhc::harmony-mhc
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${harmony-mhc_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${harmony-mhc_LIBRARIES_TARGETS}>
                 )

    if("${harmony-mhc_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET harmony-mhc::harmony-mhc
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     harmony-mhc_DEPS_TARGET)
    endif()

    set_property(TARGET harmony-mhc::harmony-mhc
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${harmony-mhc_LINKER_FLAGS_DEBUG}>)
    set_property(TARGET harmony-mhc::harmony-mhc
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${harmony-mhc_INCLUDE_DIRS_DEBUG}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET harmony-mhc::harmony-mhc
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${harmony-mhc_LIB_DIRS_DEBUG}>)
    set_property(TARGET harmony-mhc::harmony-mhc
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${harmony-mhc_COMPILE_DEFINITIONS_DEBUG}>)
    set_property(TARGET harmony-mhc::harmony-mhc
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${harmony-mhc_COMPILE_OPTIONS_DEBUG}>)

########## For the modules (FindXXX)
set(harmony-mhc_LIBRARIES_DEBUG harmony-mhc::harmony-mhc)
