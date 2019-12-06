#!/bin/bash
#SBATCH --account=def-robertf
#SBATCH --time=24:00:00
#SBATCH --array=0-0
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --mail-user=christian.poitras@ircm.qc.ca
#SBATCH --mail-type=ALL
#SBATCH --output=prepgenecov-%A_%a.out
#SBATCH --error=prepgenecov-%A_%a.out

if [ -z "$SLURM_ARRAY_TASK_ID" ]
then
  SLURM_ARRAY_TASK_ID=0
fi

prepgenecov -i $SLURM_ARRAY_TASK_ID $@