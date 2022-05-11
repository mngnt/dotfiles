#auto start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux new-session -A -s Mngnt
fi
tmux source ~/.config/tmux/.tmux.conf
export EDITOR=/usr/bin/nvim
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Plugins
plugins=( 
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-z
    sudo
    )

source $ZSH/oh-my-zsh.sh

