# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

PATH=$PATH:$HOME/bin

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"/ssh-agent.socket

# enable if using nvm for JS development
#source /usr/share/nvm/init-nvm.sh

source $HOME/bin/zsh-z.plugin.zsh
zstyle ':completion:*' menu select

eval $(thefuck --alias)

autoload -U compinit && compinit
