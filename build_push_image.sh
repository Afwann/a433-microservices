#!/bin/bash


docker build -t item-app:v1 . # Melakukan build image
docker images # Melihat list image yang ada
docker tag item-app:v1 waanwann/item-app:v1 # Melakukan tag image
cat password.txt | docker login --username "waanwann" --password-stdin # Melakukan login ke docker hub
docker push waanwann/item-app:v1 # Melakukan push image ke docker hub