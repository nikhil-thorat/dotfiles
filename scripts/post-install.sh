#!/usr/bin/env bash

set -euo pipefail

echo "==> RUNNING post-install script"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "==> Installing Oh My Zsh..."
    RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "==> Oh My Zsh already installed."
fi

P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

if [ ! -d "$P10K_DIR" ]; then
    echo "==> Installing Powerlevel10k..."
    git clone --depth=1 \
        https://github.com/romkatv/powerlevel10k.git \
        "$P10K_DIR"
else
    echo "==> Powerlevel10k already installed."
fi

TPM_DIR="$HOME/.tmux/plugins/tpm"

if [ ! -d "$TPM_DIR" ]; then
    echo "==> Installing TPM..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
    echo "==> TPM already installed."
fi

echo "==> Refreshing font cache..."
fc-cache -fv >/dev/null

if [ "$SHELL" != "$(command -v zsh)" ]; then
    echo "==> Setting Zsh as default shell..."
    chsh -s "$(command -v zsh)"
else
    echo "==> Zsh is already the default shell."
fi

echo
echo "==> COMPLETED post-install script"
echo
echo "If this is your first setup:"
echo "  • Log out and back in for the shell change to take effect."
echo "  • Start tmux and press Prefix + I to install tmux plugins."

