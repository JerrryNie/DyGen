#!/bin/bash

noise_ratios=(0.2 0.4 0.6)
noise_types=('IDN' 'SN' 'ASN')
ablations=(1 3)
for ablation in "${ablations[@]}"
do
    for noise_ratio in "${noise_ratios[@]}"
    do
        for noise_type in "${noise_types[@]}"
        do
            CUDA_VISIBLE_DEVICES=3 python ../main.py \
                --lr 1e-4 \
                --dataset 20news \
                --saved_dataset n \
                --noise_ratio $noise_ratio \
                --train_batch_size 64 \
                --epochs 10 \
                --vae_lr 1e-4 \
                --vae_epochs 500 \
                --total_iter 10 \
                --lambda_t 1 \
                --noise_type $noise_type \
                --seed 2 \
                --path /home/yihui/VscodeFiles/DyGen/datasets/20news \
                --ablation $ablation
        done
    done
done