
MACRO(SetCompileOptions)

    if(MSVC)
        if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
            string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
        else()
            set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
        endif()
        if(CMAKE_CXX_FLAGS MATCHES "/GR ")
            string(REGEX REPLACE "/GR " "/GR- " CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
        else()
            set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /GR-")
        endif()
        set(CMAKE_CXX_FLAGS
                "${CMAKE_CXX_FLAGS} /MP /GS- /Qpar- /Zc:wchar_t /Zi /Gm- /Zc:inline /fp:precise /fp:except- /errorReport:prompt /GF /WX- /Zc:forScope /Oi /MT /openmp- /nologo /Ot /diagnostics:classic")
        set(CMAKE_CXX_FLAGS_RELEASE "/Gy /O2 /Ob2 /Oy")
        set(CMAKE_CXX_FLAGS_DEBUG "/Od /Ob1")
        if(CMAKE_BUILD_TYPE STREQUAL "Release")
            set(TOMBSTONE_OPTIMIZED ON)
        else()
            set(TOMBSTONE_DEBUG ON)
        endif()
    endif()

ENDMACRO()

MACRO(DeployPlugin Target TargetFile)

    add_custom_command(
            TARGET ${Target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${TargetFile}
            ${TOMBSTONE_PATH}/Plugins/Tools/)
ENDMACRO()

MACRO(DeployEditorPlugin Target TargetFile)

    add_custom_command(
            TARGET ${Target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${TargetFile}
            ${TOMBSTONE_PATH}/Plugins/Tools/Editor)
ENDMACRO()

MACRO(DeployMoviePlugin Target TargetFile)

    add_custom_command(
            TARGET ${Target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${TargetFile}
            ${TOMBSTONE_PATH}/Plugins/Tools/Movies)
ENDMACRO()

MACRO(DeployGame Target TargetFile)

    add_custom_command(
            TARGET ${Target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${TargetFile}
            ${TOMBSTONE_PATH}/)
ENDMACRO()
