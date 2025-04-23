#!/bin/bash

#SBATCH --job-name=test
#SBATCH --partition=debuga100
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=25
#SBATCH --gres=gpu:5            #最多28gpu卡
#SBATCH --output=%j.out
#SBATCH --error=%j.err

module load miniconda3
source activate ai_field
which python
chmod +x ./WDNet/train.py
python ./WDNet/train.py