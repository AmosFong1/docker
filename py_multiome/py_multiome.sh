# run on local
docker buildx build --platform linux/amd64 -t amosfong1/py_multiome:3.11 .

# run on server
singularity pull docker://amosfong1/py_multiome:3.11

# run on server
sh jupyter.sh

# run on local
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L 9079:gphost08.bcgsc.ca:9079 amfong@ssh.bcgsc.ca -v

# enter in browser
http://localhost:9079