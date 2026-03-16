if status is-interactive
    # Commands to run in interactive sessions can go here
end

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

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

# update fzf bindings 
fzf_configure_bindings --directory=\cf --git_status=\cg

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"

# run fnm on init
fnm env | source

# pnpm
set -gx PNPM_HOME /Users/marc/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# start starship prompt if installed
if command -q starship
    starship init fish | source
end
