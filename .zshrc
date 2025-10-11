# ============================================================

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/bin:$PATH"

# ============================================================
# Python & Conda
# ============================================================
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# Conda initialization (auto-generated block)
if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
  . "/opt/anaconda3/etc/profile.d/conda.sh"
else
  export PATH="/opt/anaconda3/bin:$PATH"
fi

# ============================================================
# ============================================================
export NVM_DIR="$HOME/.nvm"
if [ -s "/opt/homebrew/opt/nvm/nvm.sh" ]; then
  source "/opt/homebrew/opt/nvm/nvm.sh"
fi

# ============================================================
# ============================================================
export JAVA_HOME="$(
  /usr/libexec/java_home -v 21 2>/dev/null || echo "/opt/homebrew/opt/openjdk"
)"
export PATH="$JAVA_HOME/bin:$PATH"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# ============================================================
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# ============================================================
# ============================================================
export PATH="$HOME/.local/bin:$PATH"             # General local tools
export PATH="$HOME/lua-language-server/bin:$PATH" # Lua Language Server
export PATH="$HOME/.config/composer/vendor/bin:$PATH" # Composer (PHP)
export PATH="$HOME/.codeium/windsurf/bin:$PATH"   # Windsurf tools

# ============================================================
export DYLD_LIBRARY_PATH="/usr/local/lib:$DYLD_LIBRARY_PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# ============================================================
# UI
# ============================================================
# Starship prompt
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# Syntax highlighting (load last for proper zsh behavior)
if [ -f "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Avoid duplicate PATH entries
export PATH="$(awk -v RS=: '!a[$1]++{printf("%s%s",$1,RT)}' <<<"$PATH")"

# Aliases 
alias ll='ls -lah'
alias gs='git status -sb'
alias gp='git push'
alias ga='git add .'
alias gc='git commit -m'



export PATH="$(echo "$PATH" | sed 's/\/opt\/homebrew/\n\/opt\/homebrew/g' | tr '\n' ':' | sed 's/::/:/g' | sed 's/:$//')"
