#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=ciregbu159/flaskapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 471776097205.dkr.ecr.eu-west-2.amazonaws.com

# Step 3:
# Push image to a docker repository
docker login
docker push ciregbu159/$dockerpath
