# Typst DevContainer Environment

This repository provides a development container configuration for working with Typst documents in Visual Studio Code. It includes all necessary tools and extensions for a productive Typst development experience.

English | [简体中文](README_zh.md)

## Features

- Full Typst support with latest version installed
- VS Code extensions pre-configured:
  - Typst LSP for language support
  - Typst Preview for live preview
  - Typst Formatter for code formatting
- Common fonts pre-installed (Noto Sans and Noto Sans CJK)
- Zsh with Oh My Zsh for better terminal experience

## Prerequisites

- Visual Studio Code
- Docker
- VS Code Remote Development extension pack

## Usage

1. Clone this repository
2. Open the repository in VS Code
3. When prompted, click "Reopen in Container"
   - Or click the green button in the bottom-left corner and select "Reopen in Container"

## Creating Documents

1. Create a new `.typ` file
2. Start writing your Typst document
3. Use the Typst Preview extension to see live updates
4. Format your document on save (enabled by default)

## Included Tools

- `typst` - The Typst compiler
- Common development tools (git, curl, wget)
- Basic fonts (Noto Sans family)

## Customization

You can customize this environment by:
- Modifying the Dockerfile to add more tools
- Adding more VS Code extensions in devcontainer.json
- Configuring different VS Code settings in devcontainer.json
