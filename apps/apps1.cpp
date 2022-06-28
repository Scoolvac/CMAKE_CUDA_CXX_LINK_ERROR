#define N 256

#include <cuda_runtime.h>

#include "func3/func3.cuh"
#include "func4/func4.cuh"
#include "utils/check_cuda_error.h"

using namespace test;

int main()
{
    float* arr = new float[N];
    
    for (unsigned int i = 0; i < N; ++i)
    {
        arr[i] = func3::AddThree(0.f);
    }

    CHECK_CUDA_ERROR(cudaMallocManaged(&arr, sizeof(float) * N));

    void* args[] = {&arr};

    dim3 block_dim{N};
    dim3 grid_dim{1,1,1};

    cudaLaunchKernel((void*) func4::AddThreeCUDA, grid_dim, block_dim, args);
}