#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/multiome_dz/images/r_multiome_4.3.2.sif
HOME=/home/amfong
SCRIPT=/projects/dscott_prj/amfong/multiome_dz/scratch/rscript.R

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    --bind=/tmp \
    ${IMAGE} Rscript \
    ${SCRIPT} 
