#!/bin/bash
# The interpreter used to execute the script

# “#SBATCH” directives that convey submission options:

#SBATCH --job-name=qm2-H9
#SBATCH --mail-user=jmkidd@umich.edu
#SBATCH --mail-type=FAIL,ARRAY_TASKS
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=6G 
#SBATCH --time=8:00:00
#SBATCH --account=jmkidd99
#SBATCH --partition=standard
#SBATCH --output=logs/%x-%A_%a.out.log
#SBATCH --export=ALL


# The application(s) to execute along with its input arguments and options:
cd $SLURM_SUBMIT_DIR;
date;
biser --temp biser-temp2/ --keep-temp -o mCanLor1.2-BISER.out.bed -t 20 mCanLor1.2.masked.fasta ;
date;
