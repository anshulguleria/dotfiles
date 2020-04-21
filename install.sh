# Note: While building this file I am using Linux version 19.10 hence,
# the commands will be with respect this version only

# Exit on error(-e) and show commads being run(-x)
set -xe

# install git
sudo apt install -y git

# install tree utility to show directory structure
sudo apt install -y tree

# install tmux
sudo apt install -y tmux
# install plugin manager tpm for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# link your tmux configuration to $HOME/.tmux.conf
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf

echo "open tmux and source ~/.tmux.conf file"
echo "tmux source ~/.tmux.conf"
echo "after this just run prefix + I to install plugins"

# INFO: to make tmux use zsh/ohmyzsh, ohmyzsh should be installed after tmux

# setup zsh
sudo apt install -y zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Update your shell to use /usr/bin/zsh to run the shell on startup if
# you want this to be the default shell
# you can also configure zsh to use vi mode. If interested add vi-mode to
# plugins list in ~/.zshrc
echo "add vi-mode to ~/.zshrc by adding vi-mode to plugins"

# install and setup nvim editor
sudo apt install -y neovim
# create directory to keep configuration
mkdir -p ~/.config/nvim
# symlink our files to this directory
ln -s $(pwd)/neovim/init.vim $HOME/.config/nvim/init.vim
ln -s $(pwd)/neovim/config $HOME/.config/nvim/config
# install plug as our plugin manager for nvim
# but this requires curl, lets install that first
sudo apt install -y curl
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# once this is done open up nvim and run `PlugInstall` command. But
# before this, lots of my plugins require node, npm and yarn. Lets
# install those first

# install nvm as node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
# setup nvm in zshrc, This zsh-nvm-setup contains necessary export
# commands to add nvm to path. Source this file in ~/.zshrc
echo "" >> ~/.zshrc
echo "# load nvm paths" >> ~/.zshrc
echo "source $(pwd)/zsh-nvm-setup" >> ~/.zshrc
# install latest stable node and npm
nvm install stable
# install yarn as many of our tools use it
npm i -g yarn
# After this it should be safe to run `PlugInstall` in nvim editor
echo "Open nvim and run :PlugInstall command"

echo "Open https://www.nerdfonts.com/ to install nerd fonts you want"
echo "I prefer Fira Code"
echo "Once downloaded and installed change the terminal font"

# auto remove dependencies which were installed while setting up our
# other dependencies
sudo apt -y autoremove
