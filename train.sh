# sbatch slurm_scripts/basketball.slurm
torchrun --nnodes=1 --nproc_per_node=8 train.py --config ./configs/basketball/basketball_train.yaml