# docker
This is how I launch Docker containers!

## 1 build docker image
```
cd ${PATH_TO_DOCKERFILE}
docker buildx build --platform linux/amd64 -t ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG}
```

## 2 pull singularity image file
```
singularity pull docker://${DOCKER_USERNAME}/${DOCKER_IMAGE_NAME}:${TAG}
```

## 3 create container
```
sh rscript.sh
sh rserver.sh
sh python.sh
sh jupyter_lab.sh
```

## 4 local port forwarding
```
ssh -oHostKeyAlgorithms=+ssh-rsa -N -L ${LOCAL_PORT}:${REMOTE_HOST}:${REMOTE_PORT} amfong@ssh.bcgsc.ca -v
```

## 5 access remote service
Open your browser and go to: `http://localhost:${LOCAL_PORT}`

