# My NVIM config (0.11+)

This repository contains my latest attempt at building my own Neovim configuration from scratch (but with heavy inspirations from others of course).

## Principles
I try to stick to the following principles when building my config

- Use well-known plugins
- Use maintained plugins
- Favorize lua plugins but don't shy away from good vimscript ones (like [vim-sleuth](https://github.com/tpope/vim-sleuth))
- Use options from [mini.nvim](https://github.com/echasnovski/mini.nvim) or [snacks.nvim](https://github.com/folke/snacks.nvim) whenever they fit to avoid plugin bloat

## Plugin manager
I use [lazy.nvim](https://lazy.folke.io) as plugin manager as it is well-established, well maintained and basically the de-facto standard for Neovim plugin management since 2024.

## LSP configuration
As I'm using a version of Neovim >= 0.11, I chose to implement the "new" LSP configuration setup.
I am NOT using nvim-lspconfig right now.

My LSP configuration files can be found in the [lsp](./lsp/) directory.
