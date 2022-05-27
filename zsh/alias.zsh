alias reload="source ~/.zshrc"

# Quick Edit
alias ea='nvim ~/.oh-my-zsh/custom/alias.zsh'
alias ez='nvim ~/.zshrc'
alias et='nvim ~/.config/tmux/.tmux.conf'
alias eacl='nvim ~/.config/alacritty/alacritty.yml'
alias c="clear"
alias l="ls -lah"
alias dow="cd ~/Downloads ; ls"
alias ...="cd ../.."

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
alias st-restart="sudo systemctl restart"
alias st-status="sudo systemctl status"
alias st-enable="sudo systemctl enable"
alias st-disable="sudo systemctl disable"


# Alias vim
alias evp="nvim ~/.config/nvim/configs/01.plugins.vim"
alias evc="nvim ~/.config/nvim/configs/02.configs.vim"
alias nv="nvim"

# Alias arch
alias y="yay"
alias ys="yay -S"
alias yr="yay -R"
alias yrsc="yay -Rsc"
alias pacin="sudo pacman -S"
alias upgrade='sudo pacman -Syu ; y '

# Alias firewalld
alias fw="sudo firewall-cmd"
alias fwr"sudo firewall-cmd --reload"
alias fwp"sudo firewall-cmd --permanent"
