# dotfiles

## Usage

Just clone this repository and use `stow`, for example:

```bash
# Clone this repo

git clone git@gitlab.com:aekt/dotfiles.git ~/.dotfiles

# Link configuration files

cd ~/.dotfiles
stow urxvt vim zsh foo

# Unlink configuration files

cd ~/.dotfiles
stow -D bar
```

## Reference

### Dotfiles

- https://dotfiles.github.io/
- https://github.com/webpro/awesome-dotfiles

### Stow

- https://alexpearce.me/2016/02/managing-dotfiles-with-stow/
