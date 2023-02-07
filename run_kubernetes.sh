#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=smailbou/app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f deployment.yml


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
pod_name=$(kubectl get pods --selector=app=my-app --output=jsonpath='{.items[0].metadata.name}')
kubectl port-forward $pod_name 8000:80




