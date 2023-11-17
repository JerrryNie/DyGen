ablations=(0 1 2 3)
for ablation in "${ablations[@]}"
do
CUDA_VISIBLE_DEVICES=3 python ../main.py \
    --lr 5e-6 \
    --dataset trec \
    --saved_dataset n \
    --noise_ratio 0 \
    --train_batch_size 64 \
    --epochs 10 \
    --vae_lr 1e-4 \
    --vae_epochs 500 \
    --total_iter 10 \
    --lambda_t 1 \
    --noise_type SN \
    --seed 2 \
    --path /home/yihui/VscodeFiles/DyGen/datasets/trec \
    --ablation $ablation
done