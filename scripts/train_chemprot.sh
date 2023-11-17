CUDA_VISIBLE_DEVICES=0,3  python ../main.py \
    --lr 4e-5 \
    --dataset chemprot \
    --saved_dataset n \
    --noise_ratio 0.2288 \
    --train_batch_size 16 \
    --epochs 10 \
    --vae_batch_size 16 \
    --vae_lr 2e-5 \
    --vae_epochs 500 \
    --total_iter 10 \
    --lambda_t 1 \
    --noise_type SN \
    --seed 1 \
    --path /home/yihui/VscodeFiles/DyGen/datasets/chemprot \
    # --bert dmis-lab/biobert-base-cased-v1.2