#!/bin/bash

echo "Updating package manager"
brew update

echo "Installing Docker"
brew install docker

echo "Verifying Docker version"
docker --version

echo "Installing Docker Compose"
brew install docker-compose

echo "Verifying Docker Compose version"
docker-compose --version


echo "Running Docker"
open -a Docker


echo "Generating certificate and private key"

cd app/config

openssl genpkey -algorithm RSA -out private-key.key
openssl req -new -key private-key.key -out certificate.csr -subj "/CN=localhost"
openssl x509 -req -days 365 -in certificate.csr -signkey private-key.key -out certificate.crt

cd ..

echo "Run with Docker"
docker-compose -f docker-compose-dev.yml up --build
