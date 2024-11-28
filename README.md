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

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

rcm is a management suite for dotfiles. It provides a number of programs that
can be used for this task (the documentation provides explanations for these).

After the initial installation, `rcup` will symlink the repo's `rcrc` to
`~/.rcrc`. The `rcup` command will create symlinks for config files in the home
directory.

The `rcup` command can be run multiple times to update the dotfiles, in the case
of pulling a new version or the addition of new files.

    rcup

The `rcrc` file contains some configuration options, including exclusions.
Currently the `README.md` and the `LICENSE` file are excluded and won't be
symlinked.


Contents
--------

[tmux](https://github.com/tmux/tmux) Configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+a`
* Use [nord](https://github.com/nordtheme/tmux)


[git](http://git-scm.com/) configuration:

* Adds a `delete-branch` alias to delete feature branches.
* Adds a `rename-branch` alias to rename a branch.
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
* Use [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) for various completions
* Use [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) to configure
  LSP functionality
* Use [Mason](https://github.com/williamboman/mason.nvim) to install LSPs and
  related tools
* Use [Conform](https://github.com/stevearc/conform.nvim) for formatting
  functionality
* Use [LuaSnip](https://github.com/L3MON4D3/LuaSnip) for snippets




Shell aliases and scripts:

* `g` with no arguments is `git status` and with arguments acts like `git`.
* `git-churn` to show churn for the files changed in the branch.
* `mcd` to make a directory and change into it.
* `replace foo bar **/*.rb` to find and replace within a given list of files.
* `tat` to attach to tmux session named the same as the current directory.
* `v` for `$VISUAL`.
