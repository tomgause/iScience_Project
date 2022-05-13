#!/usr/bin/env bash
#SBATCH --job-name=LSTM
#SBATCH --output=LSTM-%j.out 
#SBATCH --partition=standard 
#SBATCH --mem=50G
#SBATCH --time=00:10:00

# print SLURM envirionment variables
echo "Job ID: ${SLURM_JOB_ID}"
echo "Node: ${SLURMD_NODENAME}" 
echo "Starting: "`date +"%D %T"` 
# Your calculations here 
Rscript /storage/tgause/iScience_tom/iScience_Project/LSTM/LSTM_testing.R
# End of job info 
echo "Ending: "`date +"%D %T"`