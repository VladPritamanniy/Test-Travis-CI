#!/bin/bash

REGION="eu-north-1"
REPOSITORY_NAME="mywebapp"
ACCOUNT_ID="904233130767"

$(aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com)

aws ecr create-repository --repository-name $REPOSITORY_NAME || true

docker tag mywebapp:latest $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPOSITORY_NAME:latest
docker push $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPOSITORY_NAME:latest