#!/bin/bash

echo "🚀 Starting dotfiles installation..."

# 1. Manually link your .gitconfig to the home folder
# (GitHub sets the current directory to your dotfiles folder during execution)
ln -sf "$(pwd)/.gitconfig" ~/.gitconfig

# 2. Create a custom terminal shortcut (alias)
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias cls='clear'" >> ~/.bashrc

# 3. Automatically install VS Code Extensions
echo "🧩 Installing VS Code extensions..."
code --install-extension ms-python.python
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
echo "✅ Dotfiles installation complete!"
