This file lists the basic dependencies to be installed.

* vim
* vim-plug plugin
* eslint
* babel-eslint
* zsh
* oh-my-zsh
* nvm
* node & npm via nvm
* fzf (fuzzy search in terminal)

> Note: Installation steps for lots of these items which can be automated are
> present in install.sh file.

### Remaining items:

List of items remaining for shell script

* [ ] Add input handlers in install.sh file to take use input whereever
    necessary. At present it echos the steps user need to take and moves ahead
* [ ] If some steps needs user intervention then add wait for user to complete
    that action and then come back to cli to resume the remaining steps
* [ ] In the end give list of steps done by script and steps that were already
    present and we didn't need to install any of those
