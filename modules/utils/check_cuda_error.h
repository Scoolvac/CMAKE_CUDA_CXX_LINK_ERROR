#ifndef CHECK_CUDA_ERROR_H
#define CHECK_CUDA_ERROR_H

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <cuda_runtime_api.h>

namespace test
{

template <typename T>
void check(T result, char const* const func, const char* const file, int const line)
{
    if (result)
    {
        fprintf(
            stderr,
            "CUDA error at %s:%d code=%d(%s) \"%s\" \n",
            file,
            line,
            static_cast<unsigned int>(result),
            cudaGetErrorName(result),
            func);
        exit(EXIT_FAILURE);
    }
}

#define CHECK_CUDA_ERROR(val) check((val), #val, __FILE__, __LINE__)
    
} // namespace test

#endif // CHECK_CUDA_ERROR_H
