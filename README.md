[![CircleCI (all branches)](https://img.shields.io/circleci/project/github/bellstrand/docker-java8.svg)](https://circleci.com/gh/bellstrand/docker-java8)

# Docker Java 8
### Based on Ubuntu 18.04 (Bionic Beaver)
----
### Pull from Docker Hub
```
docker pull bellstrand/java:$VERSION
```

### Run image
```
docker run -it bellstrand/java:$VERSION bash
```

### Use as base image
```Dockerfile
FROM bellstrand/java:$VERSION
```