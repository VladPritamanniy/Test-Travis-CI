#!/bin/bash

# Логин в AWS ECR
$(aws ecr get-login --no-include-email --region eu-north-1)

# Создание репозитория, если он не существует
aws ecr create-repository --repository-name mywebapp || true

# Тегирование и отправка образа
docker tag mywebapp:latest 904233130767.dkr.ecr.eu-north-1.amazonaws.com/mywebapp:latest
docker push 904233130767.dkr.ecr.eu-north-1.amazonaws.com/mywebapp:latest