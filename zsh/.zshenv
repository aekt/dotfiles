autoload -Uz compinit && compinit

# allow mouse scroll in `less`
export LESS="-r"

# use `fd` in `fzf`
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"

. ~/.asdf/asdf.sh
. ~/.asdf/completions/asdf.bash

# start SSH agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh/.ssh-agent-thing)"
fi
