# run on local
docker buildx build --platform linux/amd64 -t amosfong1/r_multiome:4.3.2 .

# run on server
singularity pull docker://amosfong1/r_multiome:4.3.2

# run on server
PASSWORD='password' singularity exec --bind=$TMPDIR:/var/run/ --bind=$TMPDIR:/var/lib/rstudio-server --bind=/projects/dscott_prj/amfong/Multiome_DZ --bind=/projects/dscott_scratch/amfong/Multiome_DZ --bind=/home/amfong r_multiome_4.3.2.sif rserver --auth-none=0  --auth-pam-helper-path=pam-helper --www-port 8030 --server-user ${USER}

# run on local
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L 8030:gphost08.bcgsc.ca:8030 amfong@ssh.bcgsc.ca -v

# enter in browser
localhost:8030






