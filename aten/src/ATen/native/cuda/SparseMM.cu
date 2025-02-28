#define TORCH_ASSERT_ONLY_METHOD_OPERATORS
#include <ATen/core/Tensor.h>
#include <c10/util/Exception.h>

#ifndef AT_PER_OPERATOR_HEADERS
#include <ATen/NativeFunctions.h>
#else
#include <ATen/ops/sspaddmm_native.h>
#endif

namespace at::native {
// sparse, sparse, sparse, dense, real, real -> sparse
Tensor& _sspaddmm_out_only_sparse_cuda(const Tensor& self,
    const Tensor& mat1, const Tensor& mat2, const Scalar& beta, const Scalar& alpha, Tensor& result) {
  TORCH_CHECK(false, "tensor.sspaddmm(...) can only be called on sparse tensors");
}
Tensor& _sspaddmm_out_cuda(const Tensor& self,
    const Tensor& mat1, const Tensor& mat2, const Scalar& beta, const Scalar& alpha, Tensor& result) {
  TORCH_CHECK(false, "NYI: CUDA sspaddmm is not implemented");
}
} // namespace at::native
