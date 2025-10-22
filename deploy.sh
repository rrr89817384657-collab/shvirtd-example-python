#!/bin/bash

if [ -d "/opt/example-python" ]; then
    cd /opt/example-python
    git pull
else
    git clone https://github.com/rrr89817384657-collab/shvirtd-example-python.git /opt/example-python
    cd /opt/example-python
fi

docker compose up -d
