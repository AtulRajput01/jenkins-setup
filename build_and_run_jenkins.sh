#!/bin/bash

# Set the Docker image and container names
IMAGE_NAME="jenkins-setup"
CONTAINER_NAME="jenkins-ubuntu-container"

# Step 1: Build the Docker image
echo "Building Docker image..."
sudo docker build -t $IMAGE_NAME .

# Check if the build was successful
if [ $? -ne 0 ]; then
  echo "Docker image build failed. Exiting..."
  exit 1
fi

# Step 2: Run the Docker container
echo "Running Docker container..."
sudo docker run -d -p 8080:8080 --name $CONTAINER_NAME $IMAGE_NAME

# Check if the container started successfully
if [ $? -ne 0 ]; then
  echo "Docker container failed to start. Exiting..."
  exit 1
fi

echo "Docker container is running. You can access Jenkins at http://<your_ip>:8080"
