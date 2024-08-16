########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND samv71-dfp_COMPONENT_NAMES samv71-dfp::Core samv71-dfp::SAMV71J19B::Linker::Flash samv71-dfp::SAMV71J19B::Linker::SRAM samv71-dfp::SAMV71J20B::Linker::Flash samv71-dfp::SAMV71J20B::Linker::SRAM samv71-dfp::SAMV71J21B::Linker::Flash samv71-dfp::SAMV71J21B::Linker::SRAM samv71-dfp::SAMV71N19B::Linker::Flash samv71-dfp::SAMV71N19B::Linker::SRAM samv71-dfp::SAMV71N20B::Linker::Flash samv71-dfp::SAMV71N20B::Linker::SRAM samv71-dfp::SAMV71N21B::Linker::Flash samv71-dfp::SAMV71N21B::Linker::SRAM samv71-dfp::SAMV71Q19B::Linker::Flash samv71-dfp::SAMV71Q19B::Linker::SRAM samv71-dfp::SAMV71Q20B::Linker::Flash samv71-dfp::SAMV71Q20B::Linker::SRAM samv71-dfp::SAMV71Q21B::Linker::Flash samv71-dfp::SAMV71Q21B::Linker::SRAM samv71-dfp::SAMV71J19B::Startup samv71-dfp::SAMV71J20B::Startup samv71-dfp::SAMV71J21B::Startup samv71-dfp::SAMV71N19B::Startup samv71-dfp::SAMV71N20B::Startup samv71-dfp::SAMV71N21B::Startup samv71-dfp::SAMV71Q19B::Startup samv71-dfp::SAMV71Q20B::Startup samv71-dfp::SAMV71Q21B::Startup)
list(REMOVE_DUPLICATES samv71-dfp_COMPONENT_NAMES)
if(DEFINED samv71-dfp_FIND_DEPENDENCY_NAMES)
  list(APPEND samv71-dfp_FIND_DEPENDENCY_NAMES CMSIS)
  list(REMOVE_DUPLICATES samv71-dfp_FIND_DEPENDENCY_NAMES)
else()
  set(samv71-dfp_FIND_DEPENDENCY_NAMES CMSIS)
endif()
set(CMSIS_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(samv71-dfp_PACKAGE_FOLDER_DEBUG "C:/Users/iliaz/.conan2/p/b/samv7b0965e3ee186d/p")
set(samv71-dfp_BUILD_MODULES_PATHS_DEBUG )


set(samv71-dfp_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_RES_DIRS_DEBUG )
set(samv71-dfp_DEFINITIONS_DEBUG )
set(samv71-dfp_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q21b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q21b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q20b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q20b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q19b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q19b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n21b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n21b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n20b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n20b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n19b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n19b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j21b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j21b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j20b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j20b_flash.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j19b_sram.ld;-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j19b_flash.ld")
set(samv71-dfp_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71q21b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71q20b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71q19b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71n21b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71n20b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71n19b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71j21b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71j20b.c.obj"
			"${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71j19b.c.obj")
set(samv71-dfp_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_COMPILE_OPTIONS_C_DEBUG )
set(samv71-dfp_COMPILE_OPTIONS_CXX_DEBUG )
set(samv71-dfp_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_BIN_DIRS_DEBUG )
set(samv71-dfp_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_LIBS_DEBUG )
set(samv71-dfp_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_FRAMEWORKS_DEBUG )
set(samv71-dfp_BUILD_DIRS_DEBUG )
set(samv71-dfp_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(samv71-dfp_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_COMPILE_OPTIONS_C_DEBUG}>")
set(samv71-dfp_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_EXE_LINK_FLAGS_DEBUG}>")


set(samv71-dfp_COMPONENTS_DEBUG samv71-dfp::Core samv71-dfp::SAMV71J19B::Linker::Flash samv71-dfp::SAMV71J19B::Linker::SRAM samv71-dfp::SAMV71J20B::Linker::Flash samv71-dfp::SAMV71J20B::Linker::SRAM samv71-dfp::SAMV71J21B::Linker::Flash samv71-dfp::SAMV71J21B::Linker::SRAM samv71-dfp::SAMV71N19B::Linker::Flash samv71-dfp::SAMV71N19B::Linker::SRAM samv71-dfp::SAMV71N20B::Linker::Flash samv71-dfp::SAMV71N20B::Linker::SRAM samv71-dfp::SAMV71N21B::Linker::Flash samv71-dfp::SAMV71N21B::Linker::SRAM samv71-dfp::SAMV71Q19B::Linker::Flash samv71-dfp::SAMV71Q19B::Linker::SRAM samv71-dfp::SAMV71Q20B::Linker::Flash samv71-dfp::SAMV71Q20B::Linker::SRAM samv71-dfp::SAMV71Q21B::Linker::Flash samv71-dfp::SAMV71Q21B::Linker::SRAM samv71-dfp::SAMV71J19B::Startup samv71-dfp::SAMV71J20B::Startup samv71-dfp::SAMV71J21B::Startup samv71-dfp::SAMV71N19B::Startup samv71-dfp::SAMV71N20B::Startup samv71-dfp::SAMV71N21B::Startup samv71-dfp::SAMV71Q19B::Startup samv71-dfp::SAMV71Q20B::Startup samv71-dfp::SAMV71Q21B::Startup)
########### COMPONENT samv71-dfp::SAMV71Q21B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71q21b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q20B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71q20b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q19B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71q19b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N21B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71n21b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N21B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N20B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71n20b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N20B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N19B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71n19b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N19B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J21B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71j21b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J21B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J20B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71j20b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J20B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J19B::Startup VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_OBJECTS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib/startup_samv71j19b.c.obj")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_DEPENDENCIES_DEBUG samv71-dfp::Core)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J19B_Startup_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q21B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q21b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q21B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q21b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q21B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q20B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q20b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q20B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q20b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q20B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q19B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q19b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71Q19B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71q19b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71Q19B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N21B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n21b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N21B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n21b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N21B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N20B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n20b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N20B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n20b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N20B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N19B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n19b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71N19B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71n19b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71N19B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J21B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j21b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J21B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j21b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J21B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J20B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j20b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J20B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j20b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J20B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J19B::Linker::SRAM VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j19b_sram.ld")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_SRAM_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::SAMV71J19B::Linker::Flash VARIABLES ############################################

set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_DEPENDENCIES_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_EXE_LINK_FLAGS_DEBUG "-TC:\\Users\\iliaz\\.conan2\\p\\b\\samv7b0965e3ee186d\\p/lib/ldscripts/samv71j19b_flash.ld")
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_SAMV71J19B_Linker_Flash_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT samv71-dfp::Core VARIABLES ############################################

set(samv71-dfp_samv71-dfp_Core_INCLUDE_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/include")
set(samv71-dfp_samv71-dfp_Core_LIB_DIRS_DEBUG "${samv71-dfp_PACKAGE_FOLDER_DEBUG}/lib")
set(samv71-dfp_samv71-dfp_Core_BIN_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_LIBRARY_TYPE_DEBUG UNKNOWN)
set(samv71-dfp_samv71-dfp_Core_IS_HOST_WINDOWS_DEBUG 0)
set(samv71-dfp_samv71-dfp_Core_RES_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_OBJECTS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_COMPILE_DEFINITIONS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_COMPILE_OPTIONS_C_DEBUG "")
set(samv71-dfp_samv71-dfp_Core_COMPILE_OPTIONS_CXX_DEBUG "")
set(samv71-dfp_samv71-dfp_Core_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_SYSTEM_LIBS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_FRAMEWORK_DIRS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_FRAMEWORKS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_DEPENDENCIES_DEBUG CMSIS::Core)
set(samv71-dfp_samv71-dfp_Core_SHARED_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_EXE_LINK_FLAGS_DEBUG )
set(samv71-dfp_samv71-dfp_Core_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(samv71-dfp_samv71-dfp_Core_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${samv71-dfp_samv71-dfp_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${samv71-dfp_samv71-dfp_Core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${samv71-dfp_samv71-dfp_Core_EXE_LINK_FLAGS_DEBUG}>
)
set(samv71-dfp_samv71-dfp_Core_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${samv71-dfp_samv71-dfp_Core_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${samv71-dfp_samv71-dfp_Core_COMPILE_OPTIONS_C_DEBUG}>")