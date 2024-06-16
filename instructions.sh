# run on local
docker buildx build --platform linux/amd64 -t amosfong1/r_multiome:4.3.2 .
docker push amosfong1/r_multiome:4.3.2

# run on server
singularity pull docker://amosfong1/r_multiome:4.3.2
sh rscript.sh
sh rserver.sh

# run on local
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L 8030:gphost04.bcgsc.ca:8030 amfong@ssh.bcgsc.ca -v

# enter in browser
http://localhost:8030






