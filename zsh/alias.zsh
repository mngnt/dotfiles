alias reload="source ~/.zshrc"

# Quick Edit
alias ea='nvim ~/.oh-my-zsh/custom/alias.zsh'
alias eacl='nvim ~/.config/alacritty/alacritty.yml'
alias et='nvim ~/.config/tmux/.tmux.conf'
alias dow="cd ~/Downloads ; ls"
alias ez='nvim ~/.zshrc'
alias ...="cd ../.."
alias l="ls -lah"

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
alias ySs="yay -Ss"
alias yr="yay -R"
alias yc="yay -c"
alias y="yay"

# Alias iptables
alias fw="sudo firewall-cmd "
alias fwr="sudo firewall-cmd --reload"
alias fw="sudo firewall-cmd --get-default-zone"
function fwl () {
  # converts output to zsh array ()
  # @f flag split on new line
  zones=("${(@f)$(sudo firewall-cmd --get-active-zones | grep -v 'interfaces\|sources')}")

  for i in $zones; do
    sudo firewall-cmd --zone $i --list-all
  done

  echo 'Direct Rules:'
  sudo firewall-cmd --direct --get-all-rules
}
