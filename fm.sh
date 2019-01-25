#!/bin/sh
while true
do
  ffmpeg -listen 1                                                                          \
         -i "rtmp://$RTMP_HOST:$RTMP_PORT/$RTMP_MOUNT"                                      \
         -vn                                                                                \
         -acodec libmp3lame                                                                 \
         -ab "$BITRATE"                                                                     \
         -f mp3                                                                             \
         "icecast://$ICECAST_USER:$ICECAST_PASS@$ICECAST_HOST:$ICECAST_PORT/$ICECAST_MOUNT"
  sleep 1
done
