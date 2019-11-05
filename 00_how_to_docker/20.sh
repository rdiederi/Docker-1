#!/bin/bash
docker-machine ssh Char
docker swarm init --advertise-addr $(docker-machine env Char) 