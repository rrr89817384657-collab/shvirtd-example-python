#!/bin/bash

if [ -d "/opt/example-python" ]; then
    echo "Project already exists at /opt/example-python"
    cd /opt/example-python
else
    sudo mkdir -p /opt
    sudo chown $USER:$USER /opt
    git clone https://github.com/rrr89817384657-collab/shvirtd-example-python.git /opt/example-python
    cd /opt/example-python
fi

docker compose up -d
