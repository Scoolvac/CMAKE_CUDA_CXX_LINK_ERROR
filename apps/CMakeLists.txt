add_executable(app1 apps1.cu)

set_target_properties(app1 PROPERTIES 
    # LINKER_LANGUAGE CUDA 
    # LANGUAGE CUDA
    CUDA_SEPARABLE_COMPILATION ${SET_CUDA_SEPARABLE_COMPILATION_4EXE}
    CUDA_RESOLVE_DEVICE_SYMBOLS ${SET_CUDA_RESOLVE_DEVICE_SYMBOLS_4EXE}
    
    PDB_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
    )

target_link_libraries(app1 PRIVATE func1 func2 func3)
target_link_directories(app1 PRIVATE ${CMAKE_SOURCE_DIR}/build/bin)

target_include_directories(app1 PRIVATE
    ${CMAKE_SOURCE_DIR}/modules/
    ${CMAKE_SOURCE_DIR}/build/bin/Debug
)