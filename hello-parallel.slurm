#!/bin/bash

# Example of running python script with a job array

#SBATCH -J hello
#SBATCH --array=1-10                    # how many tasks in the array
#SBATCH -c 1                            # one CPU core per task
#SBATCH -t 10:00
#SBATCH -o hello-%j-%a.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jk7362@nyu.edu


# Run python script with a command line argument
srun python hello-parallel.py $SLURM_ARRAY_TASK_ID