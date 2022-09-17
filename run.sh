#!/usr/bin/env bash

# Just container name
CONTAINER_NAME="secret-vaultwarden"

# Volume path where you want to store the vaultwarden data
CONTAINER_VALUE="/opt/vaultwarden:/data/"

# Just container port forwarding
# e.g 8002:80, means the container listens on port:80
# but the container can access from outside by port:8002
CONTAINER_PORT="8002:80"

docker run -d --name $CONTAINER_NAME \
       	-v $CONTAINER_VALUE \
	-p $CONTAINER_PORT \
       	vaultwarden/server:latest
