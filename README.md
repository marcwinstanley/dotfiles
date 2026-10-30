Dotfiles
========

Requirements
------------

Set zsh as your login shell

    chsh -s $(which zsh)

Install
-------

Clone onto your machine

    git clone git://github.com/marcwinstanley/dotfiles.git ~/dotfiles

Install [Mise](https://mise.jdx.dev/)

    curl -fsSL https://mise.run | sh

Install the dotfiles:

    mise dot apply --dry-run
    mise dot apply

Mise (pronounced "meez", short for mise-en-place) manages a project's dev tools,
environment variables, and tasks from one mise.toml that works across your
shell, editor, and CI.

The mise.toml file contains configuration for the dotfiles. The `mise dot apply`
command will create symlinks for config files in the home directory.

Contents
--------

[tmux](https://github.com/tmux/tmux) Configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+a`
* Use [nord](https://github.com/nordtheme/tmux)


[git](http://git-scm.com/) configuration:

* Adds a `ca` alias for `git commit --amend` with the current date.
* Adds an `up` alias to fetch and rebase `origin/main` into the feature
  branch. Use `git up -i` for interactive rebases.
* Adds `pre-commit` and `prepare-commit-msg` stubs that delegate to your local
  config.


[neovim](https://neovim.io/)
* Run many kinds of tests [from vim]([https://github.com/janko-m/vim-test)
* Set `<leader>` to a single space.
* Switch between the last two files with space-space.
* Use [Lazy](https://github.com/folke/lazy.nvim) to manage plugins
* Use [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fuzzy
  finding
* Use [blink.cmp](https://github.com/saghen/blink.cmp) for various completions
* Use [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) to configure
  LSP functionality
  related tools
* Use [Conform](https://github.com/stevearc/conform.nvim) for formatting
  functionality


Shell aliases and scripts:

* `g` with no arguments is `git status` and with arguments acts like `git`.
* `mcd` to make a directory and change into it.
* `envup` to load a .env file into shell session for environment variables.
* `v` for `$VISUAL`.
