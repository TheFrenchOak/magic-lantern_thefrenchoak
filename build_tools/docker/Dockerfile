# Build environment for this Magic Lantern tree: Python 2 and an ARM GCC close to
# the one it was written for (gcc-arm-none-eabi 5.4); modern toolchains are not supported.
FROM ubuntu:18.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      make gcc g++ libc6-dev gcc-arm-none-eabi libnewlib-arm-none-eabi \
      python python-docutils zip mercurial lua5.3 ca-certificates \
    && ln -s /usr/bin/luac5.3 /usr/local/bin/luac \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /ml
