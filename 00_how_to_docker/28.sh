#!/bin/bash
docker service create -d --network overmind --name marines --replicas=2 -e OC_USERNAME=root -e OC_PASSWORD=root 42school/marine-squad