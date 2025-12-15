ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Custom completions
fpath=(~/.local/share/zsh-completions $fpath)

# ~/.zshrcexport VISUAL=/usr/local/bin/subl
export EDITOR=micro
export RAILS_EDITOR="cursor --wait"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kryzhovnik"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract you-should-use)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias be="bundle exec"
alias r="bin/rails"
alias rc="bin/rails c"

bindkey "^[[1;3C" end-of-line
bindkey "^[[1;3D" beginning-of-line

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

export EDITOR="code --wait"

export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Lazy-load nvm (saves ~500ms on startup)
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.nvm/versions/node/$(cat $NVM_DIR/alias/default 2>/dev/null || echo 'v20')/bin:$PATH"

_load_nvm() {
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

nvm() {
  unfunction nvm node npm npx 2>/dev/null
  _load_nvm
  nvm "$@"
}

node() {
  unfunction nvm node npm npx 2>/dev/null
  _load_nvm
  node "$@"
}

npm() {
  unfunction nvm node npm npx 2>/dev/null
  _load_nvm
  npm "$@"
}

npx() {
  unfunction nvm node npm npx 2>/dev/null
  _load_nvm
  npx "$@"
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Yandex Cloud CLI (completions disabled for faster startup)
if [ -f '/Users/kr/yandex-cloud/path.bash.inc' ]; then source '/Users/kr/yandex-cloud/path.bash.inc'; fi


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/kr/.cache/lm-studio/bin"

. "$HOME/.local/bin/env"

# Lazy-load conda (saves ~280ms on startup)
_load_conda() {
  __conda_setup="$('/Users/kr/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/Users/kr/miniconda3/etc/profile.d/conda.sh" ]; then
      . "/Users/kr/miniconda3/etc/profile.d/conda.sh"
    else
      export PATH="/Users/kr/miniconda3/bin:$PATH"
    fi
  fi
  unset __conda_setup
}

conda() {
  unfunction conda 2>/dev/null
  _load_conda
  conda "$@"
}

mamba() {
  unfunction mamba 2>/dev/null
  _load_conda
  mamba "$@"
}


# # bun completions
# [ -s "/Users/kr/.bun/_bun" ] && source "/Users/kr/.bun/_bun"

# # bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Antigravity
export PATH="/Users/kr/.antigravity/antigravity/bin:$PATH"

# Load secrets (API keys, etc.)
[ -f ~/.secrets ] && source ~/.secrets
