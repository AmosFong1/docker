#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/images/py_scenicplus_3.11.sif
HOME=/projects/dscott_prj/amfong/Multiome
PORT=9079
export SINGULARITYENV_JUPYTER_TOKEN='password'

singularity exec \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    --bind=/tmp \
    ${IMAGE} jupyter lab \
    --port=${PORT} \
    --no-browser \
    --notebook-dir=${HOME}