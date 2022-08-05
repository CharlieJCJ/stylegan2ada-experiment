#!/bin/bash
# 2 x v100 in savio3_gpu, 8 x cpu
# Job name:
#SBATCH --job-name=0to6job
#
# Account:
#SBATCH --account=fc_psychvis
#
# Partition:
#SBATCH --partition=savio3_gpu
#
# Number of nodes:
#SBATCH --nodes=1
#
# Number of tasks (one for each GPU desired for use case) (example):
#SBATCH --ntasks=2
#
#SBATCH -q v100_gpu3_normal
# Processors per task:
# Always at least twice the number of GPUs (savio2_gpu and GTX2080TI in savio3_gpu)
# Four times the number for TITAN and V100 in savio3_gpu
# Eight times the number for A40 in savio3_gpu
#SBATCH --cpus-per-task=4
#
#Number of GPUs, this can be in the format of "gpu:[1-4]", or "gpu:K80:[1-4] with the type included
#SBATCH --gres=gpu:V100:2
#
# Wall clock limit:
#SBATCH --time=1-00:00:00
#
## Command(s) to run (example):
echo "Running on host"
nvidia-smi
python /global/scratch/users/charliechengjieji/stylegan2ada-experiment/train.py --data=/global/scratch/users/charliechengjieji/stylegan2ada-experiment/data/0to6.zip --outdir=/global/scratch/users/charliechengjieji/stylegan2ada-experiment/result