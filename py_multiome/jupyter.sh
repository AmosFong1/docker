#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/py_multiome_3.11.sif
HOME=/projects/dscott_prj/amfong/Multiome
export SINGULARITYENV_JUPYTER_TOKEN='password'

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/clc/clc_scratch/projects/yyin \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    ${IMAGE} jupyter lab \
    --port=9079 \
    --no-browser \
    --notebook-dir=${HOME}