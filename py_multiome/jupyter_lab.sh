#!/bin/bash

IMAGE="/projects/dscott_prj/amfong/cosmx_dz/images/py_multiome_3.11.sif"
HOME="/home/amfong"
PORT=9079

singularity exec \
    --home="${HOME}" \
    --bind="/home/amfong" \
    --bind="/projects/dscott_prj/amfong" \
    --bind="/projects/dscott_scratch/amfong" \
    --bind="/tmp" \
    "${IMAGE}" jupyter lab \
    --port=${PORT} \
    --no-browser \
    --notebook-dir="${HOME}"