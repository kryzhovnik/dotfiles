# What's that

This is notes for me to help in setup of my developmet machine. I use Ubuntu 16.4.

## Setting command line

### Install font

```sh
cd dotfiles
mkdir -p ~/.fonts/ && cp fonts/* ~/.fonts/
fc-cache -vf ~/.fonts
```

### Set Terminal preferencies

Open Terminal -> Preferencies -> Profiles -> Edit

1. Set "Initial terminal size" to 140x35
2. Set "Custom font" to Source Code Pro Semibold (12px)
3. Set colors
  - background: #122637
  - color: #f7fbff
  - palate: Tango

### Default placing for Terminal window

1. Install CompizConfig Settings Manager `sudo apt-get -y install compizconfig-settings-manager`
2. Run compizconfig-settings-manager
3. Go "Place Windows" -> "Fixed Window Placement"
4. Set "New" on "Windows with fixed positions"
  - Positioned window: "class=Gnome-terminal"
  - X: 120
  - Y: 80

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
sudo apt-get -y install build-essential libssl-dev ansible git-core tree unrar nodejs
```

## Ruby with rbenv

1. Install rbenv

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
~/.rbenv/bin/rbenv init
```

2. Restart shell and check `type rbenv`

3. Install ruby-build and first ruby

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.3.1
```

3. Set global ruby `rbenv global 2.3.1`

## Install DBs: mysql, pg

```sh
sudo apt-get -y install sphinxsearch
```

## Text editors: sublime 3

1. [Download](https://www.sublimetext.com/3) and install package

2. Install [Package Controll](https://packagecontrol.io/installation)

3. Install packages: Better CoffeeScript, MarkdownHighlighting, Ruby Slim, SCSS

4. Copy user preferencies (symlinking breaks config reloading):

```sh
cp -r ~/code/dotfiles/.config/sublime-text-3 ~/.config 
```

## Apps

```sh
sudo apt-get -y install google-chrome-stable gimp
```

## GPG sign for github.com

```sh
sudo apt-get install gpa seahorse

gpg --gen-key

# Copy gpg key to [Github](https://github.com/settings/keys)
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <PASTE_LONG_KEY_HERE>

# Setting git
gpg --list-secret-keys
git config --global user.signingKey <PASTE_SHORT_KEY_HERE>
```
