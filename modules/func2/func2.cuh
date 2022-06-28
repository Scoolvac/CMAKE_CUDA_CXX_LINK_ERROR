#ifndef FUNC2_CUH
#define FUNC2_CUH

#include <cuda_runtime.h>

namespace test
{
namespace func2
{

__device__ __host__  float AddTwo(float x);

} // namespace func2
} // namespace test

#endif