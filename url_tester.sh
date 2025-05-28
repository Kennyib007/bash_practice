#!/bin/bash

read -p "Enter URL: " url

if curl -s --head "$url" > /dev/null; then
    echo "$url is up and running"
else
    echo "$url is down !!!!"
fi