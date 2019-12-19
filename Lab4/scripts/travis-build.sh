#!/bin/bash
set -ev
set DOCKER_USERNAME hashchenko
set DOCKER_PASSWORD 12505gadza
docker build -t 1999993/gitlab4:django-travis -f Dockerfile.site .
docker images
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin; docker push 1999993/gitlab4:django-travis; else echo "PR skip deploy"; fi
docker build -t 1999993/gitlab4:monitoring-travis -f Dockerfile.monitoring .
docker images
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin; docker push 1999993/gitlab4:monitoring-travis; else echo "PR skip deploy"; fi
exit 0