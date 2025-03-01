# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

export DOTNET_ROOT=/usr/share/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

#eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/night-owl.omp.json)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/paradox.omp.json)"

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
#bindkey '^B' autosuggest-toggle


# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Alias
alias d='docker'
alias dc='docker compose'
#alias ls='lsd'
alias ls="ls --color=auto"

# Extensions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Paths
export PATH="${PATH}:/home/$(whoami)/.local/bin"
export XDG_DATA_DIRS="${PATH}:/usr/local/share/:/usr/share/:/var/lib/flatpak/exports/share"
export XDG_CONFIG_HOME="/home/$(whoami)/.config"

# Add .local to the path
#export PATH="${PATH}:/home/$(whoami)/.local/bin"

# Add flatpaks to search dir
#export PATH="${PATH}:/home/$(whoami)/.local/share/flatpak/exports/share"
# export PATH="${PATH}:/var/lib/flatpak/exports/share"
# export XDG_DATA_DIRS="${XDG_DATA_DIRS}:/var/lib/flatpak/exports/share/:/home/$(whoami)/.local/share/flatpak/exports/share"
