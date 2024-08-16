########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(harmony_COMPONENT_NAMES "")
if(DEFINED harmony_FIND_DEPENDENCY_NAMES)
  list(APPEND harmony_FIND_DEPENDENCY_NAMES SAMV71-DFP CMSIS harmony-csp harmony-mhc)
  list(REMOVE_DUPLICATES harmony_FIND_DEPENDENCY_NAMES)
else()
  set(harmony_FIND_DEPENDENCY_NAMES SAMV71-DFP CMSIS harmony-csp harmony-mhc)
endif()
set(SAMV71-DFP_FIND_MODE "NO_MODULE")
set(CMSIS_FIND_MODE "NO_MODULE")
set(harmony-csp_FIND_MODE "NO_MODULE")
set(harmony-mhc_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(harmony_PACKAGE_FOLDER_DEBUG "C:/Users/iliaz/.conan2/p/b/harmo8f98c14cabda9/p")
set(harmony_BUILD_MODULES_PATHS_DEBUG "${harmony_PACKAGE_FOLDER_DEBUG}/cmake/MHCHelper.cmake")


set(harmony_INCLUDE_DIRS_DEBUG "${harmony_PACKAGE_FOLDER_DEBUG}/include")
set(harmony_RES_DIRS_DEBUG )
set(harmony_DEFINITIONS_DEBUG )
set(harmony_SHARED_LINK_FLAGS_DEBUG )
set(harmony_EXE_LINK_FLAGS_DEBUG )
set(harmony_OBJECTS_DEBUG )
set(harmony_COMPILE_DEFINITIONS_DEBUG )
set(harmony_COMPILE_OPTIONS_C_DEBUG )
set(harmony_COMPILE_OPTIONS_CXX_DEBUG )
set(harmony_LIB_DIRS_DEBUG "${harmony_PACKAGE_FOLDER_DEBUG}/lib")
set(harmony_BIN_DIRS_DEBUG )
set(harmony_LIBRARY_TYPE_DEBUG UNKNOWN)
set(harmony_IS_HOST_WINDOWS_DEBUG 0)
set(harmony_LIBS_DEBUG )
set(harmony_SYSTEM_LIBS_DEBUG )
set(harmony_FRAMEWORK_DIRS_DEBUG )
set(harmony_FRAMEWORKS_DEBUG )
set(harmony_BUILD_DIRS_DEBUG )
set(harmony_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(harmony_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${harmony_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${harmony_COMPILE_OPTIONS_C_DEBUG}>")
set(harmony_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${harmony_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${harmony_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${harmony_EXE_LINK_FLAGS_DEBUG}>")


set(harmony_COMPONENTS_DEBUG )