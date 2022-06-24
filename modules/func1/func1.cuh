#ifndef FUNC1_CUH
#define FUNC1_CUH

#include <cuda_runtime.h>

namespace test
{
namespace func1
{

__device__ __host__ inline  float AddOne(float x);

} // namespace func1
} // namespace test

#endif