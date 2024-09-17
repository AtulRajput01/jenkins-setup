#!/bin/bash

# Make the install_docker.sh script executable and run it
echo "Making install_docker.sh executable..."
chmod +x install_docker.sh

echo "Running install_docker.sh..."
./install_docker.sh

# Wait for Docker to start properly
echo "Waiting for Docker to start..."
sleep 20

# Make the build_and_run_jenkins.sh script executable and run it
echo "Making build_and_run_jenkins.sh executable..."
chmod +x build_and_run_jenkins.sh

echo "Running build_and_run_jenkins.sh..."
./build_and_run_jenkins.sh

echo "Setup completed successfully!"
