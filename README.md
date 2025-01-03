# Evo Model

fix the bug of Evo Model that use BF16, and you can use CUDA 11.0.

If you encounter the following error:
```
RuntimeError: Internal Triton PTX codegen error: 
ptxas error: Feature '.bf16' requires .target sm_80 or higher
```

that means your GPU is not compatible with BF16, or you are using CUDA 11.0.

this repository fix this problem by using FP16 instead of BF16, and you can use CUDA 11.0.

and then you can run the code by using the following command:
```
bash run.sh
```

## References

### Paper
Nguyen, E., Ruffolo, J. A., Lam, J. H., Chirikjian, J. G., Sundaram, R., Yang, K. K., & Church, G. M. (2024). Sequence modeling and design from molecular to genome scale with Evo. *Science*, 386(6723), eado9336.

### Original Repository
[Evo Model Repository](https://github.com/evo-design/evo)