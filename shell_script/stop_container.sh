#!/bin/bash
set -e

# Stop the running container (if any)
containerid = $(docker ps -aq)
docker rm $containerid
