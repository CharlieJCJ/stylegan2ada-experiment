#!/bin/bash
# Job name:
#SBATCH --job-name=formal_test1(for one_three_six MNIST stylegan2ada test)
#
# Account:
#SBATCH --account=fc_psychvis
#
# Partition:
#SBATCH --partition=savio2_gpu
#
# Number of nodes:
#SBATCH --nodes=2
#
# Number of tasks (one for each GPU desired for use case) (example):
#SBATCH --ntasks=8
#
# Processors per task:
# Always at least twice the number of GPUs (savio2_gpu and GTX2080TI in savio3_gpu)
# Four times the number for TITAN and V100 in savio3_gpu
# Eight times the number for A40 in savio3_gpu
#SBATCH --cpus-per-task=2
#
#Number of GPUs, this can be in the format of "gpu:[1-4]", or "gpu:K80:[1-4] with the type included
#SBATCH --gres=gpu:4
#
# Wall clock limit:
#SBATCH --time=3-00:00:00
#
## Command(s) to run (example):
echo "Running on host"
nvidia-smi
python /global/scratch/users/charliechengjieji/stylegan2ada-experiment/train.py --data=/global/scratch/users/charliechengjieji/stylegan2ada-experiment/data/one_three_six.zip --outdir=/global/scratch/users/charliechengjieji/stylegan2ada-experiment/result