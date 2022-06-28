add_library(fun_CUDA_CHECK check_cuda_error.h dummy.cu)

set_target_properties(fun_CUDA_CHECK PROPERTIES
    # LANGUAGE CUDA
    # LINKER_LANGUAGE CUDA

    PDB_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/bin"
)

target_link_libraries(fun_CUDA_CHECK PRIVATE CUDA::cudart)

target_include_directories(fun_CUDA_CHECK PUBLIC
    ${CMAKE_SOURCE_DIR}/modules/
    ${CMAKE_SOURCE_DIR}/build/bin/Debug
)
