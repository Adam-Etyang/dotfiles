# eza configuration

unalias ls 2>/dev/null
_EZA_DEFAULT_FLAGS=(--icons --color=always --group-directories-first --long --git)

ls() {
  # fallback to system ls if eza is not available
  if ! command -v eza >/dev/null 2>&1; then
    command ls "$@"
    return
  fi

  # if first arg starts with '-' pass args through, otherwise add defaults
  case "${1:-}" in
    -*) command eza "$@" ;;
    *)  command eza "${_EZA_DEFAULT_FLAGS[@]}" "$@" ;;
  esac
}

# Function to pick a directory with eza + fzf
cdf() {
  # list directories only with eza (icons optional), pipe to fzf
  local dir
  dir=$(eza --all --only-dirs --icons --group-directories-first --color=always | fzf --height 40% --reverse --ansi --preview 'ls -lha --color=always {}' ) || return
  cd "$dir" || return
}


export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

export PATH="/opt/homebrew/bin:$PATH"

#Python and conda
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"


#nodeJS and NVM
export PATH="$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"


export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#Database
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export PATH="$HOME/lua-language-server/bin:$PATH"

export PATH=$PATH:/Applications/kitty.app/bin

export DYLD_LIBRARY_PATH=/usr/local/lib:$DYLD_LIBRARY_PATH

#Java
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"


#syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export PATH="/opt/homebrew/bin:$PATH"


#starship prompt
eval "$(starship init zsh)"

#curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

#composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

#mysql

#Fuzzy finder 
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top'

# Aliases
alias ll='ls -lah'
alias gs='git status -sb'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias n='nvim'
alias v='vim'
alias t='tmux'
alias ta='tmux a'
alias py='python'
alias la='eza --long --all --group-directories-first --icons'
alias ll= 'eza --long --human-readable --group-directories-first --icons --git'
alias lt2='eza --tree --level=2 --long --icons --git'
alias lt4='eza --tree --level=4 --icons'
alias lpg='eza --tree --git --level=2 --icons'
alias lsd='eza --only-dirs --icons --group-directories-first'
alias ff='eza --tree --level=4 --icons | fzf'




export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

