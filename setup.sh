#!/bin/bash

set -e

echo ">>> Updating system packages..."
sudo apt-get update && sudo apt-get upgrade -y

echo ">>> Removing conflicting Docker packages..."
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do 
    sudo apt-get remove -y $pkg || true
done

echo ">>> Installing common dependencies..."
sudo apt install -y curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf \
tmux htop nvme-cli libgbm1 pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip

echo ">>> Setting up Docker repository..."
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo ">>> Installing Docker..."
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo ">>> Testing Docker installation..."
sudo docker run --rm hello-world || { echo "Docker test failed"; exit 1; }

echo ">>> Enabling and restarting Docker service..."
sudo systemctl enable docker
sudo systemctl restart docker

echo ">>> All dependencies and Docker installed successfully."
