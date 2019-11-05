#!/bin/bash
docker-machine ssh aiur "docker swarm join --token $(docker swarm koin-token -q) $(docker-machine ip Char):2377"