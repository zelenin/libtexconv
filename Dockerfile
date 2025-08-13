FROM ubuntu:25.04

ENV LANG=en_US.UTF-8
ENV TZ=UTC
ENV DEBIAN_FRONTEND=noninteractive

RUN <<EOF
apt -y update
apt -y upgrade
apt install -y \
    ca-certificates \
    build-essential \
    cmake \
    git \
    libjpeg-dev \
    libpng-dev
EOF

COPY . /src
WORKDIR /src/shell_scripts

RUN bash build.sh
