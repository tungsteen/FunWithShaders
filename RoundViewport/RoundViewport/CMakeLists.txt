project(RoundViewport)
cmake_minimum_required(VERSION 2.8)
aux_source_directory(. SRC_LIST)

set (UDIR "D:/Programming/cpp/build-Urho3D-sb-git-Desktop_Qt_5_6_0_MSVC2015_64bit-Debug")

set(GUI_TYPE WIN32)
include_directories("${UDIR}/include" "${UDIR}/include/Urho3D/ThirdParty")
link_directories(Urho3D "D:/Programming/cpp/build-Urho3D-sb-git-Desktop_Qt_5_6_0_MSVC2015_64bit-Default/lib")
add_executable(${PROJECT_NAME} ${GUI_TYPE} ${SRC_LIST})
target_link_libraries(${PROJECT_NAME} d3d9 D3DCompiler winmm imm32 version d3d9 Urho3D_d)
