# What's that

This is notes for me to help in setup of my developmet machine: macOS Sierra 10.12.1

## Setting command line

### Install font

1. Install source-code-pro fonts form the repository (open in finder, go to otf dir, double click on the files)
2. Set Source Code Pro as font in iTerm default profile

### Set Terminal preferencies

Open Terminal -> Preferencies -> Profiles -> Edit

1. Set "Initial terminal size" to 140x35
2. Set "Custom font" to Source Code Pro Semibold (12px)
3. Set colors
  - palate: Tango Dark
  - background: #122637
  - foreground: #f7fbff


## Install Brew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## zsh and oh-my-zsh

```sh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd dotfiles
ln -sf $PWD/.zshrc ~/
ln -sf $PWD/.oh-my-zsh/themes/kryzhovnik.zsh-theme ~/.oh-my-zsh/themes/
```

## Ruby with rbenv

1. Install rbenv

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
```

2. Restart shell and check `type rbenv`

3. Install ruby-build and first ruby

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.3.3
```

3. Set global ruby `rbenv global 2.3.3`

## Install Xcode

1. Install Xcode through App Store

2. In terminal `xcode-select --install`

## Install common packages

`brew install wget ansible git-core tree unrar nodejs`

## Setup git

`ln -s ~/code/dotfiles/.gitconfig ~/.gitconfig`

## Ruby with rbenv

1. Install rbenv

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
~/.rbenv/bin/rbenv init
```

2. Restart shell and check `type rbenv`

3. Install ruby-build and first ruby

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.3.3
```

3. Set global ruby `rbenv global 2.3.3`

## Text editors: sublime 3

1. [Download](https://www.sublimetext.com/3) and install package

2. Add `subl` command

```ssh
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

3. Install [Package Controll](https://packagecontrol.io/installation)

4. Install packages: Better CoffeeScript, MarkdownHighlighting, Ruby Slim, SCSS

5. Copy user preferencies (symlinking breaks config reloading):

```sh
cp -r ~/code/dotfiles/.config/sublime-text-3 ~/Library/Application\ Support/Sublime\ Text\ 3/
```

## GPG sign for github.com

```sh
brew install gpg
gpg --gen-key

# Copy gpg key to [Github](https://github.com/settings/keys)
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <PASTE_LONG_KEY_HERE>

# Setting git
gpg --list-secret-keys
git config --global user.signingKey <PASTE_SHORT_KEY_HERE>
```

