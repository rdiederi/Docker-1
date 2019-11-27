#!/bin/sh
docker build -t gogs .
docker run -it -p 3000:3000 gogs