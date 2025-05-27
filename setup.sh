#!/bin/bash

set -e

echo ">>> Updating system packages..."
sudo apt-get update && sudo apt-get upgrade -y

echo ">>> Removing conflicting Docker packages..."
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do 
    sudo apt-get remove -y $pkg || true
done

echo ">>> Installing required dependencies..."
sudo apt install -y curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf \
tmux htop nvme-cli libgbm1 pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip

echo ">>> Dependencies installed successfully."
