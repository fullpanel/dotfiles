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

# Code Quality & Formatting
code --install-extension dbaeumer.vscode-eslint #Analyzes your JavaScript/TypeScript code as you type to catch real syntax errors and programmatic bugs early.
code --install-extension esbenp.prettier-vscode #Enforces consistent code formatting layout (tabs, semi-colons, brackets) globally across your files.
code --install-extension streetsidesoftware.code-spell-checker #Instantly catches spelling mistakes inside strings, variable names, and comment
code --install-extension usernamehw.errorlens #Prints warning and error messages directly inline right next to your code so you don't have to hunt inside the "Problems" panel.

# Git Integration
code --install-extension eamodio.gitlens  #Adds powerful inline git-blame annotations to show exactly who wrote a line of code, when it was changed, and why.
code --install-extension mhutchie.git-graph #Generates a highly interactive, visual branch tree to review merge histories and easily perform actions like cherry-picking or rebasing.

# Programming Language
code --install-extension ms-python.python #The complete engine for Python development in VS Code that bridges  raw text editor with the Python environment running on your machine.

# Productivity & Testing
code --install-extension rangav.vscode-thunder-client #A lightning-fast, lightweight REST API testing client that allows you to send HTTP requests without leaving your code editor.

echo "✅ Dotfiles installation complete!"
