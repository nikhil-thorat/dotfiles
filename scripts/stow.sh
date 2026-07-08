#!/usr/bin/env bash

cd "$HOME/dotfiles"

echo "==> RUNNING stow script"

stow git
stow zsh
stow kitty
stow hypr
stow tmux

echo "==> COMPLETED stow script"
