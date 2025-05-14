#!/bin/bash

IMAGE="/projects/dscott_prj/amfong/multiome_dz/images/py_multiome_3.11.sif"
HOME="/home/amfong"
PORT=9079

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