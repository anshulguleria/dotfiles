# -x print the commands getting run
# -e break on error
set -xe

# Prerequisites
# * asdf command available

# add nodejs plugin
asdf plugin add deno

# install latest deno version
deno_latest=$(asdf latest deno) # keep updating this as you need
asdf install deno $deno_latest
# set the installed as current
asdf global deno $deno_latest
