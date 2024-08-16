########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND cmsis_COMPONENT_NAMES CMSIS::Core)
list(REMOVE_DUPLICATES cmsis_COMPONENT_NAMES)
if(DEFINED cmsis_FIND_DEPENDENCY_NAMES)
  list(APPEND cmsis_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES cmsis_FIND_DEPENDENCY_NAMES)
else()
  set(cmsis_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(cmsis_PACKAGE_FOLDER_DEBUG "C:/Users/iliaz/.conan2/p/b/cmsis16341cc31eb27/p")
set(cmsis_BUILD_MODULES_PATHS_DEBUG )


set(cmsis_INCLUDE_DIRS_DEBUG "${cmsis_PACKAGE_FOLDER_DEBUG}/CMSIS/Core/Include/")
set(cmsis_RES_DIRS_DEBUG )
set(cmsis_DEFINITIONS_DEBUG )
set(cmsis_SHARED_LINK_FLAGS_DEBUG )
set(cmsis_EXE_LINK_FLAGS_DEBUG )
set(cmsis_OBJECTS_DEBUG )
set(cmsis_COMPILE_DEFINITIONS_DEBUG )
set(cmsis_COMPILE_OPTIONS_C_DEBUG )
set(cmsis_COMPILE_OPTIONS_CXX_DEBUG )
set(cmsis_LIB_DIRS_DEBUG "${cmsis_PACKAGE_FOLDER_DEBUG}/lib")
set(cmsis_BIN_DIRS_DEBUG )
set(cmsis_LIBRARY_TYPE_DEBUG UNKNOWN)
set(cmsis_IS_HOST_WINDOWS_DEBUG 0)
set(cmsis_LIBS_DEBUG )
set(cmsis_SYSTEM_LIBS_DEBUG )
set(cmsis_FRAMEWORK_DIRS_DEBUG )
set(cmsis_FRAMEWORKS_DEBUG )
set(cmsis_BUILD_DIRS_DEBUG )
set(cmsis_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(cmsis_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${cmsis_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${cmsis_COMPILE_OPTIONS_C_DEBUG}>")
set(cmsis_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${cmsis_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${cmsis_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${cmsis_EXE_LINK_FLAGS_DEBUG}>")


set(cmsis_COMPONENTS_DEBUG CMSIS::Core)
########### COMPONENT CMSIS::Core VARIABLES ############################################

set(cmsis_CMSIS_Core_INCLUDE_DIRS_DEBUG "${cmsis_PACKAGE_FOLDER_DEBUG}/CMSIS/Core/Include/")
set(cmsis_CMSIS_Core_LIB_DIRS_DEBUG "${cmsis_PACKAGE_FOLDER_DEBUG}/lib")
set(cmsis_CMSIS_Core_BIN_DIRS_DEBUG )
set(cmsis_CMSIS_Core_LIBRARY_TYPE_DEBUG UNKNOWN)
set(cmsis_CMSIS_Core_IS_HOST_WINDOWS_DEBUG 0)
set(cmsis_CMSIS_Core_RES_DIRS_DEBUG )
set(cmsis_CMSIS_Core_DEFINITIONS_DEBUG )
set(cmsis_CMSIS_Core_OBJECTS_DEBUG )
set(cmsis_CMSIS_Core_COMPILE_DEFINITIONS_DEBUG )
set(cmsis_CMSIS_Core_COMPILE_OPTIONS_C_DEBUG "")
set(cmsis_CMSIS_Core_COMPILE_OPTIONS_CXX_DEBUG "")
set(cmsis_CMSIS_Core_LIBS_DEBUG )
set(cmsis_CMSIS_Core_SYSTEM_LIBS_DEBUG )
set(cmsis_CMSIS_Core_FRAMEWORK_DIRS_DEBUG )
set(cmsis_CMSIS_Core_FRAMEWORKS_DEBUG )
set(cmsis_CMSIS_Core_DEPENDENCIES_DEBUG )
set(cmsis_CMSIS_Core_SHARED_LINK_FLAGS_DEBUG )
set(cmsis_CMSIS_Core_EXE_LINK_FLAGS_DEBUG )
set(cmsis_CMSIS_Core_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(cmsis_CMSIS_Core_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${cmsis_CMSIS_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${cmsis_CMSIS_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${cmsis_CMSIS_Core_EXE_LINK_FLAGS_DEBUG}>
)
set(cmsis_CMSIS_Core_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${cmsis_CMSIS_Core_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${cmsis_CMSIS_Core_COMPILE_OPTIONS_C_DEBUG}>")