#!/bin/bash -l

#SBATCH --ntasks=1
#SBATCH --mem=1
#SBATCH --time=0:30:00
#SBATCH --account=lc_cdk1

#gunzip *.gz
wc -l *.fastq > RawReadCounts.txt
