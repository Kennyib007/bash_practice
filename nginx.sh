#!/bin/bash

cat <<EOF > Dockerfile
FROM nginx:latest
EOF

docker build -t kenny-nginx .

docker run -d --name nginx_container kenny-nginx

sleep 20

docker exec nginx_container ls /

docker stop nginx_container
docker rm nginx_container
