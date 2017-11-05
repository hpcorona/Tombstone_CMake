cmake_minimum_required(VERSION 3.9)
project(Tool_ColladaImporter)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_library(Tool_ColladaImporter SHARED ${PluginCode}/TSColladaImporter.cpp)
target_include_directories(Tool_ColladaImporter PUBLIC ${PluginCode})
target_link_libraries(Tool_ColladaImporter LINK_PUBLIC Tombstone Tool_WorldEditor Tool_TextureTool)
set_target_properties(Tool_ColladaImporter PROPERTIES OUTPUT_NAME "ColladaImporter")
DeployEditorPlugin(Tool_ColladaImporter $<TARGET_FILE:Tool_ColladaImporter>)
SetCompileOptions()
