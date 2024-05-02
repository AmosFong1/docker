#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/r_multiome_4.3.0.sif
HOME=/projects/dscott_prj/amfong/Multiome
SCRIPT=/projects/dscott_prj/amfong/Multiome/scratch/rscript.R

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    ${IMAGE} Rscript \
    ${SCRIPT} 