#!/bin/bash

aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 904233130767.dkr.ecr.eu-north-1.amazonaws.com

docker tag vladprytamannyi/mywebapp:1.0 904233130767.dkr.ecr.eu-north-1.amazonaws.com/mywebapp

docker push 904233130767.dkr.ecr.eu-north-1.amazonaws.com/mywebapp