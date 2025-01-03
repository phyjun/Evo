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