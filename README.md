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