message(STATUS "Conan: Using CMakeDeps conandeps_legacy.cmake aggregator via include()")
message(STATUS "Conan: It is recommended to use explicit find_package() per dependency instead")

find_package(harmony)
find_package(SAMV71-DFP)

set(CONANDEPS_LEGACY  harmony::harmony  samv71-dfp::samv71-dfp )