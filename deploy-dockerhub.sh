#!/bin/bash
# Push to Docker Hub

DOCKER_USERNAME="$1"
if [ -z "$DOCKER_USERNAME" ]; then
  echo "Usage: ./deploy-dockerhub.sh YOUR_DOCKER_USERNAME"
  exit 1
fi

cd server

docker build -t $DOCKER_USERNAME/pipecat-telesales-agent:latest .
docker push $DOCKER_USERNAME/pipecat-telesales-agent:latest

echo "✓ Pushed to Docker Hub: $DOCKER_USERNAME/pipecat-telesales-agent:latest"
