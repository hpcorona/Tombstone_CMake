cmake_minimum_required(VERSION 3.9)
project(Tool_MovieTool)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_library(Tool_MovieTool SHARED
        ${PluginCode}/TSMovieImporter.cpp
        ${PluginCode}/TSMoviePlayer.cpp
        ${PluginCode}/TSMovieTool.cpp)
target_include_directories(Tool_MovieTool PUBLIC ${PluginCode})
target_link_libraries(Tool_MovieTool LINK_PUBLIC Tombstone Tool_SoundTool)
set_target_properties(Tool_MovieTool PROPERTIES OUTPUT_NAME "MovieTool")
DeployMoviePlugin(Tool_MovieTool $<TARGET_FILE:Tool_MovieTool>)
SetCompileOptions()
