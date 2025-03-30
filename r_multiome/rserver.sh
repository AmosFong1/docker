#!/bin/bash

IMAGE="/projects/dscott_prj/amfong/multiome_dz/images/r_multiome_4.3.3.sif"
HOME="/home/amfong"
PORT=8030
export PASSWORD="famousamos"
export TMPDIR="/home/amfong"

singularity exec \
    --bind="${TMPDIR}:/var/run/" \
    --bind="${TMPDIR}:/var/lib/rstudio-server" \
    --home="${HOME}" \
    --bind="/home/amfong" \
    --bind="/projects/dscott_prj/amfong" \
    --bind="/projects/dscott_scratch/amfong" \
    --bind="/tmp" \
    "${IMAGE}" "/usr/lib/rstudio-server/bin/rserver" \
    --auth-none=0 \
    --auth-pam-helper-path=pam-helper \
    --www-port=${PORT} \
    --server-user="${USER}" \
    --auth-timeout-minutes=0 \
    --auth-stay-signed-in-days=30