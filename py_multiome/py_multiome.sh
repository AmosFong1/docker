# run on local
docker buildx build --platform linux/amd64 -t amosfong1/py_multiome:4.3.2 .

# run on server
singularity pull docker://amosfong1/py_multiome:4.3.2

# run on server
sh jupyter.sh

# run on local
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L 0308:gphost08.bcgsc.ca:0308 amfong@ssh.bcgsc.ca -v

# enter in browser
http://localhost:0308