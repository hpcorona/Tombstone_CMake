cmake_minimum_required(VERSION 3.9)
project(Tool_StringImporter)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_library(Tool_StringImporter SHARED ${PluginCode}/TSStringImporter.cpp)
target_include_directories(Tool_StringImporter PUBLIC ${PluginCode})
target_link_libraries(Tool_StringImporter LINK_PUBLIC Tombstone)
set_target_properties(Tool_StringImporter PROPERTIES OUTPUT_NAME "StringImporter")
DeployPlugin(Tool_StringImporter $<TARGET_FILE:Tool_StringImporter>)
SetCompileOptions()
