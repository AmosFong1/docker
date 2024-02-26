#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/r_multiome_4.3.2.sif
HOME=/projects/dscott_prj/amfong/Multiome
SCRIPT=/projects/dscott_prj/amfong/Multiome/scripts/rscript.R

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/clc/clc_scratch/projects/yyin \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    ${IMAGE} Rscript \
    ${SCRIPT} 