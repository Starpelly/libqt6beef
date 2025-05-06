cmake_minimum_required(VERSION 3.15)
project(QtBeefLink)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_SUPPRESS_REGENERATION TRUE)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_LINK_WHAT_YOU_USE TRUE) # Helps detect missing symbols

# Output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Qt build automation
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# Source files
set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)
file(GLOB_RECURSE PROJECT_SOURCES
    ${SOURCE_DIR}/*.cpp
    ${SOURCE_DIR}/*.h
)

# Qt modules
set(QT_MODULES
    Core
    Gui
    Widgets
    # Network
    Multimedia
    MultimediaWidgets
    # PrintSupport
    Svg
    SvgWidgets
    # WebChannel
    # WebEngineCore
    # Qml
    # Quick
    # Pdf
)

find_package(Qt6 REQUIRED COMPONENTS ${QT_MODULES})

# Build static library
add_library(QtBeefLink STATIC ${PROJECT_SOURCES})
target_include_directories(QtBeefLink PUBLIC ${SOURCE_DIR})
target_include_directories(QtBeefLink PUBLIC ${INCLUDE_DIR})
add_definitions(-DQT_STATIC)

# Link Qt libraries
foreach(module IN LISTS QT_MODULES)
    target_link_libraries(QtBeefLink PRIVATE Qt6::${module})
endforeach()

# Install
include(GNUInstallDirs)
install(TARGETS QtBeefLink
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

# Ensures that the Qt API symbols are properly exported
if(MSVC)
    foreach(module IN LISTS QT_MODULES)
        target_link_options(QtBeefLink PRIVATE /WHOLEARCHIVE:Qt6::${module})
    endforeach()
else()
    foreach(module IN LISTS QT_MODULES)
        target_link_libraries(QtBeefLink PRIVATE -Wl,--whole-archive Qt6::${module} -Wl,--no-whole-archive)
    endforeach()
endif()

# Optional: Copy Qt DLLs after build (Windows only)
if(WIN32)
    function(copy_qt_runtime_dlls target modules)
        foreach(module IN LISTS modules)
            get_target_property(qt_dll Qt6::${module} LOCATION)
            add_custom_command(TARGET ${target} POST_BUILD
                COMMAND ${CMAKE_COMMAND} -E copy_if_different
                        "${qt_dll}" "$<TARGET_FILE_DIR:${target}>"
                COMMENT "Copying Qt6::${module} DLL"
            )
        endforeach()
    endfunction()

    copy_qt_runtime_dlls(QtBeefLink "${QT_MODULES}")
endif()

# Windows libraries
target_link_libraries(QtBeefLink PRIVATE
    netapi32.lib
    Version.lib
    user32.lib
    gdi32.lib
    windowsapp.lib
    shell32.lib
)

# Visual Studio folder structuring
if(MSVC_IDE)
    foreach(source IN LISTS PROJECT_SOURCES)
        get_filename_component(source_path "${source}" PATH)
        string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" relative_path "${source_path}")
        string(REPLACE "/" "\\" group_name "${relative_path}")
        source_group("${group_name}" FILES "${source}")
    endforeach()
endif()
