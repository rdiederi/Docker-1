#!/bin/bash

docker run -d -p 5000:80 --name overlord --restart=always nginx
