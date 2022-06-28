add_library(func4 func4.cuh func4.cu)

set_target_properties(func4
        PROPERTIES
        
        LINKER_LANGUAGE CUDA
        
        CUDA_SEPARABLE_COMPILATION ON
        CUDA_RESOLVE_DEVICE_SYMBOLS ON

        PDB_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        )

target_link_libraries(func4 func3)

target_include_directories(func4 PUBLIC
    ${CMAKE_SOURCE_DIR}/modules/
    ${CMAKE_SOURCE_DIR}/build/bin/Debug
)
