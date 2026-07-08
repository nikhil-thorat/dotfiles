# Dotfiles

My personal Linux development environment managed with **GNU Stow** and a collection of bootstrap scripts.

---

## Bootstrap

Install Git:

```bash
sudo pacman -Sy git
```

Clone this repository:

```bash
git clone https://github.com/<your-username>/dotfiles.git ~/dotfiles
```

Enter the scripts directory:

```bash
cd ~/dotfiles/scripts
```

Make the scripts executable:

```bash
chmod +x *.sh
```

Run the bootstrap script:

```bash
./bootstrap.sh
```

---

## What the bootstrap does

### `packages.sh`

Installs all required packages from the official Arch repositories, including:

* Development tools
* Shell utilities
* Fonts
* Terminal applications
* Hyprland dependencies

---

### `aur.sh`

Installs the AUR helper (`yay`) and any required AUR packages.

---

### `post-install.sh`

Performs additional setup:

* Installs Oh My Zsh
* Installs Powerlevel10k
* Installs TPM (Tmux Plugin Manager)
* Refreshes the font cache
* Sets Zsh as the default shell

---

### `stow.sh`

Creates symbolic links for all managed configuration files using GNU Stow.

Managed applications include:

* Zsh
* Git
* Kitty
* Hyprland
* Tmux

---

## After the bootstrap

Log out and log back in so the default shell changes take effect.

If using Tmux for the first time, install plugins:

```bash
tmux
```

Then press:

```
Prefix + I
```

---

## Updating dotfiles

After making changes:

```bash
cd ~/dotfiles

git add .
git commit -m "Update dotfiles"
git push
```
