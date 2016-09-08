# Microsoft Developer Studio Project File - Name="hl" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=hl - Win32 Debug HL2
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "hl.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "hl.mak" CFG="hl - Win32 Debug HL2"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "hl - Win32 Release HL2" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "hl - Win32 Debug HL2" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/Src/dlls", ELEBAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "hl - Win32 Release HL2"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "hl___Win32_hl2_Release"
# PROP BASE Intermediate_Dir "hl___Win32_hl2_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release_hl2"
# PROP Intermediate_Dir "Release_hl2"
# PROP Ignore_Export_Lib 1
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G5 /MT /W3 /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /Fr /YX /FD /c
# ADD CPP /nologo /G6 /W4 /GR /Zi /O2 /I "../game_shared/hl2" /I "./" /I "../Public" /I "../game_shared" /I "../utils/common" /I "../dlls" /I "../../dlls" /I "../dlls/hl2_dll" /D "HL2_DLL" /D "USES_SAVERESTORE" /D "NDEBUG" /D "GAME_DLL" /D sprintf=use_Q_snprintf_instead_of_sprintf /D "_WINDOWS" /D "VECTOR" /D strncpy=use_Q_strncpy_instead /D _snprintf=use_Q_snprintf_instead /D "_WIN32" /D "PROTECTED_THINGS_ENABLE" /Fr /Yu"cbase.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /map /debug /machine:I386 /def:".\hl.def"
# SUBTRACT BASE LINK32 /profile
# ADD LINK32 user32.lib advapi32.lib winmm.lib /nologo /base:"0x22000000" /subsystem:windows /dll /map /debug /machine:I386 /nodefaultlib:"LIBCD" /out:"Release_hl2/server.dll" /libpath:"..\lib\public"
# SUBTRACT LINK32 /pdb:none
# Begin Custom Build - Copying to HL2
TargetDir=.\Release_hl2
InputPath=.\Release_hl2\server.dll
SOURCE="$(InputPath)"

"..\..\hl2\bin\server.dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	if exist ..\..\hl2\bin\server.dll attrib -r ..\..\hl2\bin\server.dll 
	if exist $(TargetDir)\server.dll copy $(TargetDir)\server.dll ..\..\hl2\bin\server.dll 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "hl - Win32 Debug HL2"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "hl___Win32_hl2_Debug"
# PROP BASE Intermediate_Dir "hl___Win32_hl2_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug_hl2"
# PROP Intermediate_Dir "Debug_hl2"
# PROP Ignore_Export_Lib 1
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G5 /MTd /W3 /Gm /ZI /Od /I "..\engine" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /FR /YX /FD /c
# ADD CPP /nologo /G6 /W4 /Gm /GR /ZI /Od /I "../game_shared/hl2" /I "./" /I "../Public" /I "../game_shared" /I "../utils/common" /I "../dlls" /I "../../dlls" /I "../dlls/hl2_dll" /D "HL2_DLL" /D "USES_SAVERESTORE" /D "_DEBUG" /D fopen=dont_use_fopen /D "GAME_DLL" /D sprintf=use_Q_snprintf_instead_of_sprintf /D "_WINDOWS" /D "VECTOR" /D strncpy=use_Q_strncpy_instead /D _snprintf=use_Q_snprintf_instead /D "_WIN32" /D "PROTECTED_THINGS_ENABLE" /FR /Yu"cbase.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /i "..\engine" /d "_DEBUG"
# ADD RSC /l 0x409 /i "..\engine" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib advapi32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /def:".\hl.def" /implib:".\Debug\server.lib"
# SUBTRACT BASE LINK32 /profile
# ADD LINK32 user32.lib advapi32.lib winmm.lib /nologo /base:"0x22000000" /subsystem:windows /dll /debug /machine:I386 /out:"Debug_hl2/server.dll" /implib:".\Debug_hl2\server.lib" /libpath:"..\lib\public"
# SUBTRACT LINK32 /pdb:none
# Begin Custom Build - Copying to HL2
TargetDir=.\Debug_hl2
InputPath=.\Debug_hl2\server.dll
SOURCE="$(InputPath)"

"..\..\hl2\bin\server.dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	if exist ..\..\hl2\bin\server.dll attrib -r ..\..\hl2\bin\server.dll 
	if exist $(TargetDir)\server.dll copy $(TargetDir)\server.dll ..\..\hl2\bin\server.dll 
	
# End Custom Build

!ENDIF 

# Begin Target

# Name "hl - Win32 Release HL2"
# Name "hl - Win32 Debug HL2"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat;for;f90"
# Begin Group "Precompiled Header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\stdafx.cpp
# ADD CPP /Yc"cbase.h"
# End Source File
# End Group
# Begin Group "temporary entities"

# PROP Default_Filter "*.cpp"
# Begin Source File

SOURCE=.\hl2_dll\antlion_dust.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\antlion_dust.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\assassin_smoke.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\assassin_smoke.h
# End Source File
# Begin Source File

SOURCE=.\basetempentity.cpp
# End Source File
# Begin Source File

SOURCE=.\cplane.cpp
# End Source File
# Begin Source File

SOURCE=.\event_tempentity_tester.cpp
# End Source File
# Begin Source File

SOURCE=.\movie_explosion.cpp
# End Source File
# Begin Source File

SOURCE=.\particle_fire.cpp
# End Source File
# Begin Source File

SOURCE=.\particle_smokegrenade.cpp
# End Source File
# Begin Source File

SOURCE=.\plasma.cpp
# End Source File
# Begin Source File

SOURCE=.\plasma.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\rotorwash.cpp
# End Source File
# Begin Source File

SOURCE=.\smoke_trail.cpp
# End Source File
# Begin Source File

SOURCE=.\smoke_trail.h
# End Source File
# Begin Source File

SOURCE=.\SmokeStack.cpp
# End Source File
# Begin Source File

SOURCE=.\SmokeStack.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\SpriteTrail.cpp
# End Source File
# Begin Source File

SOURCE=.\steamjet.cpp
# End Source File
# Begin Source File

SOURCE=.\steamjet.h
# End Source File
# Begin Source File

SOURCE=.\te.cpp
# End Source File
# Begin Source File

SOURCE=.\te.h
# End Source File
# Begin Source File

SOURCE=.\te_armorricochet.cpp
# End Source File
# Begin Source File

SOURCE=.\te_basebeam.cpp
# End Source File
# Begin Source File

SOURCE=.\te_basebeam.h
# End Source File
# Begin Source File

SOURCE=.\te_beamentpoint.cpp
# End Source File
# Begin Source File

SOURCE=.\te_beaments.cpp
# End Source File
# Begin Source File

SOURCE=.\te_beamlaser.cpp
# End Source File
# Begin Source File

SOURCE=.\te_beampoints.cpp
# End Source File
# Begin Source File

SOURCE=.\te_beamring.cpp
# End Source File
# Begin Source File

SOURCE=.\te_beamringpoint.cpp
# End Source File
# Begin Source File

SOURCE=.\te_beamspline.cpp
# End Source File
# Begin Source File

SOURCE=.\te_bloodsprite.cpp
# End Source File
# Begin Source File

SOURCE=.\te_bloodstream.cpp
# End Source File
# Begin Source File

SOURCE=.\te_breakmodel.cpp
# End Source File
# Begin Source File

SOURCE=.\te_bspdecal.cpp
# End Source File
# Begin Source File

SOURCE=.\te_bubbles.cpp
# End Source File
# Begin Source File

SOURCE=.\te_bubbletrail.cpp
# End Source File
# Begin Source File

SOURCE=.\te_decal.cpp
# End Source File
# Begin Source File

SOURCE=.\te_dynamiclight.cpp
# End Source File
# Begin Source File

SOURCE=.\te_energysplash.cpp
# End Source File
# Begin Source File

SOURCE=.\te_explosion.cpp
# End Source File
# Begin Source File

SOURCE=.\te_fizz.cpp
# End Source File
# Begin Source File

SOURCE=.\te_fogripple.cpp
# End Source File
# Begin Source File

SOURCE=.\te_footprintdecal.cpp
# End Source File
# Begin Source File

SOURCE=.\te_GlassShatter.cpp
# End Source File
# Begin Source File

SOURCE=.\te_glowsprite.cpp
# End Source File
# Begin Source File

SOURCE=.\te_impact.cpp
# End Source File
# Begin Source File

SOURCE=.\te_killplayerattachments.cpp
# End Source File
# Begin Source File

SOURCE=.\te_largefunnel.cpp
# End Source File
# Begin Source File

SOURCE=.\te_muzzleflash.cpp
# End Source File
# Begin Source File

SOURCE=.\te_particlesystem.cpp
# End Source File
# Begin Source File

SOURCE=.\te_particlesystem.h
# End Source File
# Begin Source File

SOURCE=.\te_playerdecal.cpp
# End Source File
# Begin Source File

SOURCE=.\te_showline.cpp
# End Source File
# Begin Source File

SOURCE=.\te_smoke.cpp
# End Source File
# Begin Source File

SOURCE=.\te_sparks.cpp
# End Source File
# Begin Source File

SOURCE=.\te_sprite.cpp
# End Source File
# Begin Source File

SOURCE=.\te_spritespray.cpp
# End Source File
# Begin Source File

SOURCE=.\te_textmessage.cpp
# End Source File
# Begin Source File

SOURCE=.\te_worlddecal.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\usermessages.cpp
# End Source File
# End Group
# Begin Group "HL2 DLL"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\hl2_dll\ai_allymanager.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\AI_Interactions.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\ar2_explosion.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\ar2_explosion.h
# End Source File
# Begin Source File

SOURCE=.\BaseBludgeonWeapon.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseBludgeonWeapon.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\basehlcombatweapon.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2\basehlcombatweapon_shared.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\CBaseHelicopter.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\CBaseHelicopter.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\CBaseSpriteProjectile.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\CBaseSpriteProjectile.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\energy_wave.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\energy_wave.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\env_speaker.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\extinguisherjet.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\extinguisherjet.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Func_Monitor.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\func_recharge.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\func_tank.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_ar2.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_ar2.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_beam.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_beam.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_brickbat.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_brickbat.h

!IF  "$(CFG)" == "hl - Win32 Release HL2"

# PROP Ignore_Default_Tool 1

!ELSEIF  "$(CFG)" == "hl - Win32 Debug HL2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_bugbait.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_bugbait.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_energy.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_energy.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_frag.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_frag.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_homer.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_homer.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_hopwire.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_molotov.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_molotov.h

!IF  "$(CFG)" == "hl - Win32 Release HL2"

# PROP Ignore_Default_Tool 1

!ELSEIF  "$(CFG)" == "hl - Win32 Debug HL2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_pathfollower.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_pathfollower.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_satchel.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_satchel.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_scanner.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_scanner.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_spit.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_spit.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_tripmine.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_tripmine.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_tripwire.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_tripwire.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\hl2_client.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\hl2_eventlog.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2\hl2_gamerules.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2\hl2_gamerules.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\HL2_Player.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\HL2_Player.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\hl2_playerlocaldata.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\hl2_playerlocaldata.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2_shareddefs.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2\hl2_usermessages.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl_gamemovement.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl_movedata.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\hl_playermove.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\item_ammo.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\item_battery.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\item_healthkit.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\item_suit.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\look_door.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\monster_dummy.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_alyx.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_alyx.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_antlion.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_antliongrub.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_antliongrub.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_antlionguard.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_assassin.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_assassin.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_attackchopper.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Barnacle.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Barnacle.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Barney.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_BaseZombie.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_BaseZombie.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_breen.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_bullseye.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Bullseye.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_bullsquid.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Bullsquid.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_citizen17.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_citizen17.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Combine.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Combine.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_combinecamera.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_combinedropship.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_CombineE.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_CombineE.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_CombineGuard.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_combinegunship.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_CombineS.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_CombineS.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Conscript.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Conscript.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_crabsynth.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_cranedriver.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_cremator.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_cremator.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_crow.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_eli.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_EnemyFinder.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_fastzombie.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Headcrab.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Headcrab.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_houndeye.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Houndeye.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_hydra.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_hydra.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\NPC_Ichthyosaur.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_kleiner.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_launcher.cpp
# End Source File
# Begin Source File

SOURCE=.\npc_Leader.cpp
# End Source File
# Begin Source File

SOURCE=.\npc_Leader.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_lightstalk.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_lightstalk.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Manhack.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Manhack.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_metropolice.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_metropolice.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_missiledefense.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_monk.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_mortarsynth.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_mortarsynth.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_mossman.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_odell.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_odell.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_PoisonZombie.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\NPC_Roller.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\NPC_Roller.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\NPC_RollerBuddy.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_rollerbuddy.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_rollerbull.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\NPC_RollerDozer.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_rollermine.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\NPC_RollerTurret.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Scanner.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Spotlight.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_SScanner.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_SScanner.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_SScanner_Beam.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_SScanner_Beam.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_stalker.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_stalker.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_strider.cpp
# End Source File
# Begin Source File

SOURCE=.\npc_Talker.cpp
# End Source File
# Begin Source File

SOURCE=.\npc_Talker.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_turret_ceiling.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_turret_floor.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_vehicledriver.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Vortigaunt.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_Vortigaunt.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_wscanner.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_WScanner.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_zombie.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\player_control.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\player_control.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\player_manhack.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\player_missile.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\point_apc_controller.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Point_Camera.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\proto_sniper.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\rotorwash.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Scanner_Shield.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Scanner_Shield.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\SpotlightEnd.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\SpotlightEnd.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_airboat.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_apc.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_base.cpp
# End Source File
# Begin Source File

SOURCE=.\vehicle_base.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_baseserver.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Vehicle_Chopper.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_crane.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_jeep.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\WaterLODControl.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_ar1.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_ar2.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_ar2.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_Binoculars.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_brickbat.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_brickbat.h

!IF  "$(CFG)" == "hl - Win32 Release HL2"

# PROP Ignore_Default_Tool 1

!ELSEIF  "$(CFG)" == "hl - Win32 Debug HL2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_bugbait.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_cguard.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_crowbar.cpp
# End Source File
# Begin Source File

SOURCE=.\weapon_cubemap.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_extinguisher.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_flaregun.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_flaregun.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_frag.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_gauss.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_gauss.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_hgm1.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_hopwire.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_iceaxe.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_immolator.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_immolator.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_irifle.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_manhack.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_molotov.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_molotov.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_physcannon.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_pistol.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_rollerwand.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_rpg.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_rpg.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_shotgun.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_slam.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_slam.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_smg1.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_smg2.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_SniperRifle.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_stickylauncher.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_stunstick.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_thumper.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_tripwire.cpp
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_tripwire.h
# End Source File
# End Group
# Begin Group "TF2 DLL"

# PROP Default_Filter "h;cpp"
# Begin Group "TF2 Classes"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\tf2_dll\tf_class_commando.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_commando.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_defender.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_defender.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_escort.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_escort.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_infiltrator.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_infiltrator.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_medic.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_medic.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_pyro.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_pyro.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_recon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_recon.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_sapper.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_sapper.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_sniper.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_sniper.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_support.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_class_support.h
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "TF2 Movement"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\game_shared\tf_gamemovement.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_gamemovement.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_chooser.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_chooser.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_commando.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_commando.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_defender.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_defender.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_escort.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_escort.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_infiltrator.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_infiltrator.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_medic.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_medic.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_pyro.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_pyro.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_recon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_recon.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_sapper.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_sapper.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_sniper.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_sniper.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_support.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamemovement_support.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_movedata.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_playermove.cpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Source File

SOURCE=.\tf2_dll\basecombatcharacter_tf2.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\basehlcombatweapon.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2\basehlcombatweapon_shared.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\baseobject_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\baseobject_shared.h
# End Source File
# Begin Source File

SOURCE=.\BasePropDoor.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\basetfcombatweapon_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\basetfcombatweapon_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\basetfplayer_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\basetfplayer_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\basetfvehicle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\basetfvehicle.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\bot_base.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\ControlZone.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\controlzone.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cplane.h
# End Source File
# Begin Source File

SOURCE=.\CRagdollMagnet.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\demo_entities.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\entity_burn_effect.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\entity_burn_effect.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\EntityFlame.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\env_fallingrocks.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\env_laserdesignation.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\env_laserdesignation.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\env_meteor.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\env_meteor.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\env_meteor_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\env_meteor_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\envmicrophone.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\fire_damage_mgr.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\fire_damage_mgr.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\gasoline_blob.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\gasoline_blob.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\gasoline_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_antipersonnel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_antipersonnel.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_base_empable.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_base_empable.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_emp.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_emp.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\grenade_hopwire.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_limpetmine.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_limpetmine.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_objectsapper.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_objectsapper.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_rocket.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_rocket.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\grenade_stickybomb.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\h_cycler.h
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_handgrenade.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl2_player_shared.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\ihasbuildpoints.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_act.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_act.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_add_resources.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_buildpoint.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_buildpoint.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_customtech.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_customtech.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_input_playsound.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_input_resetbanks.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_input_resetobjects.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_input_respawnplayers.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_minimappulse.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_output_team.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_vehicle_bay.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\info_vehicle_bay.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\iscorer.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\mapdata_server.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\mapdata_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\menu_base.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\menu_base.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\mortar_round.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\npc_bug_builder.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\npc_bug_builder.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\npc_bug_hole.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\npc_bug_hole.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\npc_bug_warrior.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\npc_bug_warrior.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\npc_vehicledriver.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_assist.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_assist.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_buildsentrygun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_buildsentrygun.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_buildshieldwall.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_buildshieldwall.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_events.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_events.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_heal.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_heal.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_helpers.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_helpers.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_killmortarguy.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_killmortarguy.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_mortar_attack.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_mortar_attack.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_player.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_player.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_repair.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_repair.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_resourcepump.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_resourcepump.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_resupply.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\order_resupply.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\orders.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\orders.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\physics_shared.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\plasmaprojectile.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\plasmaprojectile.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\plasmaprojectile_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\plasmaprojectile_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\ragdoll_shadow.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\ragdoll_shadow.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\ragdoll_shared.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\resource_chunk.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\resource_chunk.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\saverestore_utlsymbol.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\sensor_tf_team.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\solidsetdefaults.h
# End Source File
# Begin Source File

SOURCE=.\spark.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\SpriteTrail.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\team_messages.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\team_messages.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\techtree.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\techtree.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\techtree_parse.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf2_eventlog.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_ai_hint.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_basecombatweapon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_basecombatweapon.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_basefourwheelvehicle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_basefourwheelvehicle.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_client.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_filters.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_flare.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_flare.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_construction_yard.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_construction_yard.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_mass_teleport.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_mass_teleport.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_no_build.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_no_build.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_resource.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_resource.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_weldable_door.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_func_weldable_door.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamerules.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_gamerules.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_hintmanager.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_hintmanager.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_armor_upgrade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_armor_upgrade.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_barbed_wire.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_barbed_wire.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_base_manned_gun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_base_manned_gun.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_basedrivergun_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_basedrivergun_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_baseupgrade_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_baseupgrade_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_buff_station.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_buff_station.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_bunker.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_bunker.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_dragonsteeth.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_dragonsteeth.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_driver_machinegun_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_driver_machinegun_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_empgenerator.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_empgenerator.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_explosives.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_manned_missilelauncher.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_manned_missilelauncher.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_manned_plasmagun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_manned_plasmagun.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_manned_plasmagun_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_obj_manned_plasmagun_shared.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_manned_shield.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_mapdefined.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_mapdefined.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_mcv_selection_panel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_mcv_selection_panel.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_mortar.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_mortar.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_powerpack.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_powerpack.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_rallyflag.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_rallyflag.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_resourcepump.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_resourcepump.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_respawn_station.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_respawn_station.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_resupply.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_resupply.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_sandbag_bunker.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_sandbag_bunker.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_selfheal.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_selfheal.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_sentrygun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_sentrygun.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_shieldwall.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_shieldwall.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_tower.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_tower.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_tunnel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_vehicleboost.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_obj_vehicleboost.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_player.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_player.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_player_death.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_player_resource.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_player_resource.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_playeranimstate.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_playerclass.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_playerclass.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_playerlocaldata.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_playerlocaldata.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_reconvars.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_reconvars.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_shareddefs.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_shareddefs.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_shield.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_shield.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_shield_flat.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_shield_flat.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_shield_mobile_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_shieldgrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_shieldgrenade.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_shieldshared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_shieldshared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_stats.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_stats.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_stressentities.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_tacticalmap.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_team.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_team.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_teamspawnpoint.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tf_usermessages.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_battering_ram.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_battering_ram.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_flatbed.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_flatbed.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_mortar.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_mortar.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_motorcycle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_siege_tower.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_siege_tower.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_tank.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_tank.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_teleport_station.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_teleport_station.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_wagon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_vehicle_wagon.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf_vehicleshared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_walker_base.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_walker_base.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_walker_ministrider.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_walker_ministrider.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_walker_strider.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\tf_walker_strider.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\tfclassdata_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\TFClassData_Shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\touchlink.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\trigger_fall.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\trigger_skybox.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\vehicle_crane.h
# End Source File
# Begin Source File

SOURCE=.\vehicle_sounds.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_arcwelder.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_basecombatobject.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_basecombatobject.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_builder.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_builder.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_basegrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_basegrenade.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_burstrifle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_grenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_grenade_emp.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_laserrifle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_plasma_grenade_launcher.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_plasmarifle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_shotgun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_usedwithshieldbase.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combat_usedwithshieldbase.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combatshield.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_combatshield.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_drainbeam.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_drainbeam.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_flame_thrower.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_flame_thrower.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_gas_can.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_gas_can.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_grenade_rocket.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_grenade_rocket.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_harpoon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_limpetmine.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_limpetmine.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_minigun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_obj_empgenerator.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_obj_rallyflag.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_objectselection.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_objectselection.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\weapon_physcannon.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_plasmarifle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_repairgun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_repairgun.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_rocketlauncher.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_rocketlauncher.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_shield.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_shield.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_shieldgrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_twohandedcontainer.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\weapon_twohandedcontainer.h
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "HL1 DLL"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\hl1_dll\hl1_ai_basenpc.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_ai_basenpc.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_basecombatweapon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_basecombatweapon_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_basecombatweapon_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_basegrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_basegrenade.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_CBaseHelicopter.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_client.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_ents.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_ents.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_env_speaker.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_eventlog.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_func_recharge.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_func_tank.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_gamemovement.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_gamemovement.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_gamerules.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_gamerules.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_grenade_mp5.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_grenade_mp5.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_grenade_spit.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_grenade_spit.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_item_ammo.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_item_battery.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_item_healthkit.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_item_longjump.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_item_suit.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_items.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_items.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_monstermaker.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_monstermaker.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_aflock.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_agrunt.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_apache.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_barnacle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_barnacle.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_barney.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_barney.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_bigmomma.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_bloater.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_bullsquid.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_bullsquid.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_controller.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_gargantua.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_gargantua.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_gman.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_hassassin.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_headcrab.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_headcrab.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_hgrunt.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_hgrunt.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_hornet.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_hornet.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_houndeye.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_houndeye.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_ichthyosaur.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_ichthyosaur.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_leech.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_nihilanth.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_osprey.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_roach.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_scientist.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_scientist.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_snark.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_snark.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_talker.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_talker.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_tentacle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_turret.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_vortigaunt.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_vortigaunt.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_zombie.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_npc_zombie.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_player.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_player.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_player_shared.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_te_beamfollow.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_te_boltstick.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\hl1\hl1_usermessages.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_357.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_crossbow.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_crowbar.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_egon.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_gauss.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_glock.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_handgrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_hornetgun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_mp5.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_mp5.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_rpg.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_rpg.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_satchel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_satchel.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_shotgun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_snark.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weapon_tripmine.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\hl1_dll\hl1_weaponbox.cpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "CounterStrike DLL"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\cstrike\cs_bot_temp.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_client.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_client.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_eventlog.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_gamemovement.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_gamerules.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_gamerules.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_hostage.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_hostage.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_player.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_player.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_player_shared.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_playeranimstate.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_playeranimstate.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_playermove.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_shareddefs.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_shareddefs.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_team.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\cs_team.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_usermessages.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_weapon_parse.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\cs_weapon_parse.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\flashbang_projectile.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\flashbang_projectile.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\func_bomb_target.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\func_buy_zone.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\hegrenade_projectile.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\hegrenade_projectile.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\item_assaultsuit.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\item_kevlar.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\mapinfo.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\cstrike\mapinfo.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_ak47.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_aug.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_awp.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_basecsgrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_basecsgrenade.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_c4.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_c4.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_csbase.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_csbase.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_csbasegun.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_csbasegun.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_deagle.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_famas.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_fiveseven.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_flashbang.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_g3sg1.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_galil.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_glock.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_hegrenade.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_knife.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_m249.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_m3.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_m4a1.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_mac10.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_mp5navy.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_p228.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_p90.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_scout.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_sg550.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_sg552.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_ump45.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\game_shared\cstrike\weapon_usp.cpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Source File

SOURCE=.\actanimating.cpp
# End Source File
# Begin Source File

SOURCE=.\actanimating.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\activitylist.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\activitylist.h
# End Source File
# Begin Source File

SOURCE=.\AI_Activity.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\ai_activity.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseActor.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseActor.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseHumanoid.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseHumanoid.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseHumanoid_Movement.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseHumanoid_Movement.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Flyer.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Flyer.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Flyer_New.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Flyer_New.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Movement.cpp
# End Source File
# Begin Source File

SOURCE=.\ai_basenpc_physicsflyer.cpp
# End Source File
# Begin Source File

SOURCE=.\ai_basenpc_physicsflyer.h
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Schedule.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_BaseNPC_Squad.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior.h
# End Source File
# Begin Source File

SOURCE=.\ai_behavior_assault.cpp
# End Source File
# Begin Source File

SOURCE=.\ai_behavior_assault.h
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior_Follow.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior_Follow.h
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior_Lead.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior_Lead.h
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior_Standoff.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Behavior_Standoff.h
# End Source File
# Begin Source File

SOURCE=.\AI_Component.h
# End Source File
# Begin Source File

SOURCE=.\AI_ConCommands.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Condition.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Condition.h
# End Source File
# Begin Source File

SOURCE=.\AI_Criteria.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Criteria.h
# End Source File
# Begin Source File

SOURCE=.\AI_Debug.h
# End Source File
# Begin Source File

SOURCE=.\AI_Default.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Default.h
# End Source File
# Begin Source File

SOURCE=.\AI_DynamicLink.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_DynamicLink.h
# End Source File
# Begin Source File

SOURCE=.\AI_GoalEntity.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_GoalEntity.h
# End Source File
# Begin Source File

SOURCE=.\AI_Hint.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Hint.h
# End Source File
# Begin Source File

SOURCE=.\AI_Hull.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Hull.h
# End Source File
# Begin Source File

SOURCE=.\AI_InitUtils.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_InitUtils.h
# End Source File
# Begin Source File

SOURCE=.\AI_Interest_Target.h
# End Source File
# Begin Source File

SOURCE=.\AI_Link.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Link.h
# End Source File
# Begin Source File

SOURCE=.\AI_LocalNavigator.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_LocalNavigator.h
# End Source File
# Begin Source File

SOURCE=.\AI_Memory.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Memory.h
# End Source File
# Begin Source File

SOURCE=.\AI_Motor.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Motor.h
# End Source File
# Begin Source File

SOURCE=.\AI_MoveProbe.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_MoveProbe.h
# End Source File
# Begin Source File

SOURCE=.\AI_MoveShoot.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_MoveShoot.h
# End Source File
# Begin Source File

SOURCE=.\AI_MoveSolver.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_MoveSolver.h
# End Source File
# Begin Source File

SOURCE=.\AI_MoveTypes.h
# End Source File
# Begin Source File

SOURCE=.\AI_Namespaces.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Namespaces.h
# End Source File
# Begin Source File

SOURCE=.\AI_Nav_Property.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Nav_Property.h
# End Source File
# Begin Source File

SOURCE=.\AI_NavGoalType.h
# End Source File
# Begin Source File

SOURCE=.\AI_Navigator.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Navigator.h
# End Source File
# Begin Source File

SOURCE=.\AI_NavType.h
# End Source File
# Begin Source File

SOURCE=.\AI_Network.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Network.h
# End Source File
# Begin Source File

SOURCE=.\AI_NetworkManager.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_NetworkManager.h
# End Source File
# Begin Source File

SOURCE=.\AI_Node.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Node.h
# End Source File
# Begin Source File

SOURCE=.\AI_NPCState.h
# End Source File
# Begin Source File

SOURCE=.\AI_Pathfinder.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Pathfinder.h
# End Source File
# Begin Source File

SOURCE=.\AI_PlaneSolver.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_PlaneSolver.h
# End Source File
# Begin Source File

SOURCE=.\AI_ResponseSystem.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_ResponseSystem.h
# End Source File
# Begin Source File

SOURCE=.\AI_Route.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Route.h
# End Source File
# Begin Source File

SOURCE=.\AI_RouteDist.h
# End Source File
# Begin Source File

SOURCE=.\AI_SaveRestore.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_SaveRestore.h
# End Source File
# Begin Source File

SOURCE=.\AI_Schedule.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Schedule.h
# End Source File
# Begin Source File

SOURCE=.\AI_ScriptConditions.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_ScriptConditions.h
# End Source File
# Begin Source File

SOURCE=.\AI_Senses.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Senses.h
# End Source File
# Begin Source File

SOURCE=.\AI_Speech.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Speech.h
# End Source File
# Begin Source File

SOURCE=.\AI_Squad.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Squad.h
# End Source File
# Begin Source File

SOURCE=.\AI_SquadSlot.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_SquadSlot.h
# End Source File
# Begin Source File

SOURCE=.\AI_TacticalServices.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_TacticalServices.h
# End Source File
# Begin Source File

SOURCE=.\AI_Task.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Task.h
# End Source File
# Begin Source File

SOURCE=.\ai_trackpather.cpp
# End Source File
# Begin Source File

SOURCE=.\ai_trackpather.h
# End Source File
# Begin Source File

SOURCE=.\ai_utils.cpp
# End Source File
# Begin Source File

SOURCE=.\ai_utils.h
# End Source File
# Begin Source File

SOURCE=.\AI_Waypoint.cpp
# End Source File
# Begin Source File

SOURCE=.\AI_Waypoint.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ammodef.cpp
# End Source File
# Begin Source File

SOURCE=.\animating.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\animation.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\animation.h
# End Source File
# Begin Source File

SOURCE=.\base_transmit_proxy.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseAnimating.h
# End Source File
# Begin Source File

SOURCE=.\BaseAnimatingOverlay.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseAnimatingOverlay.h
# End Source File
# Begin Source File

SOURCE=.\BaseCombatCharacter.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseCombatCharacter.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\basecombatcharacter_shared.cpp
# End Source File
# Begin Source File

SOURCE=.\basecombatweapon.cpp
# End Source File
# Begin Source File

SOURCE=.\basecombatweapon.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\basecombatweapon_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\basecombatweapon_shared.h
# End Source File
# Begin Source File

SOURCE=.\BaseEntity.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseEntity.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseentity_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseentity_shared.h
# End Source File
# Begin Source File

SOURCE=.\BaseFlex.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseFlex.h
# End Source File
# Begin Source File

SOURCE=.\basegrenade_concussion.cpp
# End Source File
# Begin Source File

SOURCE=.\basegrenade_contact.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\basegrenade_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\basegrenade_shared.h
# End Source File
# Begin Source File

SOURCE=.\basegrenade_timed.cpp
# End Source File
# Begin Source File

SOURCE=.\basenetworkable.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseparticleentity.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseparticleentity.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseplayer_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseplayer_shared.h
# End Source File
# Begin Source File

SOURCE=.\BaseToggle.h
# End Source File
# Begin Source File

SOURCE=.\BaseViewModel.cpp
# End Source File
# Begin Source File

SOURCE=.\BaseViewModel.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseviewmodel_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\baseviewmodel_shared.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\beam_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\beam_shared.h
# End Source File
# Begin Source File

SOURCE=..\public\bitbuf.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\BitString.cpp
# End Source File
# Begin Source File

SOURCE=.\BitString.h
# End Source File
# Begin Source File

SOURCE=.\bmodels.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\bone_setup.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\game_shared\bone_setup.h
# End Source File
# Begin Source File

SOURCE=.\buttons.cpp
# End Source File
# Begin Source File

SOURCE=.\buttons.h
# End Source File
# Begin Source File

SOURCE=.\cbase.cpp
# End Source File
# Begin Source File

SOURCE=.\cbase.h
# End Source File
# Begin Source File

SOURCE=..\public\characterset.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\public\checksum_crc.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\checksum_crc.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreoactor.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreoactor.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreochannel.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreochannel.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreoevent.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreoevent.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreoscene.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\game_shared\choreoscene.h
# End Source File
# Begin Source File

SOURCE=.\client.cpp
# End Source File
# Begin Source File

SOURCE=.\client.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\collisionproperty.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\collisionproperty.h
# End Source File
# Begin Source File

SOURCE=..\Public\CollisionUtils.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\CollisionUtils.h
# End Source File
# Begin Source File

SOURCE=.\ControlEntities.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\convar.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\convar.h
# End Source File
# Begin Source File

SOURCE=.\CRagdollMagnet.cpp
# End Source File
# Begin Source File

SOURCE=.\CRagdollMagnet.h
# End Source File
# Begin Source File

SOURCE=.\CTerrainMorph.cpp
# End Source File
# Begin Source File

SOURCE=.\damagemodifier.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\decals.cpp
# End Source File
# Begin Source File

SOURCE=.\doors.cpp
# End Source File
# Begin Source File

SOURCE=.\doors.h
# End Source File
# Begin Source File

SOURCE=..\public\dt_send.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\dynamiclight.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\edict.h
# End Source File
# Begin Source File

SOURCE=..\Public\Editor_SendCommand.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\Editor_SendCommand.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\effect_dispatch_data.cpp
# End Source File
# Begin Source File

SOURCE=.\effects.cpp
# End Source File
# Begin Source File

SOURCE=.\EffectsServer.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\ehandle.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\eiface.h
# End Source File
# Begin Source File

SOURCE=.\enginecallback.h
# End Source File
# Begin Source File

SOURCE=.\entityapi.h
# End Source File
# Begin Source File

SOURCE=.\EntityFlame.cpp
# End Source File
# Begin Source File

SOURCE=.\EntityFlame.h
# End Source File
# Begin Source File

SOURCE=.\EntityInput.h
# End Source File
# Begin Source File

SOURCE=.\EntityList.cpp
# End Source File
# Begin Source File

SOURCE=.\EntityList.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\entitylist_base.cpp
# End Source File
# Begin Source File

SOURCE=.\entitymapdata.h
# End Source File
# Begin Source File

SOURCE=.\EntityOutput.h
# End Source File
# Begin Source File

SOURCE=.\env_entity_maker.cpp
# End Source File
# Begin Source File

SOURCE=.\env_fov.cpp
# End Source File
# Begin Source File

SOURCE=.\env_screenoverlay.cpp
# End Source File
# Begin Source File

SOURCE=.\env_texturetoggle.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\env_wind_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\env_wind_shared.h
# End Source File
# Begin Source File

SOURCE=.\env_zoom.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvBeam.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvFade.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvLaser.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvLaser.h
# End Source File
# Begin Source File

SOURCE=.\EnvMessage.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvMessage.h
# End Source File
# Begin Source File

SOURCE=.\EnvMicrophone.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvShake.cpp
# End Source File
# Begin Source File

SOURCE=.\EnvSpark.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\event_flags.h
# End Source File
# Begin Source File

SOURCE=.\event_tempentity_tester.h
# End Source File
# Begin Source File

SOURCE=.\EventLog.cpp
# End Source File
# Begin Source File

SOURCE=.\EventQueue.h
# End Source File
# Begin Source File

SOURCE=.\explode.cpp
# End Source File
# Begin Source File

SOURCE=.\explode.h
# End Source File
# Begin Source File

SOURCE=..\public\filesystem_helpers.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\filters.cpp
# End Source File
# Begin Source File

SOURCE=.\filters.h
# End Source File
# Begin Source File

SOURCE=.\fire.cpp
# End Source File
# Begin Source File

SOURCE=.\fire.h
# End Source File
# Begin Source File

SOURCE=.\fire_smoke.cpp
# End Source File
# Begin Source File

SOURCE=.\fire_smoke.h
# End Source File
# Begin Source File

SOURCE=.\fogcontroller.cpp
# End Source File
# Begin Source File

SOURCE=.\fourwheelvehiclephysics.cpp
# End Source File
# Begin Source File

SOURCE=.\fourwheelvehiclephysics.h
# End Source File
# Begin Source File

SOURCE=.\func_areaportal.cpp
# End Source File
# Begin Source File

SOURCE=.\func_areaportalbase.cpp
# End Source File
# Begin Source File

SOURCE=.\func_areaportalbase.h
# End Source File
# Begin Source File

SOURCE=.\func_areaportalwindow.cpp
# End Source File
# Begin Source File

SOURCE=.\func_areaportalwindow.h
# End Source File
# Begin Source File

SOURCE=.\func_break.cpp
# End Source File
# Begin Source File

SOURCE=.\func_break.h
# End Source File
# Begin Source File

SOURCE=.\func_breakablesurf.cpp
# End Source File
# Begin Source File

SOURCE=.\func_breakablesurf.h
# End Source File
# Begin Source File

SOURCE=.\func_dust.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\func_dust_shared.h
# End Source File
# Begin Source File

SOURCE=.\func_lod.cpp
# End Source File
# Begin Source File

SOURCE=.\func_movelinear.cpp
# End Source File
# Begin Source File

SOURCE=.\func_movelinear.h
# End Source File
# Begin Source File

SOURCE=.\func_occluder.cpp
# End Source File
# Begin Source File

SOURCE=.\func_smokevolume.cpp
# End Source File
# Begin Source File

SOURCE=.\game.cpp
# End Source File
# Begin Source File

SOURCE=.\game.h
# End Source File
# Begin Source File

SOURCE=.\game_ui.cpp
# End Source File
# Begin Source File

SOURCE=.\gamehandle.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\GameInterface.cpp
# End Source File
# Begin Source File

SOURCE=.\GameInterface.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamemovement.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamemovement.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamerules.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamerules.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamestringpool.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamestringpool.h
# End Source File
# Begin Source File

SOURCE=.\gametrace_dll.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamevars_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\gamevars_shared.h
# End Source File
# Begin Source File

SOURCE=.\genericactor.cpp
# End Source File
# Begin Source File

SOURCE=.\genericmonster.cpp
# End Source File
# Begin Source File

SOURCE=.\Gib.cpp
# End Source File
# Begin Source File

SOURCE=.\Gib.h
# End Source File
# Begin Source File

SOURCE=.\globals.cpp
# End Source File
# Begin Source File

SOURCE=.\globalstate.cpp
# End Source File
# Begin Source File

SOURCE=.\globalstate.h
# End Source File
# Begin Source File

SOURCE=.\globalstate_private.h
# End Source File
# Begin Source File

SOURCE=.\GrenadeThrown.cpp
# End Source File
# Begin Source File

SOURCE=.\GrenadeThrown.h
# End Source File
# Begin Source File

SOURCE=.\GunTarget.cpp
# End Source File
# Begin Source File

SOURCE=.\h_ai.cpp
# End Source File
# Begin Source File

SOURCE=.\h_cycler.cpp
# End Source File
# Begin Source File

SOURCE=.\h_export.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\hierarchy.cpp
# End Source File
# Begin Source File

SOURCE=.\hierarchy.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ichoreoeventcallback.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\igamesystem.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\igamesystem.h
# End Source File
# Begin Source File

SOURCE=.\init_factory.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\init_factory.h
# End Source File
# Begin Source File

SOURCE=..\Public\interface.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\interface.h
# End Source File
# Begin Source File

SOURCE=.\Intermission.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\interval.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\interval.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\iscenetokenprocessor.h
# End Source File
# Begin Source File

SOURCE=.\iservervehicle.h
# End Source File
# Begin Source File

SOURCE=.\item_world.cpp
# End Source File
# Begin Source File

SOURCE=.\items.h
# End Source File
# Begin Source File

SOURCE=..\Public\ivoiceserver.h
# End Source File
# Begin Source File

SOURCE=..\common\KeyFrame\keyframe.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\common\KeyFrame\keyframe.h
# End Source File
# Begin Source File

SOURCE=..\public\KeyValues.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\lightglow.cpp
# End Source File
# Begin Source File

SOURCE=.\lights.cpp
# End Source File
# Begin Source File

SOURCE=.\lights.h
# End Source File
# Begin Source File

SOURCE=.\LockSounds.h
# End Source File
# Begin Source File

SOURCE=.\logic_navigation.cpp
# End Source File
# Begin Source File

SOURCE=.\LogicAuto.cpp
# End Source File
# Begin Source File

SOURCE=.\LogicEntities.cpp
# End Source File
# Begin Source File

SOURCE=.\LogicRelay.cpp
# End Source File
# Begin Source File

SOURCE=.\mapentities.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\maprules.cpp
# End Source File
# Begin Source File

SOURCE=.\maprules.h
# End Source File
# Begin Source File

SOURCE=..\Public\Mathlib.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\MATHLIB.H
# End Source File
# Begin Source File

SOURCE=..\Public\measure_section.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\measure_section.h
# End Source File
# Begin Source File

SOURCE=..\Public\mem_fgets.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\mem_fgets.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\memoverride.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\MemPool.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\MemPool.h
# End Source File
# Begin Source File

SOURCE=.\message_entity.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\model_types.h
# End Source File
# Begin Source File

SOURCE=.\ModelEntities.cpp
# End Source File
# Begin Source File

SOURCE=.\monstermaker.cpp
# End Source File
# Begin Source File

SOURCE=.\monstermaker.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\movehelper_server.cpp
# End Source File
# Begin Source File

SOURCE=.\movehelper_server.h
# End Source File
# Begin Source File

SOURCE=.\Movement.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\movevars_shared.cpp
# End Source File
# Begin Source File

SOURCE=.\movie_explosion.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\multiplay_gamerules.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\multiplay_gamerules.h
# End Source File
# Begin Source File

SOURCE=.\NDebugOverlay.cpp
# End Source File
# Begin Source File

SOURCE=.\NDebugOverlay.h
# End Source File
# Begin Source File

SOURCE=.\netstatemgr.cpp
# End Source File
# Begin Source File

SOURCE=.\networkstringtable_gamedll.h
# End Source File
# Begin Source File

SOURCE=..\Public\NetworkStringTableDefs.h
# End Source File
# Begin Source File

SOURCE=..\public\networkvar.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\particle_fire.h
# End Source File
# Begin Source File

SOURCE=.\particle_light.cpp
# End Source File
# Begin Source File

SOURCE=.\particle_light.h
# End Source File
# Begin Source File

SOURCE=.\particle_smokegrenade.h
# End Source File
# Begin Source File

SOURCE=.\pathcorner.cpp
# End Source File
# Begin Source File

SOURCE=.\phys_controller.cpp
# End Source File
# Begin Source File

SOURCE=.\phys_controller.h
# End Source File
# Begin Source File

SOURCE=.\physconstraint.cpp
# End Source File
# Begin Source File

SOURCE=.\physgun.cpp
# End Source File
# Begin Source File

SOURCE=.\physics.cpp
# End Source File
# Begin Source File

SOURCE=.\physics.h
# End Source File
# Begin Source File

SOURCE=.\physics_bone_follower.cpp
# End Source File
# Begin Source File

SOURCE=.\physics_bone_follower.h
# End Source File
# Begin Source File

SOURCE=.\physics_cannister.cpp
# End Source File
# Begin Source File

SOURCE=.\physics_fx.cpp
# End Source File
# Begin Source File

SOURCE=.\physics_impact_damage.cpp
# End Source File
# Begin Source File

SOURCE=.\physics_main.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\physics_main_shared.cpp
# End Source File
# Begin Source File

SOURCE=.\physics_prop_ragdoll.cpp
# End Source File
# Begin Source File

SOURCE=.\physics_prop_ragdoll.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\physics_saverestore.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\physics_saverestore.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\physics_shared.cpp
# End Source File
# Begin Source File

SOURCE=.\physobj.cpp
# End Source File
# Begin Source File

SOURCE=.\physobj.h
# End Source File
# Begin Source File

SOURCE=..\Public\plane.h
# End Source File
# Begin Source File

SOURCE=.\plats.cpp
# End Source File
# Begin Source File

SOURCE=.\player.cpp
# End Source File
# Begin Source File

SOURCE=.\player.h
# End Source File
# Begin Source File

SOURCE=.\player_command.cpp
# End Source File
# Begin Source File

SOURCE=.\player_command.h
# End Source File
# Begin Source File

SOURCE=.\player_lagcompensation.cpp
# End Source File
# Begin Source File

SOURCE=.\player_resource.cpp
# End Source File
# Begin Source File

SOURCE=.\player_resource.h
# End Source File
# Begin Source File

SOURCE=.\playerlocaldata.cpp
# End Source File
# Begin Source File

SOURCE=.\playerlocaldata.h
# End Source File
# Begin Source File

SOURCE=.\point_playermoveconstraint.cpp
# End Source File
# Begin Source File

SOURCE=.\point_template.cpp
# End Source File
# Begin Source File

SOURCE=.\point_template.h
# End Source File
# Begin Source File

SOURCE=.\PointAngleSensor.cpp
# End Source File
# Begin Source File

SOURCE=.\PointAngularVelocitySensor.cpp
# End Source File
# Begin Source File

SOURCE=.\PointHurt.cpp
# End Source File
# Begin Source File

SOURCE=.\PointTeleport.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\precache_register.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\precache_register.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\predictableid.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\predictableid.h
# End Source File
# Begin Source File

SOURCE=.\props.cpp
# End Source File
# Begin Source File

SOURCE=.\props.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ragdoll_shared.cpp
# End Source File
# Begin Source File

SOURCE=.\recipientfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\recipientfilter.h
# End Source File
# Begin Source File

SOURCE=.\rope.cpp
# End Source File
# Begin Source File

SOURCE=.\rope.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\rope_helpers.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\rope_physics.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\rope_physics.h
# End Source File
# Begin Source File

SOURCE=..\Public\rope_shared.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\saverestore.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\saverestore.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\saverestore_bitstring.h
# End Source File
# Begin Source File

SOURCE=.\saverestore_gamedll.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\saverestore_utlvector.h
# End Source File
# Begin Source File

SOURCE=.\SceneEntity.cpp
# End Source File
# Begin Source File

SOURCE=.\sceneentity.h
# End Source File
# Begin Source File

SOURCE=.\scripted.cpp
# End Source File
# Begin Source File

SOURCE=.\scripted.h
# End Source File
# Begin Source File

SOURCE=.\ScriptedTarget.cpp
# End Source File
# Begin Source File

SOURCE=.\ScriptedTarget.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\scriptevent.h
# End Source File
# Begin Source File

SOURCE=.\sendproxy.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\server_class.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\server_class.h
# End Source File
# Begin Source File

SOURCE=.\shadowcontrol.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\shattersurfacetypes.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\sheetsimulator.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\game_shared\sheetsimulator.h
# End Source File
# Begin Source File

SOURCE=..\Public\simple_physics.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\simple_physics.h
# End Source File
# Begin Source File

SOURCE=.\simtimer.cpp
# End Source File
# Begin Source File

SOURCE=.\simtimer.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\singleplay_gamerules.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\singleplay_gamerules.h
# End Source File
# Begin Source File

SOURCE=.\SkyCamera.cpp
# End Source File
# Begin Source File

SOURCE=.\sound.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\SoundEmitterSystem.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\SoundEmitterSystemBase.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\SoundEmitterSystemBase.h
# End Source File
# Begin Source File

SOURCE=.\soundent.cpp
# End Source File
# Begin Source File

SOURCE=.\soundent.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\soundenvelope.cpp
# End Source File
# Begin Source File

SOURCE=.\soundscape.h
# End Source File
# Begin Source File

SOURCE=.\splash.cpp
# End Source File
# Begin Source File

SOURCE=.\splash.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\Sprite.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\Sprite.h
# End Source File
# Begin Source File

SOURCE=..\Public\StringPool.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\StringRegistry.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\StringRegistry.h
# End Source File
# Begin Source File

SOURCE=..\Public\studio.h
# End Source File
# Begin Source File

SOURCE=.\subs.cpp
# End Source File
# Begin Source File

SOURCE=.\sun.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\takedamageinfo.cpp
# End Source File
# Begin Source File

SOURCE=.\tanktrain.cpp
# End Source File
# Begin Source File

SOURCE=.\te_effect_dispatch.cpp
# End Source File
# Begin Source File

SOURCE=.\team.cpp
# End Source File
# Begin Source File

SOURCE=.\team.h
# End Source File
# Begin Source File

SOURCE=.\team_spawnpoint.cpp
# End Source File
# Begin Source File

SOURCE=.\team_spawnpoint.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\teamplay_gamerules.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\teamplay_gamerules.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tempentity.h
# End Source File
# Begin Source File

SOURCE=.\TemplateEntities.cpp
# End Source File
# Begin Source File

SOURCE=.\TemplateEntities.h
# End Source File
# Begin Source File

SOURCE=.\tempmonster.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\terrainmod.h
# End Source File
# Begin Source File

SOURCE=.\terrainmodmgr.cpp
# End Source File
# Begin Source File

SOURCE=.\terrainmodmgr.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\terrainmodmgr_shared.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\test_ehandle.cpp
# End Source File
# Begin Source File

SOURCE=.\test_proxytoggle.cpp
# End Source File
# Begin Source File

SOURCE=.\test_stressentities.cpp
# End Source File
# Begin Source File

SOURCE=.\testfunctions.cpp
# End Source File
# Begin Source File

SOURCE=.\TestTraceline.cpp
# End Source File
# Begin Source File

SOURCE=.\textstatsmgr.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\trains.h
# End Source File
# Begin Source File

SOURCE=.\triggers.cpp
# End Source File
# Begin Source File

SOURCE=.\triggers.h
# End Source File
# Begin Source File

SOURCE=..\public\UserCmd.cpp
# End Source File
# Begin Source File

SOURCE=.\util.cpp
# End Source File
# Begin Source File

SOURCE=.\util.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\util_shared.cpp
# End Source File
# Begin Source File

SOURCE=..\Public\UtlBuffer.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\UtlBuffer.h
# End Source File
# Begin Source File

SOURCE=..\Public\utlsymbol.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\utlsymbol.h
# End Source File
# Begin Source File

SOURCE=.\variant_t.cpp
# End Source File
# Begin Source File

SOURCE=.\vguiscreen.cpp
# End Source File
# Begin Source File

SOURCE=.\vguiscreen.h
# End Source File
# Begin Source File

SOURCE=..\Public\vmatrix.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=..\Public\vmatrix.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\voice_common.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\voice_gamemgr.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\voice_gamemgr.h
# End Source File
# Begin Source File

SOURCE=.\WCEdit.cpp
# End Source File
# Begin Source File

SOURCE=.\WCEdit.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\weapon_parse.cpp
# End Source File
# Begin Source File

SOURCE=..\game_shared\weapon_parse.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\weapon_parse_default.cpp
# End Source File
# Begin Source File

SOURCE=.\world.cpp
# End Source File
# Begin Source File

SOURCE=.\world.h
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=..\Public\amd3dx.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ammodef.h
# End Source File
# Begin Source File

SOURCE=.\base_transmit_proxy.h
# End Source File
# Begin Source File

SOURCE=..\public\basehandle.h
# End Source File
# Begin Source File

SOURCE=.\basenetworkable.h
# End Source File
# Begin Source File

SOURCE=.\basetempentity.h
# End Source File
# Begin Source File

SOURCE=..\Public\basetypes.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\beam_flags.h
# End Source File
# Begin Source File

SOURCE=..\Public\bitbuf.h
# End Source File
# Begin Source File

SOURCE=..\Public\bitvec.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\bot_base.h
# End Source File
# Begin Source File

SOURCE=..\Public\BSPFILE.H
# End Source File
# Begin Source File

SOURCE=..\Public\bspflags.h
# End Source File
# Begin Source File

SOURCE=..\Public\bumpvects.h
# End Source File
# Begin Source File

SOURCE=..\Public\characterset.h
# End Source File
# Begin Source File

SOURCE=..\Public\client_class.h
# End Source File
# Begin Source File

SOURCE=..\public\client_textmessage.h
# End Source File
# Begin Source File

SOURCE=..\Public\cmodel.h
# End Source File
# Begin Source File

SOURCE=..\public\Color.h
# End Source File
# Begin Source File

SOURCE=..\Public\commonmacros.h
# End Source File
# Begin Source File

SOURCE=..\Public\const.h
# End Source File
# Begin Source File

SOURCE=..\public\vphysics\constraints.h
# End Source File
# Begin Source File

SOURCE=..\Public\coordsize.h
# End Source File
# Begin Source File

SOURCE=..\Public\customentity.h
# End Source File
# Begin Source File

SOURCE=.\damagemodifier.h
# End Source File
# Begin Source File

SOURCE=..\Public\datamap.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\dbg.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\decals.h
# End Source File
# Begin Source File

SOURCE=..\Public\dlight.h
# End Source File
# Begin Source File

SOURCE=..\public\dt_common.h
# End Source File
# Begin Source File

SOURCE=..\public\dt_recv.h
# End Source File
# Begin Source File

SOURCE=..\public\dt_send.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\effect_dispatch_data.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ehandle.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\entitylist_base.h
# End Source File
# Begin Source File

SOURCE=.\EventLog.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ExpressionSample.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\fasttimer.h
# End Source File
# Begin Source File

SOURCE=..\Public\FileSystem.h
# End Source File
# Begin Source File

SOURCE=..\public\filesystem_helpers.h
# End Source File
# Begin Source File

SOURCE=..\public\fmtstr.h
# End Source File
# Begin Source File

SOURCE=.\fogcontroller.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Func_Monitor.h
# End Source File
# Begin Source File

SOURCE=..\public\gametrace.h
# End Source File
# Begin Source File

SOURCE=.\globals.h
# End Source File
# Begin Source File

SOURCE=..\public\globalvars_base.h
# End Source File
# Begin Source File

SOURCE=..\public\appframework\IAppSystem.h
# End Source File
# Begin Source File

SOURCE=..\Public\icliententity.h
# End Source File
# Begin Source File

SOURCE=..\public\iclientnetworkable.h
# End Source File
# Begin Source File

SOURCE=..\Public\iclientrenderable.h
# End Source File
# Begin Source File

SOURCE=..\public\iclientunknown.h
# End Source File
# Begin Source File

SOURCE=..\public\engine\ICollideable.h
# End Source File
# Begin Source File

SOURCE=..\Public\icvar.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\IEffects.h
# End Source File
# Begin Source File

SOURCE=..\Public\engine\IEngineSound.h
# End Source File
# Begin Source File

SOURCE=..\public\engine\IEngineTrace.h
# End Source File
# Begin Source File

SOURCE=..\public\igameevents.h
# End Source File
# Begin Source File

SOURCE=..\Public\igamemovement.h
# End Source File
# Begin Source File

SOURCE=..\public\ihandleentity.h
# End Source File
# Begin Source File

SOURCE=..\public\vstdlib\IKeyValuesSystem.h
# End Source File
# Begin Source File

SOURCE=.\ilagcompensationmanager.h
# End Source File
# Begin Source File

SOURCE=..\public\materialsystem\imaterial.h
# End Source File
# Begin Source File

SOURCE=..\public\materialsystem\imaterialvar.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\imovehelper.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\in_buttons.h
# End Source File
# Begin Source File

SOURCE=..\Public\INetworkStringTableServer.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\ipredictionsystem.h
# End Source File
# Begin Source File

SOURCE=..\public\irecipientfilter.h
# End Source File
# Begin Source File

SOURCE=..\public\isaverestore.h
# End Source File
# Begin Source File

SOURCE=..\Public\iserverentity.h
# End Source File
# Begin Source File

SOURCE=..\public\iservernetworkable.h
# End Source File
# Begin Source File

SOURCE=..\Public\ISpatialPartition.h
# End Source File
# Begin Source File

SOURCE=..\public\engine\IStaticPropMgr.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\itempents.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\IVehicle.h
# End Source File
# Begin Source File

SOURCE=..\public\engine\ivmodelinfo.h
# End Source File
# Begin Source File

SOURCE=..\public\KeyValues.h
# End Source File
# Begin Source File

SOURCE=.\logicrelay.h
# End Source File
# Begin Source File

SOURCE=.\mapentities.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\mem.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\memalloc.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\memdbgoff.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\memdbgon.h
# End Source File
# Begin Source File

SOURCE=.\modelentities.h
# End Source File
# Begin Source File

SOURCE=.\tf2_dll\mortar_round.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\movevars_shared.h
# End Source File
# Begin Source File

SOURCE=.\netstatemgr.h
# End Source File
# Begin Source File

SOURCE=..\public\networkvar.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\npcevent.h
# End Source File
# Begin Source File

SOURCE=.\physics_cannister.h
# End Source File
# Begin Source File

SOURCE=.\physics_fx.h
# End Source File
# Begin Source File

SOURCE=.\physics_impact_damage.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\platform.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\playernet_vars.h
# End Source File
# Begin Source File

SOURCE=..\public\PlayerState.h
# End Source File
# Begin Source File

SOURCE=.\hl2_dll\Point_Camera.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\predictable_entity.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\predictioncopy.h
# End Source File
# Begin Source File

SOURCE=..\public\processor_detect.h
# End Source File
# Begin Source File

SOURCE=..\public\protected_things.h
# End Source File
# Begin Source File

SOURCE=..\public\vstdlib\random.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\rope_helpers.h
# End Source File
# Begin Source File

SOURCE=..\public\saverestoretypes.h
# End Source File
# Begin Source File

SOURCE=.\sendproxy.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\serial_entity.h
# End Source File
# Begin Source File

SOURCE=..\Public\shake.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\shared_classnames.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\shareddefs.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\sharedInterface.h
# End Source File
# Begin Source File

SOURCE=.\SkyCamera.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\soundenvelope.h
# End Source File
# Begin Source File

SOURCE=..\Public\soundflags.h
# End Source File
# Begin Source File

SOURCE=..\Public\string_t.h
# End Source File
# Begin Source File

SOURCE=..\Public\StringPool.h
# End Source File
# Begin Source File

SOURCE=..\public\vstdlib\strtools.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\takedamageinfo.h
# End Source File
# Begin Source File

SOURCE=.\te_effect_dispatch.h
# End Source File
# Begin Source File

SOURCE=.\test_stressentities.h
# End Source File
# Begin Source File

SOURCE=.\textstatsmgr.h
# End Source File
# Begin Source File

SOURCE=..\Public\usercmd.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\usermessages.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\util_shared.h
# End Source File
# Begin Source File

SOURCE=..\Public\utldict.h
# End Source File
# Begin Source File

SOURCE=..\Public\utllinkedlist.h
# End Source File
# Begin Source File

SOURCE=..\public\utlmap.h
# End Source File
# Begin Source File

SOURCE=..\Public\UtlMemory.h
# End Source File
# Begin Source File

SOURCE=..\Public\utlpriorityqueue.h
# End Source File
# Begin Source File

SOURCE=..\Public\utlrbtree.h
# End Source File
# Begin Source File

SOURCE=..\Public\UtlVector.h
# End Source File
# Begin Source File

SOURCE=..\Public\vallocator.h
# End Source File
# Begin Source File

SOURCE=.\variant_t.h
# End Source File
# Begin Source File

SOURCE=..\Public\vcollide.h
# End Source File
# Begin Source File

SOURCE=..\Public\vcollide_parse.h
# End Source File
# Begin Source File

SOURCE=..\Public\vector.h
# End Source File
# Begin Source File

SOURCE=..\Public\vector2d.h
# End Source File
# Begin Source File

SOURCE=..\Public\vector4d.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\tf2\vehicle_mortar_shared.h
# End Source File
# Begin Source File

SOURCE=..\public\vphysics\vehicles.h
# End Source File
# Begin Source File

SOURCE=..\Public\vphysics_interface.h
# End Source File
# Begin Source File

SOURCE=..\game_shared\vphysics_sound.h
# End Source File
# Begin Source File

SOURCE=..\Public\vplane.h
# End Source File
# Begin Source File

SOURCE=..\public\tier0\vprof.h
# End Source File
# Begin Source File

SOURCE=..\public\vstdlib\vstdlib.h
# End Source File
# Begin Source File

SOURCE=.\winlite.h
# End Source File
# Begin Source File

SOURCE=..\Public\worldsize.h
# End Source File
# End Group
# Begin Group "Data files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\bin\base.fgd
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\bin\halflife1.fgd
# End Source File
# Begin Source File

SOURCE=..\..\bin\halflife2.fgd
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\bin\tf2.fgd
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Source File

SOURCE=..\lib\public\vstdlib.lib
# End Source File
# Begin Source File

SOURCE=..\lib\public\tier0.lib
# End Source File
# End Target
# End Project
