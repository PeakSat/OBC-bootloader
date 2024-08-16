########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(harmony-mhc_COMPONENT_NAMES "")
if(DEFINED harmony-mhc_FIND_DEPENDENCY_NAMES)
  list(APPEND harmony-mhc_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES harmony-mhc_FIND_DEPENDENCY_NAMES)
else()
  set(harmony-mhc_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(harmony-mhc_PACKAGE_FOLDER_DEBUG "C:/Users/iliaz/.conan2/p/b/harmo0d871bfe8cc70/p")
set(harmony-mhc_BUILD_MODULES_PATHS_DEBUG )


set(harmony-mhc_INCLUDE_DIRS_DEBUG "${harmony-mhc_PACKAGE_FOLDER_DEBUG}/include")
set(harmony-mhc_RES_DIRS_DEBUG )
set(harmony-mhc_DEFINITIONS_DEBUG )
set(harmony-mhc_SHARED_LINK_FLAGS_DEBUG )
set(harmony-mhc_EXE_LINK_FLAGS_DEBUG )
set(harmony-mhc_OBJECTS_DEBUG )
set(harmony-mhc_COMPILE_DEFINITIONS_DEBUG )
set(harmony-mhc_COMPILE_OPTIONS_C_DEBUG )
set(harmony-mhc_COMPILE_OPTIONS_CXX_DEBUG )
set(harmony-mhc_LIB_DIRS_DEBUG "${harmony-mhc_PACKAGE_FOLDER_DEBUG}/lib")
set(harmony-mhc_BIN_DIRS_DEBUG )
set(harmony-mhc_LIBRARY_TYPE_DEBUG UNKNOWN)
set(harmony-mhc_IS_HOST_WINDOWS_DEBUG 0)
set(harmony-mhc_LIBS_DEBUG )
set(harmony-mhc_SYSTEM_LIBS_DEBUG )
set(harmony-mhc_FRAMEWORK_DIRS_DEBUG )
set(harmony-mhc_FRAMEWORKS_DEBUG )
set(harmony-mhc_BUILD_DIRS_DEBUG )
set(harmony-mhc_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(harmony-mhc_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${harmony-mhc_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${harmony-mhc_COMPILE_OPTIONS_C_DEBUG}>")
set(harmony-mhc_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${harmony-mhc_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${harmony-mhc_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${harmony-mhc_EXE_LINK_FLAGS_DEBUG}>")


set(harmony-mhc_COMPONENTS_DEBUG )