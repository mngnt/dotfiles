. ~/.config/fish/aliases.fish
#auto start tmux
if status is-interactive
and not set -q TMUX
  tmux new-session -A -s Mngnt
end
tmux source ~/.config/tmux/.tmux.conf

export EDITOR=/usr/bin/nvim
set -gx TERM xterm-256color

set -gx fish_greeting ''

#starship 
starship init fish | source
