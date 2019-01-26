### fm
Receive an rtmp stream and re-stream to an icecast server.

### Usage

#### Build image
```
docker build -t fm .
```

#### Configuration
The following environment variables are available:
- RTMP_HOST
- RTMP_PORT
- RTMP_MOUNT
- ICECAST_HOST
- ICECAST_PORT
- ICECAST_MOUNT
- ICECAST_USER
- ICECAST_PASS
- BITRATE

#### Test Run
```
docker run --rm \
           -it \
           -e RTMP_HOST=... \
           -e RTMP_PORT=... \
           -e RTMP_MOUNT=... \
           -e ICECAST_HOST=... \
           -e ICECAST_PORT=... \
           -e ICECAST_MOUNT=... \
           -e ICECAST_USER=... \
           -e ICECAST_PASS=... \
           -e BITRATE
           -p $YOUR_RTMP_PORT:$YOUR_RTMP_PORT
           fm
```

#### Run
```
docker run --name fm \
           -d \
           -e RTMP_HOST=... \
           -e RTMP_PORT=... \
           -e RTMP_MOUNT=... \
           -e ICECAST_HOST=... \
           -e ICECAST_PORT=... \
           -e ICECAST_MOUNT=... \
           -e ICECAST_USER=... \
           -e ICECAST_PASS=... \
           -e BITRATE
           -p $YOUR_RTMP_PORT:$YOUR_RTMP_PORT
           fm
```
