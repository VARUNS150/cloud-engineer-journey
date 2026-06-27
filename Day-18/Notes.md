# Day 18 - Docker Image Optimization (Part 1)

## Topics Covered

* Why Docker image size matters
* Ubuntu vs Alpine
* Build Context
* .dockerignore
* Multi-Stage Builds
* Builder Stage vs Production Stage
* JDK vs JRE (Basics)

## Commands Practiced

```bash
docker images
docker build -t ignore-demo .
docker build -t multistage-demo .
docker run --rm multistage-demo
```

## Key Learnings

* Smaller images improve deployment speed and reduce storage.
* Alpine is a minimal Linux distribution, while Ubuntu contains many additional packages.
* `.dockerignore` excludes unnecessary files from the Docker build context.
* Multi-stage builds separate the build environment from the production environment.
* The final image contains only the required application files.
* JDK is used to build Java applications, while JRE is used only to run them.

## Interview Questions

* Why should Docker images be small?
* What is `.dockerignore`?
* What are Multi-Stage Builds?
* Difference between JDK and JRE?

## Status

✅ Day 18 Part 1 Completed

Next:

* Alpine Deep Dive
* Distroless Images
* Production Dockerfile Best Practices

