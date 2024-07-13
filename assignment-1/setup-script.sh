#!/bin/bash

# Update package lists and upgrade existing packages
apt-get update -y
apt upgrade -y

# Install necessary packages
apt-get install net-tools curl vim -y
apt install apt-transport-https ca-certificates curl software-properties-common git make htop -y

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add Docker repository for Debian
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" -y
apt-get update -y

# Install Docker
apt install docker-ce -y

# Enable Docker service
systemctl enable docker

# Switch to the docker group
newgrp docker

# Add root user to the docker group
usermod -aG docker root

# Increase file descriptor limit for Docker (optional step)
echo "ulimit -n 65536" >> /etc/default/docker

# Check Docker service status
service docker status

# Start Docker service
service docker start

# Check Docker service status again
service docker status

# Navigate to Jenkins workspace directory
cd /var/jenkins_home/workspace/a1/assignment-1/

# List files in current directory
ls -alsh

# Build Docker image from Dockerfile in current directory
docker build -t flask-app .

# List Docker images
docker images
