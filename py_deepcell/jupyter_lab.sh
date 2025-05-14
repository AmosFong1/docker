#!/bin/bash

IMAGE="/projects/dscott_prj/amfong/cosmx_dz/images/py_deepcell_3.11.sif"
HOME="/home/amfong"
PORT=7890

singularity exec \
    --home="${HOME}" \
    --bind="/home/amfong" \
    --bind="/projects/dscott_prj/" \
    --bind="/projects/dscott_scratch/" \
    --bind="/projects/rmorin" \
    --bind="/projects/rmorin_scratch" \
    --bind="/projects/clc" \
    --bind="/tmp" \
    "${IMAGE}" jupyter lab \
    --port=${PORT} \
    --no-browser \
    --notebook-dir="${HOME}"