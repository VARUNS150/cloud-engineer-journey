# Day 17 - Docker Storage & Image Internals

## Topics Covered

* Bind Mounts
* Named Volumes
* Anonymous Volumes
* Read-only Mounts
* Docker Image Layers
* Docker Build Cache

## Commands Practiced

```bash
docker volume ls
docker inspect <container>
docker image inspect nginx
docker history nginx
docker build -t cache-demo .
docker run -v $(pwd):/usr/share/nginx/html nginx
docker run -v $(pwd):/usr/share/nginx/html:ro nginx
```

## Key Learnings

* Bind Mount shares a host folder directly with a container.
* Named Volumes are managed by Docker and are best for persistent data.
* Anonymous Volumes get random names and are difficult to manage.
* Read-only mounts prevent containers from modifying host files.
* Docker images are made of immutable layers.
* Docker Build Cache rebuilds only changed layers, making builds much faster.

## Interview Prep

* Bind Mount vs Named Volume
* Why does Docker use layers?
* What is Docker Build Cache?
* Why copy `package.json` before application code?

## Status

✅ Day 17 Completed

**Next:** Docker Image Optimization & Multi-Stage Builds.
# Day 18 - Docker Image Optimization

## Topics

* Image Size Optimization
* Ubuntu vs Alpine
* Build Context
* .dockerignore
* Multi-Stage Builds
* Builder vs Production Stage
* JDK vs JRE
* musl vs glibc
* Distroless Images
* Production Dockerfile Best Practices

## Commands

```bash
docker images
docker build -t ignore-demo .
docker build -t multistage-demo .
docker run --rm multistage-demo
docker run --rm alpine ls /
docker run --rm ubuntu ls /
```

## Notes

* Small images = Faster pull, deployment & startup.
* Alpine is lightweight; Ubuntu provides better compatibility.
* `.dockerignore` reduces build context size.
* Multi-stage builds create smaller production images.
* Builder stage is temporary; only required files are copied.
* JDK is for building, JRE is for running Java applications.
* Alpine uses musl, Ubuntu uses glibc.
* Distroless images improve security by removing unnecessary tools.
* Use minimal base images and avoid running containers as root.

✅ Day 18 Completed
