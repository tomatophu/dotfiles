# bash profile file (stuff that only has to be run once)
[[ -r "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
# to load bashrc in login shell ^

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
. "$HOME/.linuxize"

# use mozilla bundled ca
export NODE_OPTIONS=--use-bundled-ca

# home bins
export PATH="$HOME/bin/:$PATH"

