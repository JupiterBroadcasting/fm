FROM jrottenberg/ffmpeg

COPY fm.sh /

ENTRYPOINT ["/fm.sh"]
