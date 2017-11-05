cmake_minimum_required(VERSION 3.9)
project(Tool_OpenGexImporter)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_library(Tool_OpenGexImporter SHARED
        ${PluginCode}/TSOpenGexImporter.cpp)
target_include_directories(Tool_OpenGexImporter PUBLIC ${PluginCode})
target_link_libraries(Tool_OpenGexImporter LINK_PUBLIC Tombstone Tool_WorldEditor Tool_TextureTool)
set_target_properties(Tool_OpenGexImporter PROPERTIES OUTPUT_NAME "OpenGexImporter")
DeployEditorPlugin(Tool_OpenGexImporter $<TARGET_FILE:Tool_OpenGexImporter>)
SetCompileOptions()
