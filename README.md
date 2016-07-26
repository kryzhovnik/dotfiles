# What's that

This is notes for me to help in setup of my developmet machine. I use Ubuntu 16.4.

## Setting command line

Install powerline fonts

  ```sh
  wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
  mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
  fc-cache -vf ~/.fonts
  mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
  ```

Open Terminal -> Preferencies -> Profiles -> Edit

1. Set "Initial terminal size" to 160x40
2. Set "Custom font", e.g. Inconsalata Bold
3. Set colors
  - background: #122637
  - color: #f7fbff
  - palate: Tango

## zsh and oh-my-zsh

  ```sh
  sudo apt-get install zsh
  sudo apt-get install oh-my-zsh
  cd dotfiles
  cp .zshrc ~/
  cp .oh-my-zsh ~/ -r
  ```  

## Install common packages
## Ruby with rbenv
## Install DBs: mysql, pg
## Text editors: sublime 3
## Apps and utils

  ```sh
  sudo apt-get install tree
  sudo apt-get install gimp
  ```
