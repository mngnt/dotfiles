#!/usr/bin/env bash

# Step prepare
get_os () {
  grep -m1 "NAME=" </etc/os-release | cut -d '"' -f 2
}


# Step Setup
check_deps () {
  declare -a deps=('git')
  for dep in ${deps[@]}; do
    if ! command -v $dep 2>&1 > /dev/null; then
      error "Dependency $dep is required, you must install it"
    fi
  done
  install_yay
}

install_yay () {
  os=$(get_os)
  if [[ $os == 'Arch Linux' ]]; then
    if ! command -v yay; then
      info "Installing yay: Cannot found it on your system!"
      download_yay
      success "Done"
    fi
  fi
}

download_yay () {
    mkdir -p $HOME/repo
    cd $HOME/repo
    git clone https://aur.archlinux.org/yay-bin.git
    makepkg -si --noconfirm
}

install_package () {
    yay -S firefox brave-bin google-chrome xsel nodejs-lts-gallium npm onlyoffice-bin sublime-text-4 noto-fonts-emoji zsh net-tools fcitx5 fcitx5-configtool nmap cronie visual-studio-code-bin flameshot alacritty --noconfirm
}

enable_system () {
    sudo systemctl enable cronie.service
    sudo systemctl start cronie.service
}

npm_install () {
    sudo npm i -g bash-language-server
}

copy_files () {
  cp -r alacritty nvim tmux ~/.fcitx5-configtool
  mkdir -p /usr/share/fonts
  cp -r fonts /usr/share/fonts
}

main () {
    sudo pacman -Syu --noconfirm
    check_deps
    install_package
    enable_system
    npm_install
}

main
