cmake_minimum_required(VERSION 3.9)
project(Tool_TextureTool)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_definitions(-DTOMBSTONE_TEXTURE)

add_library(Tool_TextureTool SHARED
        ${PluginCode}/TSTerrainPalette.cpp
        ${PluginCode}/TSTextureGenerator.cpp
        ${PluginCode}/TSTextureImporter.cpp
        ${PluginCode}/TSTextureTool.cpp
        ${PluginCode}/TSTextureViewer.cpp)
target_include_directories(Tool_TextureTool PUBLIC ${PluginCode})
target_link_libraries(Tool_TextureTool LINK_PUBLIC Tombstone)
set_target_properties(Tool_TextureTool PROPERTIES OUTPUT_NAME "TextureTool")
DeployPlugin(Tool_TextureTool $<TARGET_FILE:Tool_TextureTool>)
SetCompileOptions()
