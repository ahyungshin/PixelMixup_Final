#!/bin/bash

#SBATCH --job-name=CPSL_mixup_ent_50fix
#SBATCH --gres=gpu:4
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=20G
#SBATCH --time=4-0
#SBATCH --partition batch_grad
#SBATCH -o slurm.out


. /data/dkgud111/anaconda3/etc/profile.d/conda.sh
conda activate daformer




python train.py --name gta2citylabv2_stage1Denoise --used_save_pseudo --ema --proto_rectify \
--path_soft Pseudo/gta2citylabv2_warmup_soft \
--resume_path ./pretrained_models/from_gta5_to_cityscapes_on_deeplabv2_best_model.pkl \
--rce --proto_consistW 5 --SL_lambda 0.1
