cmake_minimum_required(VERSION 3.9)

option(TOMBSTONE_PATH "Root directory that contains EngineCode/, GameCode/ and PluginCode/ directories" ${CMAKE_CURRENT_SOURCE_DIR})
option(TOMBSTONE_OS "Operating System" "WINDOWS")
option(TOMBSTONE_31ST "Enable The 31st Game" OFF)

include(modules/EngineDefines.cmake)

add_subdirectory(Tombstone)
add_subdirectory(Plugins)

if(TOMBSTONE_31ST)
    add_subdirectory(The31st)
endif()
