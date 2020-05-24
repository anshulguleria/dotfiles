This file lists the basic dependencies to be installed.

    TODO: change this file to shell file to automatically install dependencies

* vim
* vim-plug plugin
* eslint
* babel-eslint
* git-aware-prompt (command: export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ ")
* nvm
* node & npm via nvm
* fzf (fuzzy search in terminal)

### Prompt support in install.sh

We need prompt handling for these libraries as sometime I might not want
to install something which was done previously

### Resume support in install.sh

If a script fails in between I should be able to resume from where I left off.
Otherwise I have to revert complete thing and some installations might be
difficult to revert or reinstall.
