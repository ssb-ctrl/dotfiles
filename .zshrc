# Starship config file location
export STARSHIP_CONFIG=/home/satya/.config/starship/starship.toml

# Yazi cwd remember shell script
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# The command will produce a series of environmental variable settings for defining how your files are colored, you can check all colors assigned viacommand: "echo %LS_COLORS"
eval "$(dircolors -b)"

HISTSIZE=3000           # keep 3000 lines of commands in memory
SAVEHIST=1500           #  save 3000 lines of commands
HISTFILE=~/.zsh_history # history logbook location

# keybinding use 'bindkey -e' for emacs and bindkey -v for vi
bindkey -e
bindkey '^[d' kill-whole-line   # ALT+D
bindkey '^D' backward-kill-word # CTRL+D
bindkey '^[i' beginning-of-line # ALT+I
bindkey '^[a' end-of-line       # ALT+A
bindkey '^F' forward-word       # CTRL+F
bindkey '^B' backward-word      # CTRL+B
bindkey '^Z' undo               # CTRL+Z
bindkey '^Y' redo               # CTRL+Y

#-------------------------START zsh styling---------------------------------
# 1)ZSH-COMPLETIONS
# Add zsh-completions to the function path, this allows Zsh to find the new completion scripts
fpath=(~/.zsh/zsh-plugins/zsh-completions/ $fpath)
source ~/.zsh/zsh-plugins/zsh-completions/zsh-completions.plugin.zsh
autoload -Uz compinit && compinit -C
# optional Use -C to trust/refresh cache quickly, first use without -C so that it will dump all cache in ~/.zcompdump and then you can use -C flag

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' \
  'm:{a-z}={A-Za-z}' \
  'm:{a-zA-Z}={A-Za-z}' \
  'r:|[._-]=* r:|=*' \
  'l:|=* r:|=*'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' tag-order \
  'options arguments ' \
  'commands aliases functions builtins reserved-words' \
  'parameters' \
  'values' \
  'hosts users groups processes jobs services' \
  'documents directories files all-files' \
  'manuals' \
  'corrections expand' \
  zstyle ':completion:*' verbose yes
zstyle ':completion:*' remote-access false
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path "$HOME/.zsh/cache"
# zstyle ':completion:*:warnings' format '%B%F{red}No matches for: %d%f%b'
setopt completeinword
unsetopt correct
#
# 2)ZSH-AUTOSUGGESTIONS
# Source zsh-autosuggestions
source ~/.zsh/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# autosuggestions tweaks
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
#
# 3)HISTORY-SUBSTRING-SEARCH
# Source zsh-history-substring-search
if [[ -f ~/.zsh/zsh-plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ]]; then
  source ~/.zsh/zsh-plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
fi
# Bind emacs keymap C-p and C-n to search by prefix
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
# Colors and behavior
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=27'      # highlight the match
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=196' # indicate no match
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT=1          # clears the highlighting in 2 seconds
HISTORY_SUBSTRING_SEARCH_PREFIXED=true                # word by word match
HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'           # A=a
setopt HIST_IGNORE_ALL_DUPS                           # only unique results
#
# 4)ZSH-SYNTAX-HIGHLIGHTING
# Source zsh-syntax-highlighting
# IMPORTANT: This must be the last plugin sourced to avoid conflicts.
source ~/.zsh/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Catppuccin Mocha styles
ZSH_HIGHLIGHT_STYLES["unknown-token"]='fg=203'        # red
ZSH_HIGHLIGHT_STYLES["reserved-word"]='fg=177'        # mauve
ZSH_HIGHLIGHT_STYLES[builtin]='fg=147'                # lavender
ZSH_HIGHLIGHT_STYLES[command]='fg=110'                # blue
ZSH_HIGHLIGHT_STYLES[function]='fg=79'                # teal
ZSH_HIGHLIGHT_STYLES[alias]='fg=218,underline'        # pink
ZSH_HIGHLIGHT_STYLES["hashed-command"]='fg=117'       # sky
ZSH_HIGHLIGHT_STYLES[precommand]='fg=2,underline'     # flamingo (e.g., sudo)
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=244'       # overlay1
ZSH_HIGHLIGHT_STYLES[redirection]='fg=215'            # peach
ZSH_HIGHLIGHT_STYLES[comment]='fg=244'                # overlay1
ZSH_HIGHLIGHT_STYLES["single-hyphen-option"]='fg=229' # yellow
ZSH_HIGHLIGHT_STYLES["double-hyphen-option"]='fg=229' # yellow
ZSH_HIGHLIGHT_STYLES[assign]='fg=189'                 # subtext0
ZSH_HIGHLIGHT_STYLES["named-fd"]='fg=189'             # subtext0
# Arguments / strings
ZSH_HIGHLIGHT_STYLES[argument]='fg=#c0caf5'                    # text
ZSH_HIGHLIGHT_STYLES["single-quoted-argument"]='fg=114'        # green
ZSH_HIGHLIGHT_STYLES["double-quoted-argument"]='fg=114'        # green
ZSH_HIGHLIGHT_STYLES["back-quoted-argument"]='fg=74,underline' # sapphire
ZSH_HIGHLIGHT_STYLES["dollar-quoted-argument"]='fg=74'         # sapphire
# Paths / globs
ZSH_HIGHLIGHT_STYLES[path]='fg=79'                  # teal
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=79,underline' # teal
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=240'   # overlay0
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=217'          # maroon
ZSH_HIGHLIGHT_STYLES[globbing]='fg=215'             # peach
# Substitutions / parameters / arithmetic
ZSH_HIGHLIGHT_STYLES["command-substitution"]='fg=117'           # sky
ZSH_HIGHLIGHT_STYLES["command-substitution-delimiter"]='fg=240' # overlay0
ZSH_HIGHLIGHT_STYLES["dollar-parameter"]='fg=229'               # yellow
ZSH_HIGHLIGHT_STYLES["bracket-level-1"]='fg=110'                # blue
ZSH_HIGHLIGHT_STYLES["bracket-level-2"]='fg=177'                # mauve
ZSH_HIGHLIGHT_STYLES["bracket-level-3"]='fg=114'                # green
ZSH_HIGHLIGHT_STYLES["arithmetic-expansion"]='fg=218'           # pink
# Corrections / autoloadables
ZSH_HIGHLIGHT_STYLES[correction]='fg=203,underline' # red
ZSH_HIGHLIGHT_STYLES["unknown-alias"]='fg=217'      # maroon
ZSH_HIGHLIGHT_STYLES["unknown-function"]='fg=217'   # maroon
# “Good/bad” statuses
ZSH_HIGHLIGHT_STYLES["suffix-alias"]='fg=224' # rosewater
ZSH_HIGHLIGHT_STYLES["globbing-ext"]='fg=177' # mauve
#--------------------------------------------END zsh -----------------------------------------------

#FZF
#ctrl+r=history of commands
#alt+c=dir change
#ctrl+t=next option like fzf
source <(fzf --zsh)

#zoxide
eval "$(zoxide init zsh)"

# Starship init script
eval "$(starship init zsh)"

# Native zsh mv command for advanced functionalities
autoload zmv

#ALIAS
alias c='clear'
alias restart='systemctl restart NetworkManager.service'
alias start='systemctl start bluetooth.service'
alias stop='systemctl stop bluetooth.service'
alias ls='eza --color=auto --icons=always -F=always'
alias ll='ls --long --show-symlinks --group' # --time-style=+%d-%m-%Y^%H:%M  --total-size
alias lt='ls --tree -L 1'
alias rg='rg --pretty -i'
alias qq='exit'
alias ff1='fastfetch --config ~/.config/fastfetch/config1.jsonc'
alias ff2='fastfetch --config ~/.config/fastfetch/config2.jsonc'
alias ff3='$HOME/.config/fastfetch/show.sh'
alias bat='bat --color=always --theme base16 --decorations always --style=full'
alias fff='(fzf -i -m --style=full --cycle --no-scrollbar --no-mouse --preview="bat --color=always --theme base16 --decorations always --style=full {}" --preview-border=sharp) | wl-copy'
alias st='speedtest-cli --secure'
alias lc='nvim leetcode.nvim'
alias termdown='termdown -f epic -c 5 -b -a'
alias dmenu='fuzzel --dmenu'
alias ustatv='sudo ufw status verbose'
alias ustatn='sudo ufw status numbered'
alias zmvn='zmv -n'
alias zmvi='zmv -i'
