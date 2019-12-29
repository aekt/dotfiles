autoload -Uz compinit && compinit

# use Vi key binding
bindkey -v

# allow mouse scroll in `less`
export LESS="-r"

# use `fd` in `fzf`
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"

# start SSH agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh/.ssh-agent-thing)"
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
