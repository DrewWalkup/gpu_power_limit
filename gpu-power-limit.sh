# /usr/local/bin/gpu-power-limit.sh
#!/bin/bash

# Get number of GPUs
NUM_GPUS=$(nvidia-smi --query-gpu=gpu_name --format=csv,noheader | wc -l)

# Set power limit for each GPU
for (( i=0; i<$NUM_GPUS; i++ ))
do
    nvidia-smi -i $i -pl 250
    echo "Set power limit for GPU $i"
done