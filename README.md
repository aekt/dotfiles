# dotfiles

## Manual

0. Clone this repo and submodules
```
git clone git@gitlab.com:aekt/dotfiles.git ~/.dotfiles
```

1. Link configuration files
```
cd ~/.dotfiles
stow urxvt vim zsh foo
```

2. Unlink configuration files
```
cd ~/.dotfiles
stow -D bar
```

## Reference

### Dotfiles

* https://dotfiles.github.io/
* https://github.com/webpro/awesome-dotfiles

### Stow

* https://alexpearce.me/2016/02/managing-dotfiles-with-stow/
