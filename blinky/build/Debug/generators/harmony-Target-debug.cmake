# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(harmony_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(harmony_FRAMEWORKS_FOUND_DEBUG "${harmony_FRAMEWORKS_DEBUG}" "${harmony_FRAMEWORK_DIRS_DEBUG}")

set(harmony_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET harmony_DEPS_TARGET)
    add_library(harmony_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET harmony_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${harmony_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${harmony_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:samv71-dfp::samv71-dfp;cmsis::cmsis;harmony-csp::harmony-csp;harmony-mhc::harmony-mhc>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### harmony_DEPS_TARGET to all of them
conan_package_library_targets("${harmony_LIBS_DEBUG}"    # libraries
                              "${harmony_LIB_DIRS_DEBUG}" # package_libdir
                              "${harmony_BIN_DIRS_DEBUG}" # package_bindir
                              "${harmony_LIBRARY_TYPE_DEBUG}"
                              "${harmony_IS_HOST_WINDOWS_DEBUG}"
                              harmony_DEPS_TARGET
                              harmony_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "harmony"    # package_name
                              "${harmony_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${harmony_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET harmony::harmony
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${harmony_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${harmony_LIBRARIES_TARGETS}>
                 )

    if("${harmony_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET harmony::harmony
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     harmony_DEPS_TARGET)
    endif()

    set_property(TARGET harmony::harmony
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${harmony_LINKER_FLAGS_DEBUG}>)
    set_property(TARGET harmony::harmony
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${harmony_INCLUDE_DIRS_DEBUG}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET harmony::harmony
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Debug>:${harmony_LIB_DIRS_DEBUG}>)
    set_property(TARGET harmony::harmony
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${harmony_COMPILE_DEFINITIONS_DEBUG}>)
    set_property(TARGET harmony::harmony
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${harmony_COMPILE_OPTIONS_DEBUG}>)

########## For the modules (FindXXX)
set(harmony_LIBRARIES_DEBUG harmony::harmony)
