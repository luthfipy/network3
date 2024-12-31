#!/bin/bash

# install net-tools
if ! dpkg -s net-tools &>/dev/null; then
        echo "net-tools not installed, installing net-tools"
        yes Y | apt install net-tools
        echo "net-tools installed"
fi

# download network3 tools
wget https://network3.io/ubuntu-node-v2.1.1.tar.gz
tar -xf ubuntu-node-v2.1.1.tar.gz
cd ubuntu-node

# start node
./manager.sh up
