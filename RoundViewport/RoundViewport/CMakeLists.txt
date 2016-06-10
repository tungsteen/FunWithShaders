project(RoundViewport)
cmake_minimum_required(VERSION 2.8)
aux_source_directory(. SRC_LIST)

set (UDIR "D:/Programming/cpp/Urho3D-sb-git")

set(GUI_TYPE WIN32)
include_directories("${UDIR}/include" "${UDIR}/include/Urho3D/ThirdParty")
link_directories(Urho3D "${UDIR}/lib")
add_executable(${PROJECT_NAME} ${GUI_TYPE} ${SRC_LIST})
target_link_libraries(${PROJECT_NAME} d3d9 D3DCompiler winmm imm32 version d3d9 Urho3D_d)
