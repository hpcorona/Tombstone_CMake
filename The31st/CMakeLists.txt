cmake_minimum_required(VERSION 3.9)
project(The31st)

set(CMAKE_CXX_STANDARD 11)

get_filename_component(GameCode ${TOMBSTONE_PATH}/GameCode ABSOLUTE)

add_library(The31st SHARED
        ${GameCode}/TFAxe.cpp
        ${GameCode}/TFBase.cpp
        ${GameCode}/TFBat.cpp
        ${GameCode}/TFBeerCannon.cpp
        ${GameCode}/TFBlackCat.cpp
        ${GameCode}/TFCameras.cpp
        ${GameCode}/TFCandy.cpp
        ${GameCode}/TFCatFlinger.cpp
        ${GameCode}/TFCharacter.cpp
        ${GameCode}/TFChicken.cpp
        ${GameCode}/TFChickenBlaster.cpp
        ${GameCode}/TFClock.cpp
        ${GameCode}/TFConfiguration.cpp
        ${GameCode}/TFControllers.cpp
        ${GameCode}/TFCrossbow.cpp
        ${GameCode}/TFCrosshairs.cpp
        ${GameCode}/TFDoubleAxe.cpp
        ${GameCode}/TFEffects.cpp
        ${GameCode}/TFFighter.cpp
        ${GameCode}/TFFireball.cpp
        ${GameCode}/TFFish.cpp
        ${GameCode}/TFFrog.cpp
        ${GameCode}/TFGame.cpp
        ${GameCode}/TFGoblin.cpp
        ${GameCode}/TFGolem.cpp
        ${GameCode}/TFGrenadeLauncher.cpp
        ${GameCode}/TFGrimReaper.cpp
        ${GameCode}/TFGusGraves.cpp
        ${GameCode}/TFHauntedArm.cpp
        ${GameCode}/TFHornetGun.cpp
        ${GameCode}/TFInput.cpp
        ${GameCode}/TFInterface.cpp
        ${GameCode}/TFInventory.cpp
        ${GameCode}/TFKnight.cpp
        ${GameCode}/TFLavaball.cpp
        ${GameCode}/TFMagicBroom.cpp
        ${GameCode}/TFMaterials.cpp
        ${GameCode}/TFMonster.cpp
        ${GameCode}/TFMultiplayer.cpp
        ${GameCode}/TFPistol.cpp
        ${GameCode}/TFPlasmaGun.cpp
        ${GameCode}/TFPotion.cpp
        ${GameCode}/TFPowers.cpp
        ${GameCode}/TFProperties.cpp
        ${GameCode}/TFProtonCannon.cpp
        ${GameCode}/TFPumpkinhead.cpp
        ${GameCode}/TFQuantumCharger.cpp
        ${GameCode}/TFRigidBody.cpp
        ${GameCode}/TFRocketLauncher.cpp
        ${GameCode}/TFScripts.cpp
        ${GameCode}/TFShotgun.cpp
        ${GameCode}/TFSkeleton.cpp
        ${GameCode}/TFSkullSword.cpp
        ${GameCode}/TFSoldier.cpp
        ${GameCode}/TFSpider.cpp
        ${GameCode}/TFSpikeShooter.cpp
        ${GameCode}/TFTarball.cpp
        ${GameCode}/TFTreasure.cpp
        ${GameCode}/TFVenom.cpp
        ${GameCode}/TFWeapons.cpp
        ${GameCode}/TFWeather.cpp
        ${GameCode}/TFWitch.cpp
        ${GameCode}/TFZombie.cpp)
target_include_directories(The31st PUBLIC ${GameCode})
target_link_libraries(The31st LINK_PUBLIC Tombstone)
DeployGame(The31st $<TARGET_FILE:The31st>)
SetCompileOptions()
