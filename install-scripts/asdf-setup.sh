# -x Print commands getting executed
# -e exit on error
set -xe
# Prerequisites:
# * oh-my-zsh setup
# * presence of ~/.zshrc file

# Install asdf by git clone of master branch
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# Add path to zsh
# ./configurations/zsh-asdf-setup file contains necessary configuration. We need
# to add this file as source in ~/.zshrc file
echo "" >> ~/.zshrc
echo "# load asdf paths and autocompletions" >> ~/.zshrc
# Get directory path of this file
dir_path=$(realpath $(dirname $0))
# TODO: don't again twice if already preset
echo "source $dir_path/configurations/zsh-asdf-setup" >> ~/.zshrc

# Source your zshrc file so that we get asdf command
source ~/.zshrc

# TODO: prompt user if he wants to setup node
# sh $dir_path/node-setup.sh

# TODO: Prompt user if he wants to setup deno
# sh $dir_path/deno-setup.sh
