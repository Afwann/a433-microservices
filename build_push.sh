#!/bin/bash

docker build -t waanwann/shipping-service:latest .
docker images
cd .. && cd ..
cat password.txt | docker login --username waanwann --password-stdin
docker push waanwann/shipping-service:latest
