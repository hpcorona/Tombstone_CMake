cmake_minimum_required(VERSION 3.9)
project(Tool_ResourcePacker)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_library(Tool_ResourcePacker SHARED ${PluginCode}/TSResourcePacker.cpp)
target_include_directories(Tool_ResourcePacker PUBLIC ${PluginCode})
target_link_libraries(Tool_ResourcePacker LINK_PUBLIC Tombstone)
set_target_properties(Tool_ResourcePacker PROPERTIES OUTPUT_NAME "ResourcePacker")
DeployPlugin(Tool_ResourcePacker $<TARGET_FILE:Tool_ResourcePacker>)
SetCompileOptions()
