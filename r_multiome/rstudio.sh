#!/bin/bash

IMAGE=/projects/dscott_prj/amfong/Multiome/r_multiome_4.3.0.sif
HOME=/projects/dscott_prj/amfong/Multiome
PORT=8030
export PASSWORD='password'

singularity exec \
    --bind=$TMPDIR:/var/run/ \
    --bind=$TMPDIR:/var/lib/rstudio-server \
    --home=${HOME} \
    --bind=/home/amfong \
    --bind=/projects/dscott_prj/amfong \
    --bind=/projects/dscott_scratch/amfong \
    ${IMAGE} rserver \
    --auth-none=0 \
    --auth-pam-helper-path=pam-helper \
    --www-port=${PORT} \
    --server-user=${USER}