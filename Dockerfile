FROM alpine:3.8

RUN apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    openssh \
    rsync \
    git

COPY files /

RUN chmod 700 /root/.ssh && chmod 600 /root/.ssh/config

CMD ["/bin/bash"]
