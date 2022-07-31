#!/usr/bin/env bash

frist() {
  sudo echo '
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=False
skip_if_unavailable=True
max_parallel_downloads=10
fastestmirror=True
' >/etc/dnf/dnf.conf
  sudo dnf update -y
  sudo dnf upgrade -y
  install_package

}

install_package() {
  # Tpm (Plugin for tmux)
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  # Vimplug
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  # Install sublime-text-4
  sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg -y
  sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo -y
  sudo dnf install sublime-text -y

  # Install Vscode
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc -y
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  sudo dnf check-update -y
  sudo dnf install code -y

  # Install ibus-bamboo
  sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_36/home:lamlng.repo -y
  sudo dnf install ibus-bamboo -y

  # Install package
  sudo dnf install google-chrome-stable nmap npm nodejs zsh alacritty flameshot -y
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

remove_package() {
  sudo dnf remove gnome-text-editor-* rhythmbox-* gnome-boxes-* libreoffice-* gnome-maps-* gnome-tour-* gnome-contacts-* gnome-weather-* mediawriter-* -y
  sudo dnf autoremove -y
  sudo dnf clean all
}

npm_install() {
  sudo npm i -g bash-language-server
  sudo npm install -g live-server
}

run() {
  frist
  copy_files
  remove_package
  npm_install
}

run
