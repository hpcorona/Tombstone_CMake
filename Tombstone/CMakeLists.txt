cmake_minimum_required(VERSION 3.9)
project(Engine)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(EngineCode ${TOMBSTONE_PATH}/EngineCode ABSOLUTE)
get_filename_component(PluginCode ${TOMBSTONE_PATH}/PluginCode ABSOLUTE)

add_definitions(-DTOMBSTONE_ENGINE_MODULE)

set(SRCS
        ${EngineCode}/TSAnimation.cpp
        ${EngineCode}/TSApplication.cpp
        ${EngineCode}/TSAttributes.cpp
        ${EngineCode}/TSAudioCapture.cpp
        ${EngineCode}/TSBase.cpp
        ${EngineCode}/TSBezier.cpp
        ${EngineCode}/TSBlockers.cpp
        ${EngineCode}/TSBody.cpp
        ${EngineCode}/TSBox.cpp
        ${EngineCode}/TSCameraObjects.cpp
        ${EngineCode}/TSCameras.cpp
        ${EngineCode}/TSCell.cpp
        ${EngineCode}/TSCharacter.cpp
        ${EngineCode}/TSColorPicker.cpp
        ${EngineCode}/TSColorRGBA.cpp
        ${EngineCode}/TSCommands.cpp
        ${EngineCode}/TSCompression.cpp
        ${EngineCode}/TSComputation.cpp
        ${EngineCode}/TSConfigData.cpp
        ${EngineCode}/TSConfigurable.cpp
        ${EngineCode}/TSConfiguration.cpp
        ${EngineCode}/TSConnector.cpp
        ${EngineCode}/TSConstants.cpp
        ${EngineCode}/TSContacts.cpp
        ${EngineCode}/TSController.cpp
        ${EngineCode}/TSDeformable.cpp
        ${EngineCode}/TSDialog.cpp
        ${EngineCode}/TSDirector.cpp
        ${EngineCode}/TSDisplay.cpp
        ${EngineCode}/TSEffects.cpp
        ${EngineCode}/TSEmitters.cpp
        ${EngineCode}/TSEngine.cpp
        ${EngineCode}/TSExpressions.cpp
        ${EngineCode}/TSFields.cpp
        ${EngineCode}/TSFilePicker.cpp
        ${EngineCode}/TSFiles.cpp
        ${EngineCode}/TSFonts.cpp
        ${EngineCode}/TSForces.cpp
        ${EngineCode}/TSFragmentShaders.cpp
        ${EngineCode}/TSGeometries.cpp
        ${EngineCode}/TSGeometryObjects.cpp
        ${EngineCode}/TSGeometryShaders.cpp
        ${EngineCode}/TSGraph.cpp
        ${EngineCode}/TSGraphics.cpp
        ${EngineCode}/TSHalf.cpp
        ${EngineCode}/TSHalo.cpp
        ${EngineCode}/TSHash.cpp
        ${EngineCode}/TSHorizon.cpp
        ${EngineCode}/TSHull.cpp
        ${EngineCode}/TSImage.cpp
        ${EngineCode}/TSImpostors.cpp
        ${EngineCode}/TSInertia.cpp
        ${EngineCode}/TSInput.cpp
        ${EngineCode}/TSInstances.cpp
        ${EngineCode}/TSInterface.cpp
        ${EngineCode}/TSJoints.cpp
        ${EngineCode}/TSKinematic.cpp
        ${EngineCode}/TSLightObjects.cpp
        ${EngineCode}/TSLights.cpp
        ${EngineCode}/TSList.cpp
        ${EngineCode}/TSLogo.cpp
        ${EngineCode}/TSMain.cpp
        ${EngineCode}/TSMap.cpp
        ${EngineCode}/TSMarkers.cpp
        ${EngineCode}/TSMarkings.cpp
        ${EngineCode}/TSMaterialObjects.cpp
        ${EngineCode}/TSMath.cpp
        ${EngineCode}/TSMatrix3D.cpp
        ${EngineCode}/TSMatrix4D.cpp
        ${EngineCode}/TSMemory.cpp
        ${EngineCode}/TSMenus.cpp
        ${EngineCode}/TSMesh.cpp
        ${EngineCode}/TSMessages.cpp
        ${EngineCode}/TSMethods.cpp
        ${EngineCode}/TSModels.cpp
        ${EngineCode}/TSModifiers.cpp
        ${EngineCode}/TSMovies.cpp
        ${EngineCode}/TSMutators.cpp
        ${EngineCode}/TSNetwork.cpp
        ${EngineCode}/TSNode.cpp
        ${EngineCode}/TSObjects.cpp
        ${EngineCode}/TSOpenDDL.cpp
        ${EngineCode}/TSOpenGL.cpp
        ${EngineCode}/TSPacking.cpp
        ${EngineCode}/TSPaint.cpp
        ${EngineCode}/TSPanels.cpp
        ${EngineCode}/TSParticles.cpp
        ${EngineCode}/TSPaths.cpp
        ${EngineCode}/TSPhysics.cpp
        ${EngineCode}/TSPlugins.cpp
        ${EngineCode}/TSPolyhedron.cpp
        ${EngineCode}/TSPortals.cpp
        ${EngineCode}/TSPrimitives.cpp
        ${EngineCode}/TSProcesses.cpp
        ${EngineCode}/TSPrograms.cpp
        ${EngineCode}/TSProperties.cpp
        ${EngineCode}/TSQuads.cpp
        ${EngineCode}/TSQuaternion.cpp
        ${EngineCode}/TSRandom.cpp
        ${EngineCode}/TSRegions.cpp
        ${EngineCode}/TSRender.cpp
        ${EngineCode}/TSRenderable.cpp
        ${EngineCode}/TSResources.cpp
        ${EngineCode}/TSRules.cpp
        ${EngineCode}/TSScripts.cpp
        ${EngineCode}/TSSequence.cpp
        ${EngineCode}/TSShaders.cpp
        ${EngineCode}/TSShafts.cpp
        ${EngineCode}/TSShakers.cpp
        ${EngineCode}/TSShapes.cpp
        ${EngineCode}/TSSkybox.cpp
        ${EngineCode}/TSSound.cpp
        ${EngineCode}/TSSources.cpp
        ${EngineCode}/TSSpaceObjects.cpp
        ${EngineCode}/TSSpaces.cpp
        ${EngineCode}/TSSphere.cpp
        ${EngineCode}/TSString.cpp
        ${EngineCode}/TSStringTable.cpp
        ${EngineCode}/TSTarga.cpp
        ${EngineCode}/TSTerrain.cpp
        ${EngineCode}/TSTextures.cpp
        ${EngineCode}/TSThreads.cpp
        ${EngineCode}/TSTime.cpp
        ${EngineCode}/TSToolWindows.cpp
        ${EngineCode}/TSTopology.cpp
        ${EngineCode}/TSTree.cpp
        ${EngineCode}/TSTriggers.cpp
        ${EngineCode}/TSValues.cpp
        ${EngineCode}/TSVariables.cpp
        ${EngineCode}/TSVecMat.cpp
        ${EngineCode}/TSVector2D.cpp
        ${EngineCode}/TSVector3D.cpp
        ${EngineCode}/TSVector4D.cpp
        ${EngineCode}/TSVertexShaders.cpp
        ${EngineCode}/TSViewports.cpp
        ${EngineCode}/TSVolumes.cpp
        ${EngineCode}/TSVoxels.cpp
        ${EngineCode}/TSWater.cpp
        ${EngineCode}/TSWidgets.cpp
        ${EngineCode}/TSWintab.cpp
        ${EngineCode}/TSWorld.cpp
        ${EngineCode}/TSZones.cpp
        ${EngineCode}/TSRsrcWindows.rc)

if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(TSModules ${EngineCode}/TSModule64.def)
else()
    set(TSModules ${EngineCode}/TSModule.def)
endif()
LIST(APPEND SRCS ${TSModules})

set(EXECUTABLE_OUTPUT_PATH  ${TOMBSTONE_PATH})

add_executable(Tombstone WIN32 ${SRCS})

set_source_files_properties(${TSModules} PROPERTIES HEADER_FILE_ONLY TRUE)
set_target_properties(Tombstone PROPERTIES ENABLE_EXPORTS ON)
target_link_libraries(Tombstone
        kernel32.lib
        gdi32.lib
        ole32.lib
        oleaut32.lib
        shell32.lib
        advapi32.lib
        opengl32.lib
        user32.lib
        ws2_32.lib
        winmm.lib
        dsound.lib
        dinput8.lib
        xinput9_1_0.lib
        dxguid.lib)

target_include_directories(Tombstone PUBLIC ${EngineCode} ${PluginCode})

if(TOMBSTONE_OS STREQUAL "WINDOWS")
    target_compile_definitions(Tombstone PUBLIC TOMBSTONE_WINDOWS=1)
elseif(TOMBSTONE_OS STREQUAL "LINUX")
    target_compile_definitions(Tombstone PUBLIC TOMBSTONE_LINUX=1)
elseif(TOMBSTONE_OS STREQUAL "MACOS")
    target_compile_definitions(Tombstone PUBLIC TOMBSTONE_MACOS=1)
endif()

if(CMAKE_BUILD_TYPE STREQUAL "Release")
    target_compile_definitions(Tombstone PUBLIC TOMBSTONE_OPTIMIZED=1)
    set_target_properties(Tombstone PROPERTIES LINK_FLAGS
            "/DEF:\"${TSModules}\" /RELEASE /OPT:REF /INCREMENTAL:NO /OPT:ICF /ERRORREPORT:PROMPT /NOLOGO /TLBID:1")
else()
    target_compile_definitions(Tombstone PUBLIC TOMBSTONE_DEBUG=1)
    set_target_properties(Tombstone PROPERTIES LINK_FLAGS
            "/DEF:\"${TSModules}\" /DEBUG /INCREMENTAL:NO /ERRORREPORT:PROMPT /NOLOGO /TLBID:1")
endif()

SetCompileOptions()
