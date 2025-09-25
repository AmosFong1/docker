# Docker
This is how I launch Docker containers!

## Environment variables
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

## Build docker image
```
cd ${PATH_TO_DOCKERFILE}
docker buildx build --platform ${PLATFORM} -t ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG}
```

## Pull singularity image file
```
singularity pull docker://${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG}
```

## Create docker container
```
sh rscript.sh
sh rserver.sh
sh python.sh
sh jupyter_lab.sh
```

## Local port forwarding
```
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L ${LOCAL_PORT}:${REMOTE_HOST}:${REMOTE_PORT} ${SSH_USERNAME}@${SSH_SERVER} -v
```

## Access remote service
Open your browser and go to: `http://localhost:${LOCAL_PORT}`

