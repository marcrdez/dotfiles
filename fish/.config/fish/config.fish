if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting "$(fish --version)"

alias ..="cd .."
alias ...="cd ../.."

alias l="ls -lF --color"

# use neovim as default
alias vi="nvim"
alias vim="nvim"

# update fzf bindings 
fzf_configure_bindings --directory=\cf --git_status=\cg

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
