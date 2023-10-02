#!/bin/bash
IMAGE_NAME="myapppy"

printf "Stopping old image %s\n" "${IMAGE_NAME}"
podman stop "${IMAGE_NAME}"

printf "Removing old image %s\n" "${s_DOCKER_IMAGE_NAME}"
podman rmi "${IMAGE_NAME}"

printf "Creating Docker Image %s\n" "${IMAGE_NAME}"
podman build -t ${IMAGE_NAME} . --no-cache

i_EXIT_CODE=$?
if [ $i_EXIT_CODE -ne 0 ]; then
    printf "Error. Exit code %s\n" ${i_EXIT_CODE}
    exit
fi

echo "Ready to run ${IMAGE_NAME} Docker Container"
echo "To run type: podman run -d -p 3306:3306 --name ${IMAGE_NAME} ${IMAGE_NAME}"
echo "or just use run_in_contaimer.sh"
echo
echo "Debug running Container:"
echo "podman exec -it ${IMAGE_NAME} /bin/bash"
echo
