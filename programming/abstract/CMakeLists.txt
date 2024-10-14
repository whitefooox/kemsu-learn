cmake_minimum_required(VERSION 3.10)

# Название проекта
project(FigureProject VERSION 1.0)

# Установка стандарта C++
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Добавление исполняемого файла
add_executable(FigureApp
    src/main.cpp
    src/figure/figure.cpp
    src/figure/circle.cpp
    src/figure/rectangle.cpp
)

# Добавление директории с заголовочными файлами
target_include_directories(FigureApp PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Если у вас есть дополнительные библиотеки, вы можете добавить их так:
# target_link_libraries(FigureApp PRIVATE SomeLibrary)

# Установка выходной директории для исполняемого файла
set_target_properties(FigureApp PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
)