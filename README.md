# Evo Model

This repository contains the implementation of the Evo model.

## Requirements

- CUDA 11.0 or higher
- Python 3.11
- GPU with compute capability 8.0 or higher (Ampere architecture or newer)

## Known Issues

### BF16 Compatibility Error

If you encounter the following error:
```
RuntimeError: Internal Triton PTX codegen error: 
ptxas error: Feature '.bf16' requires .target sm_80 or higher
```

This error occurs because:
1. The code uses BF16 (Brain Float 16) data type
2. Your GPU architecture (sm_70) doesn't support BF16 operations
3. BF16 requires NVIDIA GPUs with compute capability 8.0 or higher (Ampere architecture)

### Solutions

1. **Use Compatible Hardware:**
   - Use NVIDIA GPUs with compute capability 8.0 or higher (A100, A6000, etc.)
   - Check your GPU compatibility: `nvidia-smi --query-gpu=gpu_name,compute_cap --format=csv`

2. **Alternative Data Types:**
   - If hardware upgrade isn't possible, modify the code to use FP32 or FP16 instead of BF16
   - Note: This may affect model performance

## Usage

```bash
bash run.sh
```

## Installation

[Add your installation instructions here]

## License

[Add your license information here]