add_library(func1 func1.cu func1.cuh)

set_target_properties(func1
    PROPERTIES
        CUDA_SEPARABLE_COMPILATION ${SET_CUDA_SEPARABLE_COMPILATION_4LIB}
        CUDA_RESOLVE_DEVICE_SYMBOLS ${SET_CUDA_RESOLVE_DEVICE_SYMBOLS_4LIB}
        
        PDB_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
        )

# target_compile_options(func1

# )

# target_include_directories(func1)




# target_link_directories(func1

# )

# target_link_libraries(func1)
