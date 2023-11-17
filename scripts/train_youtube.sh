#!/bin/bash
noise_ratios=(0.2 0.4 0.6)
noise_types=('SN' 'ASN' 'IDN')
for noise_ratio in "${noise_ratios[@]}"
do
    for noise_type in "${noise_types[@]}"
    do
        CUDA_VISIBLE_DEVICES=2 python ../main.py \
            --lr 1e-4 \
            --dataset youtube \
            --saved_dataset n \
            --noise_ratio $noise_ratio \
            --train_batch_size 32 \
            --epochs 10 \
            --vae_lr 5e-6 \
            --vae_epochs 500 \
            --total_iter 10 \
            --lambda_t 1 \
            --noise_type $noise_type \
            --seed 1 \
            --path /home/yihui/VscodeFiles/DyGen/datasets/youtube
    done
done
