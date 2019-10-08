#!/bin/bash
#SBATCH -C haswell
#SBATCH -q debug
#SBATCH -t 30
#SBATCH -J train-cori
#SBATCH -d singleton
#SBATCH -o logs/%x-%j.out

# If using burst buffer
####DW persistentdw name=cosmobb

mkdir -p logs
. scripts/setup_cori.sh

srun -l -u python train.py -d $@
