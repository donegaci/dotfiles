#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Symlinking your dotfiles"

cd ~/
ln -sf dotfiles/.tmux.conf
ln -sf dotfiles/.gitconfig
ln -sf dotfiles/.bashrc
ln -sf dotfiles/.zshrc
ln -sf dotfiles/.p10k.zsh


cd "$SCRIPT_DIR"
if [ ! -f "$HOME/dotfiles/.oh-my-zsh/oh-my-zsh.sh" ]; then
  echo "Installing oh-my-zsh"
  export ZSH="$HOME/dotfiles/.oh-my-zsh"
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

if [ ! -d "$HOME/dotfiles/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  echo "Downloading powerlevel10k"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/dotfiles/.oh-my-zsh/custom/themes/powerlevel10k
fi

if [ ! -d "$HOME/dotfiles/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
  echo "Downloading zsh-autosuggestions"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/dotfiles/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

if [ ! -d "$HOME/dotfiles/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
  echo "Downloading zsh-syntax-highlighting"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/dotfiles/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

echo "Done. Please restart your terminal or run 'exec zsh' to apply changes."