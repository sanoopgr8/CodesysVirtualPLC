#!/bin/bash

# Define the network name
NETWORK_NAME="field_network"

# Check if the network already exists
if docker network ls | grep -q "$NETWORK_NAME"; then
    echo "Network '$NETWORK_NAME' already exists."
else
    # Create the Docker network
    docker network create "$NETWORK_NAME"
    
    # Check if the network creation was successful
    if [ $? -eq 0 ]; then
        echo "Network '$NETWORK_NAME' created successfully."
    else
        echo "Failed to create network '$NETWORK_NAME'."
    fi
fi
