#!/bin/bash

# Wait for Jenkins to start
sleep 30

# Retrieve Jenkins password
PASSWORD=$(cat /var/lib/jenkins/secrets/initialAdminPassword)

# Print the password
echo "Jenkins initial admin password: $PASSWORD"

# Exit
exit 0
