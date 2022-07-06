#!/usr/bin/env bash

# Step prepare
get_os () {
  grep -m1 "NAME=" </etc/os-release | cut -d '"' -f 2
}

# Step Setup
frist () {
  sudo pacman -Syu --noconfirm
  sudo pacman -S git --noconfirm

    # Tpm (Plugin for tmux) 
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  
  # Vimplug
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
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
    cd yay-bin
    git clone https://aur.archlinux.org/yay-bin.git
    makepkg -si --noconfirm
}

install_package () {
    yay -S google-chrome firefox onlyoffice-bin tmux sublime-text-4 noto-fonts-emoji net-tools nmap visual-studio-code-bin flameshotxsel alacritty zsh nodejs fakeroot npm cronie pacman-contrib neovim --noconfirm
}

npm_install () {
    sudo npm i -g bash-language-server
}

copy_files () {
  cp -r alacritty nvim tmux ibus-bamboo ~/.config
  mkdir -p /usr/share/fonts
  cp -r fonts /usr/share/fonts
}

run () {
    frist
    install_package
    npm_install
    copy_files
}

run
