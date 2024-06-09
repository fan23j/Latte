#!/usr/bin/env bash
#SBATCH --job-name=Latte-basketball-test
#SBATCH --partition a6000
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --gres=gpu:8
#SBATCH --cpus-per-task=16
#SBATCH --time=500:00:00
#SBATCH --output=slurm_log/%j.out 
#SBATCH --error=slurm_log/%j.err
#SBATCH --gpus 8

srun python train.py --config ./configs/basketball/basketball_train.yaml