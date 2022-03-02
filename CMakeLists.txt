cmake_minimum_required(VERSION 3.16)

project(SystemMonitor)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "-g")

#make an imgui folder and put all of these files in the imgui folder
set(IMGUI_SRC
        src/test.cpp
#        vendor/imgui/backends/imgui_impl_opengl3.h
#        vendor/imgui/backends/imgui_impl_opengl3.cpp
#        vendor/imgui/backends/imgui_impl_opengl3_loader.h
#        vendor/imgui/backends/imgui_impl_glfw.h
#        vendor/imgui/backends/imgui_impl_glfw.cpp
        vendor/imgui/imgui.h
        vendor/imgui/imgui.cpp
        vendor/imgui/imgui_draw.cpp
        vendor/imgui/imgui_tables.cpp
        vendor/imgui/imgui_widgets.cpp
        vendor/imgui/imgui_demo.cpp
        )

#Create the executable and link against all the files provided to us by ImGui
add_executable(SystemMonitor ${IMGUI_SRC})

include_directories("${CMAKE_SOURCE_DIR}/vendor/imgui"
                    "${CMAKE_SOURCE_DIR}/vendor/imgui/backends"
                    "${CMAKE_SOURCE_DIR}/src"
                   )
