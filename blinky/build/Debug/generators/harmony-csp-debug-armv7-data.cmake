########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(harmony-csp_COMPONENT_NAMES "")
if(DEFINED harmony-csp_FIND_DEPENDENCY_NAMES)
  list(APPEND harmony-csp_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES harmony-csp_FIND_DEPENDENCY_NAMES)
else()
  set(harmony-csp_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(harmony-csp_PACKAGE_FOLDER_DEBUG "C:/Users/iliaz/.conan2/p/b/harmobdba2cfa341ea/p")
set(harmony-csp_BUILD_MODULES_PATHS_DEBUG )


set(harmony-csp_INCLUDE_DIRS_DEBUG "${harmony-csp_PACKAGE_FOLDER_DEBUG}/include")
set(harmony-csp_RES_DIRS_DEBUG )
set(harmony-csp_DEFINITIONS_DEBUG )
set(harmony-csp_SHARED_LINK_FLAGS_DEBUG )
set(harmony-csp_EXE_LINK_FLAGS_DEBUG )
set(harmony-csp_OBJECTS_DEBUG )
set(harmony-csp_COMPILE_DEFINITIONS_DEBUG )
set(harmony-csp_COMPILE_OPTIONS_C_DEBUG )
set(harmony-csp_COMPILE_OPTIONS_CXX_DEBUG )
set(harmony-csp_LIB_DIRS_DEBUG "${harmony-csp_PACKAGE_FOLDER_DEBUG}/lib")
set(harmony-csp_BIN_DIRS_DEBUG )
set(harmony-csp_LIBRARY_TYPE_DEBUG UNKNOWN)
set(harmony-csp_IS_HOST_WINDOWS_DEBUG 0)
set(harmony-csp_LIBS_DEBUG )
set(harmony-csp_SYSTEM_LIBS_DEBUG )
set(harmony-csp_FRAMEWORK_DIRS_DEBUG )
set(harmony-csp_FRAMEWORKS_DEBUG )
set(harmony-csp_BUILD_DIRS_DEBUG )
set(harmony-csp_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(harmony-csp_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${harmony-csp_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${harmony-csp_COMPILE_OPTIONS_C_DEBUG}>")
set(harmony-csp_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${harmony-csp_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${harmony-csp_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${harmony-csp_EXE_LINK_FLAGS_DEBUG}>")


set(harmony-csp_COMPONENTS_DEBUG )