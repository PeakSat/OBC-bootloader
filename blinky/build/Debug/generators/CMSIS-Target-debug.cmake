# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(cmsis_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(cmsis_FRAMEWORKS_FOUND_DEBUG "${cmsis_FRAMEWORKS_DEBUG}" "${cmsis_FRAMEWORK_DIRS_DEBUG}")

set(cmsis_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET cmsis_DEPS_TARGET)
    add_library(cmsis_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET cmsis_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${cmsis_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${cmsis_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### cmsis_DEPS_TARGET to all of them
conan_package_library_targets("${cmsis_LIBS_DEBUG}"    # libraries
                              "${cmsis_LIB_DIRS_DEBUG}" # package_libdir
                              "${cmsis_BIN_DIRS_DEBUG}" # package_bindir
                              "${cmsis_LIBRARY_TYPE_DEBUG}"
                              "${cmsis_IS_HOST_WINDOWS_DEBUG}"
                              cmsis_DEPS_TARGET
                              cmsis_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "cmsis"    # package_name
                              "${cmsis_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${cmsis_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT CMSIS::Core #############

        set(cmsis_CMSIS_Core_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(cmsis_CMSIS_Core_FRAMEWORKS_FOUND_DEBUG "${cmsis_CMSIS_Core_FRAMEWORKS_DEBUG}" "${cmsis_CMSIS_Core_FRAMEWORK_DIRS_DEBUG}")

        set(cmsis_CMSIS_Core_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET cmsis_CMSIS_Core_DEPS_TARGET)
            add_library(cmsis_CMSIS_Core_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET cmsis_CMSIS_Core_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'cmsis_CMSIS_Core_DEPS_TARGET' to all of them
        conan_package_library_targets("${cmsis_CMSIS_Core_LIBS_DEBUG}"
                              "${cmsis_CMSIS_Core_LIB_DIRS_DEBUG}"
                              "${cmsis_CMSIS_Core_BIN_DIRS_DEBUG}" # package_bindir
                              "${cmsis_CMSIS_Core_LIBRARY_TYPE_DEBUG}"
                              "${cmsis_CMSIS_Core_IS_HOST_WINDOWS_DEBUG}"
                              cmsis_CMSIS_Core_DEPS_TARGET
                              cmsis_CMSIS_Core_LIBRARIES_TARGETS
                              "_DEBUG"
                              "cmsis_CMSIS_Core"
                              "${cmsis_CMSIS_Core_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET CMSIS::Core
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_LIBRARIES_TARGETS}>
                     )

        if("${cmsis_CMSIS_Core_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET CMSIS::Core
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         cmsis_CMSIS_Core_DEPS_TARGET)
        endif()

        set_property(TARGET CMSIS::Core APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET CMSIS::Core APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET CMSIS::Core APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_LIB_DIRS_DEBUG}>)
        set_property(TARGET CMSIS::Core APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET CMSIS::Core APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${cmsis_CMSIS_Core_COMPILE_OPTIONS_DEBUG}>)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET cmsis::cmsis APPEND PROPERTY INTERFACE_LINK_LIBRARIES CMSIS::Core)

########## For the modules (FindXXX)
set(cmsis_LIBRARIES_DEBUG cmsis::cmsis)
