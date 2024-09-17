# Jenkins Docker Setup

This repository contains scripts to set up a Jenkins instance running inside a Docker container on an Ubuntu system. The setup process involves installing Docker, building a Jenkins Docker image, and running a Jenkins container.

## Prerequisites

- An Ubuntu instance (e.g., AWS EC2, local VM, etc.)
- Basic knowledge of Docker and Jenkins

## Repository Contents

- `Dockerfile`: Defines the Jenkins Docker image setup.
- `install_docker.sh`: Script to install Docker on the Ubuntu instance.
- `build_and_run_jenkins.sh`: Script to build the Jenkins Docker image and run the container.
- `retrieve_jenkins_password.sh`: Script to retrieve the Jenkins initial admin password from the running container.
- `setup_environment.sh`: Main script to automate the setup process.

## Setup Instructions

1. **Clone the Repository**

   If you haven’t already, clone this repository to your Ubuntu instance:

   ```bash
   git clone https://github.com/AtulRajput01/jenkins-setup.git
   cd jenkins-setup
```
2. Make the Setup Script Executabl

   ```bash
   chmod +x setup_environment.sh
```
3. Run the Setup Script

  ```bash
  ./setup_environment.sh
```

