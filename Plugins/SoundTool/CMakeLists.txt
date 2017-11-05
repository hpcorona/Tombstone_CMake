cmake_minimum_required(VERSION 3.9)
project(Tool_SoundTool)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_definitions(-DTOMBSTONE_SOUND)

add_library(Tool_SoundTool SHARED
        ${PluginCode}/TSSoundImporter.cpp
        ${PluginCode}/TSSoundPlayer.cpp
        ${PluginCode}/TSSoundTool.cpp)
target_include_directories(Tool_SoundTool PUBLIC ${PluginCode})
target_link_libraries(Tool_SoundTool LINK_PUBLIC Tombstone)
set_target_properties(Tool_SoundTool PROPERTIES OUTPUT_NAME "SoundTool")
DeployPlugin(Tool_SoundTool $<TARGET_FILE:Tool_SoundTool>)
SetCompileOptions()
