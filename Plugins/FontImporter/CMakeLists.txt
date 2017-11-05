cmake_minimum_required(VERSION 3.9)
project(Tool_FontImporter)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_library(Tool_FontImporter SHARED
        ${PluginCode}/TSFontImporter.cpp
        ${PluginCode}/TSUnicode.cpp)
target_include_directories(Tool_FontImporter PUBLIC ${PluginCode})
target_link_libraries(Tool_FontImporter LINK_PUBLIC Tombstone)
set_target_properties(Tool_FontImporter PROPERTIES OUTPUT_NAME "FontImporter")
DeployPlugin(Tool_FontImporter $<TARGET_FILE:Tool_FontImporter>)
SetCompileOptions()
