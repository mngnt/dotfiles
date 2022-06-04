alias reload="source ~/.zshrc"

# Quick Edit
alias ea='nvim ~/.oh-my-zsh/custom/alias.zsh'
alias eacl='nvim ~/.config/alacritty/alacritty.yml'
alias et='nvim ~/.config/tmux/.tmux.conf'
alias dow="cd ~/Downloads ; ls"
alias ez='nvim ~/.zshrc'
alias ...="cd ../.."
alias l="ls -lah"
alias lg="lazygit"

# Alias git
alias gst="git status"
alias g="git"
alias gcm="git commit -m"
alias ga="git add"
alias gl="git pull"
alias gp="git push"
alias gcl="git clone"

# Alias systemctl
alias st-start="sudo systemctl start"
alias st-stop="sudo systemctl stop"
alias st-restart="sudo systemctl restart"
alias st-status="sudo systemctl status"
alias st-enable="sudo systemctl enable"
alias st-disable="sudo systemctl disable"


# Alias vim
alias evp="nvim ~/.config/nvim/configs/01.plugins.vim"
alias evc="nvim ~/.config/nvim/configs/02.configs.vim"
alias nv="nvim"

# Alias arch
alias pacin="sudo pacman -S"
alias yrsc="yay -Rsc"
alias ys="yay -S"
alias yr="yay -R"
alias yc="yay -c"
alias y="yay"

# Alias iptables
alias fw-show="sudo iptables -L -n -v" 
alias fw-show-line="sudo iptables -n -L -v --line-numbers"
alias fw-start="sudo systemctl start iptables" 
alias fw-restart="sudo systemctl restart iptables"
alias fw-stop="sudo systemctl stop iptables"
alias fw-save="sudo iptables-save -f /etc/iptables/iptables.rules"
alias fw-restore="sudo iptables-restore /etc/iptables/iptables.rules"
alias fw-icmp-drop="iptables -A INPUT -p icmp --icmp-type echo-request -j DROP" # Block ICMP Ping Request
alias fw-flush="iptables -F"
