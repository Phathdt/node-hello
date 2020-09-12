#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

docker build -t ${DOCKER_IMAGE}:${BUILD_ID} .
