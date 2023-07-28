# What's that

This is notes for me to help in setup of my developmet machine: macOS Sierra 10.12.1

## Adjast MacOS UI

1. Right-click on the dock, select "Turn Hiding On"
2. Improve Dock animation, in terminal

    defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock

### Install Raycast

https://www.raycast.com

## Setting command line

### iTerm2

Download and install [https://www.iterm2.com](https://www.iterm2.com)

### Install font

Open https://github.com/adobe-fonts/source-code-pro
Download fonts files from `otf` directory
Double click on them in Finder to install

### Set iTerm profile

1. Open iTerm -> Settings -> Profiles
2. Select Other Ations -> Import JSON Profiles -> Choose dotfiles/iterm/kr-profile.json
4. Other Ations -> Set as Default

Here are iterm-kr-profile.json settings:

- new window settings: 160x40
- custom color presets
- working directory set as "Reuse previous session's directory"
- Source Code Pro Semibold 15 font

## Select iTerm color preset Tango Light

## Install Brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## zsh and oh-my-zsh

```sh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install autojump

cd dotfiles
ln -sf $PWD/.zshrc ~/
ln -sf $PWD/.oh-my-zsh/themes/kryzhovnik.zsh-theme ~/.oh-my-zsh/themes/
```

## Ruby with rbenv

1. Install rbenv

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'eval "$(~/.rbenv/bin/rbenv init - zsh)"' >> ~/.zshrc
```

2. Restart shell and check `type rbenv`

3. Install ruby-build and first ruby

```sh
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv install --list
rbenv install 3.2.2
```

3. Set global ruby `rbenv global 3.2.2`

## Install NVM

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

nvm install node

## Install common packages

`brew install wget ansible tre micro`

## Setup git

`ln -s ~/code/dotfiles/.gitconfig ~/.gitconfig`

## Text editors: vscode

Download from officila site and sign in to sync settings
