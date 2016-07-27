# What's that

This is notes for me to help in setup of my developmet machine. I use Ubuntu 16.4.

## Setting command line

Install font

  ```sh
  cd dotfiles
  mkdir -p ~/.fonts/ && mv fonts/inconsolatalgc.ttf ~/.fonts/
  fc-cache -vf ~/.fonts
  ```

Open Terminal -> Preferencies -> Profiles -> Edit

1. Set "Initial terminal size" to 160x40
2. Set "Custom font" to Inconsalata LGC Regular (12px)
3. Set colors
  - background: #122637
  - color: #f7fbff
  - palate: Tango

## zsh and oh-my-zsh

  ```sh
  sudo apt-get install zsh
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  cd dotfiles
  ln -sf $PWD/.zshrc     ~/
  ln -sf $PWD/.oh-my-zsh/themes/kryzhovnik.zsh-theme ~/.oh-my-zsh/themes/

  # Set zsh for root
  sudo ln -sf $PWD/.zshrc     /root/.zshrc
  sudo bash -c 'echo "exec zsh" >> /root/.bashrc'
  ```  

## Install common packages
  ```sh
  sudo apt-get update
  sudo apt-get install build-essential libssl-dev ansible git-core
## Ruby with rbenv
## Install DBs: mysql, pg
## Text editors: sublime 3
## Apps and utils

  ```sh
  sudo apt-get install tree
  sudo apt-get install gimp
  ```
