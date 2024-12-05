project "ImGui"
  kind "StaticLib"
  language "C++"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  defines
  {
      "IMGUI_API= __declspec(dllexport)",
  }

  files 
  {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp",
    "imgui_tables.cpp",
    "imgui_draw.cpp",
  }

  filter "system:windows"
    systemversion "latest"
    cppdialect "C++20"
    staticruntime "On"

  filter {"system:windows", "configurations:Release"}
    buildoptions "/MT"
