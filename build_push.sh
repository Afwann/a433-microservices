#!/bin/bash

docker build -t waanwann/order-service:latest .
docker images
cd .. && cd ..
cat password.txt | docker login --username waanwann --password-stdin
docker push waanwann/order-service:latest
