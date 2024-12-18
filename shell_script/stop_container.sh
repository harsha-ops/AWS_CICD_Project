#!/bin/bash
set -e

# Get the IDs of all running containers
container_ids=$(docker ps -q)

# Check if there are any running containers
if [ -n "$container_ids" ]; then
  # Stop and remove all running containers
  docker rm -f $container_ids
  echo "Stopped and removed running containers."
else
  echo "No running containers to stop."
fi

