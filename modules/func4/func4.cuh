#ifndef FUNC4_CUH
#define FUNC4_CUH

#include <cuda_runtime.h>

namespace test
{
namespace func4
{
__global__ void AddThreeCUDA(float* arr);

} // namespace func4
} // namespace test

#endif