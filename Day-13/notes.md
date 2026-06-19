# Day 13

Docker

Image = Blueprint

Container = Running image

Commands:

docker --version

docker ps

docker ps -a

docker images

docker run hello-world
# Day 13

## Container Lifecycle

Commands:

docker run -d nginx

docker ps

docker ps -a

docker stop <container-id>

docker start <container-id>

docker restart <container-id>

docker rm <container-id>

Understanding:

- docker run creates and starts a container.
- docker ps shows running containers.
- docker ps -a shows all containers.
- docker stop stops a container.
- docker start starts a stopped container.
- docker rm removes a container.
## Logs and Exec

Commands:

docker logs <container-id>

docker logs -f <container-id>

docker exec -it <container-id> bash

Understanding:

- logs show container output.
- exec opens a shell inside a running container.
- container filesystem is isolated.
- deleting a container removes its changes.
## Port Mapping

Syntax:

docker run -d -p host_port:container_port image_name

Example:

docker run -d -p 8080:80 nginx

Meaning:

Host Port 8080
↓
Container Port 80

Commands:

docker port <container-id>

Understanding:

Browser
↓
Host Port
↓
Docker Engine
↓
Container Port
↓
Application
