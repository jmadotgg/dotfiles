if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""
end

export PATH="$HOME/.cargo/bin:$PATH"
ssh-add "$HOME/.ssh/id_ed25519_acrolinx" &> /dev/null

# pyenv - https://gist.github.com/empeje/fd7b654b2e57e33f74b833fedcd5f51e
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
pyenv init - | source
pyenv rehash >/dev/null ^&1


alias ls="exa --all --long --modified --no-user --git"
alias cat="bat --plain"
alias v="nvim"
alias nv="nvim"
alias tomcat@9="catalina"
alias n="fnm use"

set -gx GPG_TTY (tty)

# Node
eval (fnm env) 


# TERM for tmux
# set TERM ansi
