# Neovim Config

This repository contains my custom Neovim configuration based on NvChad.

## Installation

To clone and use this configuration on your machine, run the following commands:

```sh
# Clone the repository into your Neovim configuration
git clone https://github.com/gjohnn/neovim-config.git ~/.config/nvim

# Start Neovim (NvChad will automatically install dependencies)
nvim
```

## Update

If you already have this configuration and want to update it, use:

```sh
cd ~/.config/nvim
git pull
```

## Requirements
- Neovim (version 0.9+)
- Nerd Fonts (for proper icon display)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for fast search)
- [fd](https://github.com/sharkdp/fd) (for file searching)

## Included Plugins
- NvChad as the base
- LSP and autocompletion with nvim-cmp
- File tree with nvim-tree
- Status line with lualine
- Fuzzy finder with Telescope

## Customization
You can modify this configuration by editing the files in `~/.config/nvim/lua/custom/`.

## Contact
If you have any questions or suggestions, feel free to open an issue in this repository!!!
