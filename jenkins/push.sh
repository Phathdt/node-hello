#!/bin/bash
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}
export AWS_DEFAULT_OUTPUT=${AWS_DEFAULT_OUTPUT}

aws --region ap-southeast-1 ecr get-login-password     | docker login         --password-stdin         --username AWS         "${ECR}"

docker push ${ECR_REPO}:${BUILD_ID}
