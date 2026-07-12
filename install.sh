#!/bin/bash

echo "🚀 Starting dotfiles installation..."

# 1. Manually link your .gitconfig to the home folder
# (GitHub sets the current directory to your dotfiles folder during execution)
ln -sf "$(pwd)/.gitconfig" ~/.gitconfig

# Create a custom terminal shortcut (alias)
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias cls='clear'" >> ~/.bashrc

echo "✅ Dotfiles installation complete!"
