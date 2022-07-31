#!/usr/bin/env bash

# Step prepare
get_os() {
  grep -m1 "NAME=" </etc/os-release | cut -d '"' -f 2
}

# Step Setup
frist() {
  sudo pacman -Syu --noconfirm
  sudo pacman -S git fakeroot --noconfirm

  # Tpm (Plugin for tmux)
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  # Vimplug
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  install_yay
}

install_yay() {
  os=$(get_os)
  if [[ $os == 'Arch Linux' ]]; then
    if ! command -v yay; then
      info "Installing yay: Cannot found it on your system!"
      download_yay
      success "Done"
    fi
  fi
}

download_yay() {
  mkdir -p $HOME/repo
  cd $HOME/repo
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si --noconfirm
}

install_package() {
  yay -S google-chrome cups prettier hplip firefox onlyoffice-bin tmux sublime-text-4 noto-fonts-emoji net-tools nmap visual-studio-code-bin flameshot xsel alacritty kitty zsh nodejs npm cronie pacman-contrib neovim --noconfirm
}

copy_files() {
  sudo cp -r config/* ~/.config/
  sudo mkdir -p /usr/share/fonts
  sudo cp -r fonts /usr/share/fonts
  cp -r zsh/.zshrc ~/
  gnome_setting
}

gnome_setting() {
  gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
}

npm_install() {
  sudo npm i -g bash-language-server
  sudo npm install -g live-server
}

clean() {
  rm -rf $HOME/repo
}

run() {
  frist
  install_package
  copy_files
  npm_install
  clean
}

run
