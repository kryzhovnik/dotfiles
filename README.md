# Dotfiles

macOS dev machine setup.

## Install

```sh
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Tools
brew install zsh autojump micro

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Symlinks
ln -sf ~/code/dotfiles/.zshrc ~/
ln -sf ~/code/dotfiles/.gitconfig ~/
ln -sf ~/code/dotfiles/.oh-my-zsh/themes/kryzhovnik.zsh-theme ~/.oh-my-zsh/themes/
ln -sf ~/code/dotfiles/.config/ghostty ~/.config/
```

## Ghostty

Download from [ghostty.org](https://ghostty.org)

Config: `~/.config/ghostty/config`

## Ruby (rbenv)

```sh
brew install rbenv ruby-build
echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
rbenv install 3.4.1 && rbenv global 3.4.1
```

## Node (nvm)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install node
```

## Claude Code

```sh
ln -sf ~/code/dotfiles/.claude/commands ~/.claude/
ln -sf ~/code/dotfiles/.claude/settings.json ~/.claude/
ln -sf ~/code/dotfiles/.claude/statusline-enhanced.sh ~/.claude/
```

## Secrets

Create `~/.secrets` for API keys (sourced by .zshrc):

```sh
export OPEN_AI_API_KEY=sk-...
```
