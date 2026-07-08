#!/usr/bin/env bash

set -e

echo "==> RUNNING aur script"

if ! command -v yay >/dev/null; then
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si
fi

echo "==> COMPLETED aur script"
