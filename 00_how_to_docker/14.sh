#!/bin/bash
docker run -d --name lair -p 8080:80 --link spawning-pool:mysql wordpress
