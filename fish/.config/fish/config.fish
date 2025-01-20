if status is-interactive
    # Commands to run in interactive sessions can go here
end

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

set fish_greeting "$(fish --version)"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lF --color"

# use neovim as default
alias vi="nvim"
alias vim="nvim"

# tmux
alias topen="tmux a -t"
alias tlist="tmux ls"
alias tnew="tmux new -s"

# eza overriding ls
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# update fzf bindings 
fzf_configure_bindings --directory=\cf --git_status=\cg

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
