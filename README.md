# docker
This is how I launch Docker containers!

## environment variables
```
PATH_TO_DOCKERFILE=""
DOCKER_USERNAME=""
DOCKER_IMAGE_NAME=""
TAG=""
PLATFORM="linux/amd64"
LOCAL_PORT=""
REMOTE_HOST=""
REMOTE_PORT=""
SSH_USERNAME=""
SSH_SERVER=""
```

## build docker image
```
cd ${PATH_TO_DOCKERFILE}
docker buildx build --platform ${PLATFORM} -t ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG}
```

## pull singularity image file
```
singularity pull docker://${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG}
```

## create docker container
```
sh rscript.sh
sh rserver.sh
sh python.sh
sh jupyter_lab.sh
```

## local port forwarding
```
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L ${LOCAL_PORT}:${REMOTE_HOST}:${REMOTE_PORT} ${SSH_USERNAME}@${SSH_SERVER} -v
```

## access remote service
Open your browser and go to: `http://localhost:${LOCAL_PORT}`

