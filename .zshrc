export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

export PATH="/opt/homebrew/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"


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

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="$HOME/lua-language-server/bin:$PATH"

export PATH=$PATH:/Applications/kitty.app/bin

export DYLD_LIBRARY_PATH=/usr/local/lib:$DYLD_LIBRARY_PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$JAVA_HOME/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by Windsurf
export PATH="/Users/adam/.codeium/windsurf/bin:$PATH"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export PATH="/opt/homebrew/bin:$PATH"

eval "$(starship init zsh)"

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

export PATH="$HOME/.config/composer/vendor/bin:$PATH"


export PATH="/usr/local/opt/mysql-client/bin:$PATH"
