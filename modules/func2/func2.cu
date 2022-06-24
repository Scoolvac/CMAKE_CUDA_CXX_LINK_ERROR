#include <cuda_runtime.h>

#include "func1/func1.cuh"
#include "func2.cuh"


namespace test
{
namespace func2
{

__device__ __host__ inline  float AddTwo(float x)
{
    return func1::AddOne(x) + func1::AddOne(x);
}

} // namespace func2
} // namespace test
