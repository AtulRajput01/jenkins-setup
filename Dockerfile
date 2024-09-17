# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set environment variable to skip interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary dependencies
RUN apt-get update && apt-get install -y \
    openjdk-17-jre \
    curl \
    gnupg2 \
    lsb-release \
    software-properties-common

# Install Jenkins
RUN curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null && \
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | tee /etc/apt/sources.list.d/jenkins.list > /dev/null && \
    apt-get update && apt-get install -y jenkins

# Copy the script into the container
COPY retrieve_jenkins_password.sh /usr/local/bin/retrieve_jenkins_password.sh

# Make the script executable
RUN chmod +x /usr/local/bin/retrieve_jenkins_password.sh

# Expose Jenkins port
EXPOSE 8080

# Start Jenkins and then execute the script
CMD ["sh", "-c", "service jenkins start && /usr/local/bin/retrieve_jenkins_password.sh && tail -f /dev/null"]
