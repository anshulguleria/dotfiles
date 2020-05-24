# -x print the commands getting run
# -e break on error
set -xe

# Prerequisites
# * asdf command available

# add nodejs plugin
asdf plugin add nodejs
# nodejs also requires some certificates pulling
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# install latest node version
node_latest=$(asdf latest node) # keep updating this as you need
asdf install nodejs $node_latest
# set the installed as current
asdf global nodejs $node_latest
