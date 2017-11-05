# Tombstone CMake

WARNING: I know this CMake project is very amateurish, as it's the first CMake project
made by me ever. So, any contribution is welcome!

## Pre-requisites

* Tombstone Engine 2.5 Source Code and Data in same directory
* Visual Studio 2017
* Same requisites as Tombstone 2.5
* CMake 3.9

## Usage

Clone this repository into your root project directory.

Then, from your `CMakeLists.txt` file, import it:

```CMake
add_subdirectory(Tombstone)
```

And then you need to link your project against Tombstone engine, using library 
and include directories:

```CMake
target_include_directories(MyGame PUBLIC Tombstone)
target_link_libraries(MyGame LINK_PUBLIC Tombstone)

DeployGame(MyGame $<TARGET_FILE:MyGame>)
SetCompileOptions()
```

Then configure CMake with this options:

| Option | Description |
| ------ | ----------- |
| TOMBSTONE_PATH | The directory where the source code and Data was extracted. It should contain GameCode, EngineCode, Data directories. |
| TOMBSTONE_OS | WINDOWS, LINUX or MACOS. I focused on making windows working. |
| TOMBSTONE_31ST | ON/OFF if you want to include the compilation for The 31st game. |
| CMAKE_BUILD_TYPE | Release/Debug. This will set TOMBSTONE_OPTIMIZED or TOMBSTONE_DEBUG internally. |

Use the Visual Studio 2017 toolchain to run CMake.

## Sample Directory Structure

```
.
+-- CMakeLists.txt
+-- Tombstome
|   +-- modules
|   +-- Plugins
|   +-- The31st
|   +-- Tombstone
|   +-- CMakeLists.txt
+-- Game.cpp
+-- Game.h
+-- Input.cpp
+-- Input.h
+-- World.cpp
+-- World.h
```

This is a sample contents for `CMakeLists.txt`.

```CMake
cmake_minimum_required(VERSION 3.9)
project(MyGame)

set(CMAKE_CXX_STANDARD 11)

add_subdirectory(Tombstone)

add_library(MyGame SHARED
        Game.cpp Game.h World.cpp World.h Input.cpp Input.h)

target_include_directories(MyGame PUBLIC Tombstone)
target_link_libraries(MyGame LINK_PUBLIC Tombstone)

DeployGame(MyGame $<TARGET_FILE:MyGame>)
SetCompileOptions()
```

# License

I really don't care, use it. MIT ? Okay lets use that.

But you should own your own license for Tombstone engine, obviously.
