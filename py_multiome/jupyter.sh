#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/py_multiome_3.10.sif
HOME=/projects/dscott_prj/amfong/Multiome
PORT=8030
export SINGULARITYENV_JUPYTER_TOKEN='password'

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/clc/clc_scratch/projects/yyin \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    ${IMAGE} jupyter lab \
    --port=${PORT} \
    --no-browser \
    --notebook-dir=${HOME}