#!/bin/bash

echo "Updating package manager"
apt update

echo "Installing Docker"
apt -y install docker.io

echo "Enabling Docker to start automatically"
systemctl enable docker
systemctl start docker

echo "Verifying Docker version"
docker --version

echo "Installing Docker Compose"
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Running Docker Compose"
chmod +x /usr/local/bin/docker-compose

echo "Verifying Docker Compose version"
docker-compose --version

echo "Generating certificate and private key"
cd app/config
openssl genpkey -algorithm RSA -out private-key.key
openssl req -new -key private-key.key -out certificate.csr -subj "/CN=localhost"
openssl x509 -req -days 365 -in certificate.csr -signkey private-key.key -out certificate.crt
cd ..

echo "Run with Docker"
docker-compose -f docker-compose-dev.yml up --build
