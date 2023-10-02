#!/bin/bash
IMAGE_NAME="myappdb"

podman run -d -p 3306:3306 --name ${IMAGE_NAME} ${IMAGE_NAME}

echo "Showing running Instances"
podman ps -a
