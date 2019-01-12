#!/bin/bash

rm -rf output/

echo "All Container ID's"
echo

docker ps -a -q
echo

echo "Choose the ID above that matches the ID in the container"
echo "In my bash prompt, this is the purple number after the @ symbol"
echo

read -p "Enter the ID: "
echo

docker cp $REPLY:/root/pandoc-resume/output/ output/

echo "Copied output!"

ls -1 -r output/*
