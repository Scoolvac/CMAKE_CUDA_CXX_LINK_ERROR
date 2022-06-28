add_library(func2 func2.cu func2.cuh)

set_target_properties(func2
    PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON
        CUDA_RESOLVE_DEVICE_SYMBOLS OFF
        
        PDB_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        )

# target_compile_options(func2

# )

target_include_directories(func2 PUBLIC
    ${CMAKE_SOURCE_DIR}/modules/
    ${CMAKE_SOURCE_DIR}/build/bin/Debug
)

# target_link_directories(func2

# )

target_link_libraries(func2 func1)