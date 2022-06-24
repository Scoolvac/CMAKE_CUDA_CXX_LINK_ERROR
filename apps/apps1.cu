#define N 256

#include <cuda_runtime.h>

#include "func1/func1.cuh"
#include "func2/func2.cuh"
#include "func3/func3.cuh"

__global__ void AddThree(float* arr)
{
    const unsigned int idx = threadIdx.x + blockIdx.x * blockDim.x;

    if (idx < N)
    {
        arr[idx] = test::func3::AddThree(arr[idx]);
    }
}

int main()
{
    float* arr = new float[N];
    
    for (unsigned int i = 0; i < N; ++i)
    {
        arr[i] = test::func3::AddThree(0.f);
    }

    cudaMallocManaged(&arr, sizeof(float) * N);

    AddThree<<<N,1>>>(arr);
}