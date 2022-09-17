#!/usr/bin/env bash

# Just container name
CONTAINER_NAME="vaultwarden-server"

# Volume path where you want to store the vaultwarden data
HOST_VOLUME_PATH="/opt/vaultwarden"

# Just container port forwarding
# e.g 8002:80, means the container listens on port:80
# but the container can access from outside by port:8000
CONTAINER_PORT="8000:80"

echo "Create volume directory: $HOST_VOLUME_PATH"
mkdir -p $HOST_VOLUME_PATH

if [ $? != 0 ]; then
	echo "Unable to created the volume directory: $HOST_VOLUME_PATH"
	echo "Perhaps you need run this command with sudo privilege?"
	exit 0;
fi

docker --version

if [ $? != 0 ]; then
	echo "Docker engine is not installed!"
	exit 0
fi

docker run -d --name $CONTAINER_NAME \
	-v "$PWD:/.env" \
       	-v "$HOST_VOLUME_PATH:/data" \
	-p $CONTAINER_PORT \
       	vaultwarden/server:latest
