# Day 14

Customizing Container

docker run -d --name mynginx nginx

docker exec -it mynginx bash

Container filesystem:

/usr/share/nginx/html

Understanding:

Container changes are temporary.
Deleting container removes those changes.

## Docker Volumes

Volume = Persistent storage

Commands:

docker volume create myvolume

docker volume ls

docker run -v myvolume:/usr/share/nginx/html nginx

Understanding:

Container storage is temporary.

Volumes provide persistent storage.

Deleting containers does not delete volume data.

## Dockerfile

FROM nginx

COPY index.html /usr/share/nginx/html/index.html

Commands:

docker build -t varun-nginx:v1 .

docker run -d -p 8080:80 --name mysite varun-nginx:v1

Understanding:

Dockerfile = Recipe

Image = Blueprint

Container = Running Image

mkdir myapp

cd myapp

nano index.html

nano Dockerfile

sudo docker build -t varun-nginx:v1 .

sudo docker images

sudo docker run -d -p 8080:80 --name mysite varun-nginx:v1
