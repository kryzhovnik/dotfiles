# What's that

This is notes for me to help in setup of my developmet machine: macOS Sierra 10.12.1

## Install Brew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Install common packages

```sh
brew install wget build-essential libssl-dev ansible git-core tree unrar nodejs
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

