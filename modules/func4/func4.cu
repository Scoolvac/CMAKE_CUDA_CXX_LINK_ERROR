#include <cuda_runtime.h>

#include "func3/func3.cuh"
#include "func4.cuh"

#define N 256

namespace test
{
namespace func4
{

__global__ void AddThreeCUDA(float* arr)
{
    const unsigned int idx = threadIdx.x + blockIdx.x * blockDim.x;

    if (idx < N)
    {
        arr[idx] = func3::AddThree(arr[idx]);
    }
}
    
} // namespace func4
}
