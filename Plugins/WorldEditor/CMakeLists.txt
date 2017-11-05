cmake_minimum_required(VERSION 3.9)
project(Tool_WorldEditor)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_definitions(-DTOMBSTONE_EDITOR)

add_library(Tool_WorldEditor SHARED
        ${PluginCode}/TSEditorBase.cpp
        ${PluginCode}/TSEditorBrush.cpp
        ${PluginCode}/TSEditorCommands.cpp
        ${PluginCode}/TSEditorConnectors.cpp
        ${PluginCode}/TSEditorGizmo.cpp
        ${PluginCode}/TSEditorPages.cpp
        ${PluginCode}/TSEditorPlugins.cpp
        ${PluginCode}/TSEditorSupplement.cpp
        ${PluginCode}/TSEditorTools.cpp
        ${PluginCode}/TSEditorOperations.cpp
        ${PluginCode}/TSEditorViewports.cpp
        ${PluginCode}/TSInstanceDirectors.cpp
        ${PluginCode}/TSLandscaping.cpp
        ${PluginCode}/TSMaterialEditor.cpp
        ${PluginCode}/TSNodeInfo.cpp
        ${PluginCode}/TSPanelEditor.cpp
        ${PluginCode}/TSScriptEditor.cpp
        ${PluginCode}/TSShaderEditor.cpp
        ${PluginCode}/TSTerrainBuilders.cpp
        ${PluginCode}/TSTerrainTools.cpp
        ${PluginCode}/TSWaterTools.cpp
        ${PluginCode}/TSWorldEditor.cpp
        ${PluginCode}/TSCameraDirectors.cpp
        ${PluginCode}/TSEditorDirectors.cpp
        ${PluginCode}/TSEffectDirectors.cpp
        ${PluginCode}/TSEmitterDirectors.cpp
        ${PluginCode}/TSGeometryDirectors.cpp
        ${PluginCode}/TSLightDirectors.cpp
        ${PluginCode}/TSMarkerDirectors.cpp
        ${PluginCode}/TSModelDirectors.cpp
        ${PluginCode}/TSPhysicsDirectors.cpp
        ${PluginCode}/TSPortalDirectors.cpp
        ${PluginCode}/TSSourceDirectors.cpp
        ${PluginCode}/TSSpaceDirectors.cpp
        ${PluginCode}/TSTriggerDirectors.cpp
        ${PluginCode}/TSVolumeDirectors.cpp
        ${PluginCode}/TSZoneDirectors.cpp
        ${PluginCode}/TSModelViewer.cpp)
target_include_directories(Tool_WorldEditor PUBLIC ${PluginCode})
target_link_libraries(Tool_WorldEditor LINK_PUBLIC Tombstone)
set_target_properties(Tool_WorldEditor PROPERTIES OUTPUT_NAME "WorldEditor")
DeployPlugin(Tool_WorldEditor $<TARGET_FILE:Tool_WorldEditor>)
SetCompileOptions()
