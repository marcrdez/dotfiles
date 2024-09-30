RED='\033[0;31m'
NC='\033[0m' # No Color

brew_install() {
  echo "\nInstalling $1"
  if brew list $1 &>/dev/null; then
    echo "${1} is already installed"
  else
    brew install $1 && echo "$1 installed"
  fi
}

brew_install "nvim"
brew_install "tmux"
brew_install "git"
brew_install "ripgrep"
brew_install "stow"
brew_install "fish"
brew_install "fisher"

echo "\n${RED}Remember to install a Nerd Font (https://www.nerdfonts.com/font-downloads)${NC}"
