#!/bin/bash

# Example of running python script in a batch mode

#SBATCH -J hello
#SBATCH -p normal
#SBATCH -c 1                            # one CPU core
#SBATCH -t 10:00
#SBATCH -o hello-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jk7362@nyu.edu

srun python hello.py