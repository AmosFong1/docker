#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/multiome_dz/images/py_scenicplus_3.11.sif
HOME=/home/amfong
SCRIPT=/projects/dscott_prj/amfong/multiome_dz/scratch/python3.py

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    --bind=/tmp \
    ${IMAGE} python3 \
    ${SCRIPT}