# $PATH
export PATH="/usr/local/bin:/usr/bin:$PATH"
export PATH=$PATH:/home/satya/.spicetify
typeset -gU PATH # removes duplicates

# nvim as the default editor of choice
export EDITOR=nvim

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec start-hyprland
fi
