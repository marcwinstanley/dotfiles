#!/usr/bin/env bash
npm install -g bash-language-server typescript-language-server vscode-langservers-extracted

# Prefer basedpyright
# Maybe we should install with pipx
#pip3 install -U jedi-language-server ruff
brew install basedpyright

# Needs uv installed
uv tool install ty@latest

# Install the latest version of the Lua language server
brew install lua-language-server

# Install the Java language server
brew install jdtls
