#!/bin/bash

#SBATCH --job-name=chp_seg
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=4000m
#SBATCH --time=02-00:00:00
#SBATCH --account=<ACCOUNT>
#SBATCH --partition=standard

module load singularity

IMGTYPE=$1
IMGPATH=$2

IMGDIR=$(dirname $(realpath $IMGPATH))
IMGNAME=$(basename $(realpath $IMGPATH))

singularity exec --bind ${IMGDIR}:/data/in --bind ${IMGDIR}:/data/out --pwd /app <SIFPATH> python3 serialize_process --sequence_type ${IMGTYPE} --name_pattern ${IMGNAME} --overwrite True
