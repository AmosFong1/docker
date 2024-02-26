#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/py_multiome_4.3.2.sif
HOME=/projects/dscott_prj/amfong/Multiome
export PASSWORD='password'

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/clc/clc_scratch/projects/yyin \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    ${IMAGE} jupyter lab \
    --port=0308 \
    --no-browser \
    --notebook-dir=${HOME}
