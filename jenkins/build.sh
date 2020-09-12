#!/bin/bash

echo "****************************"
echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"
echo "****************************"

docker build -t ${DOCKER_IMAGE}:${BUILD_ID} .
