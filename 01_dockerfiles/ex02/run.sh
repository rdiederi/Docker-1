#!/bin/sh
docker build -f ft-rails/Dockerfile -t ft-rails .
docker build -t ex02 .
docker run -it --name ft-rails -p 3000:3000 ex02