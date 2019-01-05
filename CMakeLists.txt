project(blas_test)
cmake_minimum_required(VERSION 3.10)
enable_language(C)

find_library(CBLAS_LIBRARY NAMES cblas libcblas)
find_path(CBLAS_INCLUDE_DIR cblas.h)

enable_testing()

add_executable(test_cblas cblas_example1.c)
target_link_libraries(test_cblas ${CBLAS_LIBRARY})
target_include_directories(test_cblas PRIVATE ${CBLAS_INCLUDE_DIR})
add_test(test_cblas ${CMAKE_CURRENT_BINARY_DIR}/test_cblas)
