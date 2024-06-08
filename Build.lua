-- premake5.lua
workspace "Renagine"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Renagine-App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Core/Build-Core.lua"
group ""

group "Importer"
   include "Importer/Build-Importer.lua"
group ""

include "App/Build-App.lua"