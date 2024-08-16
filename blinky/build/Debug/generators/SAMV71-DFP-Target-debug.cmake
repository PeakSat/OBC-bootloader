# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(samv71-dfp_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(samv71-dfp_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_FRAMEWORKS_DEBUG}" "${samv71-dfp_FRAMEWORK_DIRS_DEBUG}")

set(samv71-dfp_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET samv71-dfp_DEPS_TARGET)
    add_library(samv71-dfp_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET samv71-dfp_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${samv71-dfp_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${samv71-dfp_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:CMSIS::Core;samv71-dfp::Core>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### samv71-dfp_DEPS_TARGET to all of them
conan_package_library_targets("${samv71-dfp_LIBS_DEBUG}"    # libraries
                              "${samv71-dfp_LIB_DIRS_DEBUG}" # package_libdir
                              "${samv71-dfp_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_DEPS_TARGET
                              samv71-dfp_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "samv71-dfp"    # package_name
                              "${samv71-dfp_NO_SONAME_MODE_DEBUG}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${samv71-dfp_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT samv71-dfp::SAMV71Q21B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q21B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q21B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q21B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q21B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q20B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q20B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q20B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q20B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q20B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q19B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q19B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q19B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q19B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q19B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N21B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N21B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N21B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N21B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N21B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N20B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N20B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N20B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N20B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N20B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N19B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N19B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N19B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N19B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N19B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J21B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J21B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J21B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J21B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J21B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J20B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J20B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J20B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J20B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J20B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J19B::Startup #############

        set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J19B_Startup"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J19B::Startup
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J19B::Startup
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J19B::Startup APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Startup APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Startup APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Startup APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Startup APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q21B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q21B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q21B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q20B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q20B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q20B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q19B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71Q19B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71Q19B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N21B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N21B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N21B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N20B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N20B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N20B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N19B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71N19B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71N19B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J21B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J21B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J21B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J20B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J20B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J20B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J19B::Linker::SRAM #############

        set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::SRAM APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::SAMV71J19B::Linker::Flash #############

        set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPS_TARGET
                              samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash"
                              "${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::SAMV71J19B::Linker::Flash APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_OPTIONS_DEBUG}>)

    ########## COMPONENT samv71-dfp::Core #############

        set(samv71-dfp_samv71-dfp_Core_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(samv71-dfp_samv71-dfp_Core_FRAMEWORKS_FOUND_DEBUG "${samv71-dfp_samv71-dfp_Core_FRAMEWORKS_DEBUG}" "${samv71-dfp_samv71-dfp_Core_FRAMEWORK_DIRS_DEBUG}")

        set(samv71-dfp_samv71-dfp_Core_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET samv71-dfp_samv71-dfp_Core_DEPS_TARGET)
            add_library(samv71-dfp_samv71-dfp_Core_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET samv71-dfp_samv71-dfp_Core_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_DEPENDENCIES_DEBUG}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'samv71-dfp_samv71-dfp_Core_DEPS_TARGET' to all of them
        conan_package_library_targets("${samv71-dfp_samv71-dfp_Core_LIBS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_Core_LIB_DIRS_DEBUG}"
                              "${samv71-dfp_samv71-dfp_Core_BIN_DIRS_DEBUG}" # package_bindir
                              "${samv71-dfp_samv71-dfp_Core_LIBRARY_TYPE_DEBUG}"
                              "${samv71-dfp_samv71-dfp_Core_IS_HOST_WINDOWS_DEBUG}"
                              samv71-dfp_samv71-dfp_Core_DEPS_TARGET
                              samv71-dfp_samv71-dfp_Core_LIBRARIES_TARGETS
                              "_DEBUG"
                              "samv71-dfp_samv71-dfp_Core"
                              "${samv71-dfp_samv71-dfp_Core_NO_SONAME_MODE_DEBUG}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET samv71-dfp::Core
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_LIBRARIES_TARGETS}>
                     )

        if("${samv71-dfp_samv71-dfp_Core_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET samv71-dfp::Core
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         samv71-dfp_samv71-dfp_Core_DEPS_TARGET)
        endif()

        set_property(TARGET samv71-dfp::Core APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_LINKER_FLAGS_DEBUG}>)
        set_property(TARGET samv71-dfp::Core APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_INCLUDE_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::Core APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_LIB_DIRS_DEBUG}>)
        set_property(TARGET samv71-dfp::Core APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_COMPILE_DEFINITIONS_DEBUG}>)
        set_property(TARGET samv71-dfp::Core APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${samv71-dfp_samv71-dfp_Core_COMPILE_OPTIONS_DEBUG}>)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q21B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q20B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q19B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N21B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N20B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N19B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J21B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J20B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J19B::Startup)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q21B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q21B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q20B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q20B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q19B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71Q19B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N21B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N21B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N20B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N20B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N19B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71N19B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J21B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J21B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J20B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J20B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J19B::Linker::SRAM)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::SAMV71J19B::Linker::Flash)
    set_property(TARGET samv71-dfp::samv71-dfp APPEND PROPERTY INTERFACE_LINK_LIBRARIES samv71-dfp::Core)

########## For the modules (FindXXX)
set(samv71-dfp_LIBRARIES_DEBUG samv71-dfp::samv71-dfp)
