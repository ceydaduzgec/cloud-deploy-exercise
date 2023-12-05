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

open -a Docker


cd app

echo "Run with Docker"
docker-compose -f docker-compose-dev.yml up
