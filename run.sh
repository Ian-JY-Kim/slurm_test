#!/bin/bash -l

#SBATCH --job-name=example
#SBATCH --nodes=1                   # node count
#SBATCH --ntasks-per-node=1         # no. tasks per node
#SBATCH --array=1-5
#SBATCH --time=0-00:05:00

#SBATCH --mem=2GB




SCRATCH_DIRECTORY=job-array-example/${SLURM_JOBID}
mkdir -p ${SCRATCH_DIRECTORY}
cd ${SCRATCH_DIRECTORY}


echo "now processing task id:: " ${SLURM_ARRAY_TASK_ID}
python test.py > output_${SLURM_ARRAY_TASK_ID}.txt


