#!/bin/bash

# Force PyTorch to use FP32
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:32
export TORCH_USE_CUDA_DSA=0

env_name=evo
env_path=$(conda info --base)
source $env_path/bin/activate $env_name
python_bin=$(which python)

# We also provide an [example script](scripts/score.py) for using the model to score the log-likelihoods of a set of sequences.
# model: [evo-1-8k-base, evo-1.5-8k-base, evo-1-131k-base]
CUDA_VISIBLE_DEVICES=0 $python_bin -m scripts.score \
    --input-fasta examples/example_seqs.fasta \
    --output-tsv scores.tsv \
    --model-name 'evo-1-8k-base' \
    --device cuda:0
