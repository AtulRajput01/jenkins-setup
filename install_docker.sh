#!/bin/bash

# Update the package index
echo "Updating package index..."
sudo apt-get update

# Install prerequisites
echo "Installing prerequisites..."
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key
echo "Adding Docker’s official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the Docker repository
echo "Setting up the Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package index again
echo "Updating package index again..."
sudo apt-get update

# Install Docker Engine
echo "Installing Docker..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Start Docker and enable it to start on boot
echo "Starting Docker..."
sudo systemctl start docker
sudo systemctl enable docker

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

# Optionally add the current user to the Docker group (for running Docker without sudo)
echo "Adding the current user to the Docker group..."
sudo usermod -aG docker $USER

echo "Docker installation complete. You may need to log out and log back in for Docker group changes to take effect."
