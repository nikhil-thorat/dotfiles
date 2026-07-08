#!/usr/bin/env bash

set -e

echo "==> BOOTSTRAPING..."

./packages.sh
./aur.sh
./dev_packages.sh
./post-install.sh
./stow.sh

echo "==> BOOTSTRAPED!!!"
