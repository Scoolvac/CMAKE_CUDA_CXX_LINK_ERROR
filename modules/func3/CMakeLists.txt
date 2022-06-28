add_library(func3 func3.cu func3.cuh)

set_target_properties(func3
    PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON
        CUDA_RESOLVE_DEVICE_SYMBOLS OFF
        
        PDB_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        )

# target_compile_options(func3

# )

target_include_directories(func3 PUBLIC
    ${CMAKE_SOURCE_DIR}/modules/
    ${CMAKE_SOURCE_DIR}/build/bin/Debug
)

# target_link_directories(func3

# )

target_link_libraries(func3 func2 func1)