# Day 15 - Docker Compose Fundamentals, Networking and Volumes

## Objective

Learn Docker Compose deeply, understand how it works internally, manage multi-container applications, understand service discovery, networking, and persistent storage using volumes.

---

# Phase 1 - Docker Compose Installation

## Install Docker Compose

```bash
sudo apt install docker-compose-v2 -y
```

## Verify Installation

```bash
docker compose version
```

### Learning

Docker Compose is a tool that allows us to define and manage multiple containers using a YAML configuration file.

Instead of running long `docker run` commands repeatedly, we define infrastructure in code.

---

# What Problem Docker Compose Solves

Without Compose:

```bash
docker run ...
docker run ...
docker run ...
```

Every container requires:

* Port mappings
* Environment variables
* Networks
* Volumes
* Restart policies

Managing everything manually becomes difficult.

Docker Compose allows us to define the entire application stack in a single file.

Example:

```yaml
services:
  nginx:
    image: nginx
```

Infrastructure becomes version controlled and reproducible.

---

# Docker Compose Architecture

Docker Compose does not run containers directly.

Flow:

```text
docker-compose.yml
        ↓
Docker Compose
        ↓
Docker Engine API
        ↓
Docker Engine
        ↓
Linux Kernel
```

Docker Compose acts as a translator.

Docker Engine performs the actual container operations.

---

# Phase 2 - Docker Compose Lifecycle

## Create Compose File

```yaml
services:
  nginx:
    image: nginx
```

---

## Validate Configuration

```bash
docker compose config
```

### Purpose

* Validate YAML syntax
* Parse configuration
* Render final configuration
* Detect errors before deployment

---

## Start Application

```bash
docker compose up
```

### Internal Workflow

1. Read YAML file
2. Validate configuration
3. Check image locally
4. Pull image if missing
5. Create network
6. Create container
7. Attach container to network
8. Start container
9. Stream logs

---

## Observe Created Resources

### Containers

```bash
docker ps -a
```

### Images

```bash
docker images
```

### Networks

```bash
docker network ls
```

Docker Compose automatically creates a dedicated network for the project.

Example:

```text
day-15_default
```

---

## Remove Compose Resources

```bash
docker compose down
```

### Removes

* Containers
* Compose-created networks

### Does Not Remove

* Images
* Volumes

---

# Phase 3 - Multi-Container Applications

## Compose File

```yaml
services:
  nginx:
    image: nginx

  apache:
    image: httpd
```

---

## Validate

```bash
docker compose config
```

---

## Start Services

```bash
docker compose up
```

Docker Compose creates:

* nginx container
* apache container
* shared network

---

# Service Discovery

Containers communicate using service names.

Example:

```text
nginx
   ↓
apache
```

No need to use container IP addresses.

Docker Compose automatically provides internal DNS.

---

## Verify DNS Resolution

Enter container:

```bash
docker exec -it <container-name> sh
```

Resolve service:

```bash
ping apache
```

or

```bash
getent hosts apache
```

Result:

```text
apache → IP address
```

This proves Docker Compose service discovery.

---

# Host to Container Communication

Port mapping exposes services to the host.

Example:

```yaml
services:
  nginx:
    image: nginx
    ports:
      - "8080:80"

  apache:
    image: httpd
    ports:
      - "8081:80"
```

---

## Verify

```bash
docker ps
```

Example:

```text
0.0.0.0:8080->80/tcp
0.0.0.0:8081->80/tcp
```

---

## Access Services

```bash
curl localhost:8080
```

```bash
curl localhost:8081
```

---

# Networking Concepts Learned

## Host → Container

Uses port mapping.

Example:

```text
localhost:8080
```

---

## Container → Container

Uses service names.

Example:

```text
nginx → apache
```

No port mapping required.

---

# Phase 4 - Docker Volumes

## Problem

Containers are temporary.

Data stored only inside a container can be lost when the container is removed.

---

## Solution

Volumes provide persistent storage.

Example:

```yaml
services:
  nginx:
    image: nginx
    ports:
      - "8080:80"
    volumes:
      - nginx_data:/usr/share/nginx/html

volumes:
  nginx_data:
```

---

# Create Volume

```bash
docker compose up -d
```

---

## Verify Volume

```bash
docker volume ls
```

---

## Inspect Volume

```bash
docker volume inspect <volume-name>
```

Important field:

```text
Mountpoint
```

This is the actual storage location on the host machine.

---

# Persistence Test

Create file:

```bash
echo "Hello from Docker Volume" > myfile.txt
```

Verify:

```bash
cat myfile.txt
```

---

## Remove Stack

```bash
docker compose down
```

---

## Recreate Stack

```bash
docker compose up -d
```

---

## Verify File

```bash
cat myfile.txt
```

Result:

```text
Hello from Docker Volume
```

File survives container recreation.

---

# Why Data Survived

Container data was not stored inside the container layer.

Data was stored in:

```text
Volume
   ↓
Host Storage
```

Removing the container does not remove the volume.

---

# Key Takeaways

### Docker Compose

* Infrastructure as Code
* YAML based configuration
* Simplifies multi-container management

### Service Discovery

* Service name acts as hostname
* Internal Docker DNS handles resolution

### Networking

* Host to container uses ports
* Container to container uses service names

### Volumes

* Persistent storage mechanism
* Data survives container recreation

### Important Commands

```bash
docker compose config
docker compose up
docker compose up -d
docker compose down

docker ps
docker images

docker network ls
docker network inspect

docker volume ls
docker volume inspect

docker exec -it <container> sh
```

---

# Day 15 Outcome

Successfully learned:

* Docker Compose fundamentals
* Compose lifecycle
* Multi-container applications
* Docker networking
* Service discovery
* Port mapping
* Named volumes
* Data persistence
* Container recreation behavior 
