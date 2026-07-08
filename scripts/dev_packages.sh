#!/usr/bin/env bash

set -e

echo "==> RUNNING dev_packages script"

sudo pacman -Syu --needed \
    clang \
    gcc \
    gdb \
    go \
    lua \
    lua-rocks \
    make \
    nodejs \
    npm \
    python \
    python-pip \
    uv \

echo "==> COMPLETED dev_packages script"
