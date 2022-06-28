#include <cuda_runtime.h>

#include "func1.cuh"



namespace test
{
namespace func1
{

__device__ __host__  float AddOne(float x)
{
    return x + 1.f;
}

} // namespace func1
} // namespace test
