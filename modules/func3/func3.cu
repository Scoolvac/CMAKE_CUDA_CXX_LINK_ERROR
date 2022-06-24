#include <cuda_runtime.h>

#include "func1/func1.cuh"
#include "func2/func2.cuh"
#include "func3.cuh"

namespace test
{
namespace func3
{

__device__ __host__ inline  float AddThree(float x)
{
    return func1::AddOne(x) + func2::AddTwo(x);
}

} // namespace func3
} // namespace test
