#!/usr/bin/env bash

set -e

echo "==> RUNNING packages script"

sudo pacman -Syu --needed \
    awww \
    base-devel \
    btop \
    curl \
    fastfetch \
    fd \
    fzf \
    git \
    hyprland \
    kitty \
    neovim \
    openssh
    ripgrep \
    stow \
    tmux \
    tree \
    ttf-jetbrains-mono-nerd \
    unzip \
    wget \
    zip \
    zoxide \
    zsh \

echo "==> COMPLETED packages script"
