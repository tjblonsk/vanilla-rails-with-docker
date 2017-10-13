#!/usr/bin/env bash

eval $(docker run --rm \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
  --rm xogroup/aws-cli-git:v1_11 \
  ecr get-login)

if [ "$?" != "0" ]; then
  exit 1
fi

ECR_HOST=352362988575.dkr.ecr.us-east-1.amazonaws.com
DOCKER_IMAGE_NAME=$ECR_HOST/account-settings

docker tag account-settings:$APP_ENV $DOCKER_IMAGE_NAME:$APP_ENV
docker push $DOCKER_IMAGE_NAME:$APP_ENV
