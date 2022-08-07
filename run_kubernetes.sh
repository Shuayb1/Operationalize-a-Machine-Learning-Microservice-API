#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=shuayb1/ml-microservice-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-microservice-api --image=$dockerpath:v1.0.0 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-microservice-api 8000:80

