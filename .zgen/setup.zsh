#!/bin/zsh
#
# Only including a shebang to trigger Sublime Text to use shell syntax highlighting
#
# Copyright 2006-2016 Joseph Block <jpb@unixorn.net>
#
# BSD licensed, see LICENSE.txt

if ! zgen saved; then
  echo "creating a zgen save"
  ZGEN_LOADED=()
  ZGEN_COMPLETIONS=()

  zgen oh-my-zsh

  # If zsh-syntax-highlighting is bundled after zsh-history-substring-search,
  # they break, so get the order right.
  zgen load zsh-users/zsh-syntax-highlighting
  # zgen load zsh-users/zsh-history-substring-search

  # Set keystrokes for substring searching
  # zmodload zsh/terminfo
  # bindkey "$terminfo[kcuu1]" history-substring-search-up
  # bindkey "$terminfo[kcud1]" history-substring-search-down

  # Tab complete rakefile targets
  # zgen load unixorn/rake-completion.zshplugin

  # Automatically run zgen update and zgen selfupdate every 7 days
  # zgen load unixorn/autoupdate-zgen

  # zgen load unixorn/jpb.zshplugin

  # Colorize the things if you have grc installed. Well, some of the
  # things, anyway.
  # zgen load unixorn/warhol.plugin.zsh

  # OS X helpers
  # zgen load unixorn/tumult.plugin.zsh

  # Warn you when you run a command that you've got an alias for
  zgen load djui/alias-tips

  # Add my collection of git helper scripts
  # zgen load unixorn/git-extra-commands

  # Add my bitbucket git helpers plugin
  # zgen load unixorn/bitbucket-git-helpers.plugin.zsh

  # A collection of scripts that might be useful to sysadmins
  # zgen load skx/sysadmin-util

  # Adds aliases to open your current repo & branch on github.
  # zgen load peterhurford/git-it-on.zsh

  # Tom Limoncelli's tooling for storing private information (keys, etc)
  # in a repository securely by encrypting them with gnupg
  # zgen load StackExchange/blackbox

  # Load some oh-my-zsh plugins
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/sudo
  # zgen oh-my-zsh plugins/aws
  # zgen oh-my-zsh plugins/chruby
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/github
  # zgen oh-my-zsh plugins/python
  # zgen oh-my-zsh plugins/rsync
  # zgen oh-my-zsh plugins/screen
  # zgen oh-my-zsh plugins/vagrant
  zgen oh-my-zsh plugins/gradle
  zgen oh-my-zsh plugins/rails

  # A set of shell functions to make it easy to install small apps and
  # utilities distributed with pip.
  # zgen load sharat87/pip-app

  zgen load chrissicool/zsh-256color

  # Load more completion files for zsh from the zsh-lovers github repo
  zgen load zsh-users/zsh-completions src

  # Docker completion
  # zgen load srijanshetty/docker-zsh

  # Load me last
  # GENCOMPL_FPATH=$HOME/.zsh/complete

  # Very cool plugin that generates zsh completion functions for commands
  # if they have getopt-style help text. It doesn't generate them on the fly,
  # you'll have to explicitly generate a completion, but it's still quite cool.
  zgen load RobSis/zsh-completion-generator

  # Add Fish-like autosuggestions to your ZSH
  zgen load zsh-users/zsh-autosuggestions

  # k is a zsh script / plugin to make directory listings more readable,
  # adding a bit of color and some git status information on files and directories
  zgen load rimraf/k

  # Bullet train prompt setup
  # zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

  #Theme
  zgen oh-my-zsh themes/agnoster


  # Save it all to init script
  zgen save
fi
