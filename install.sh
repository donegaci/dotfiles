#!/bin/bash


echo "Symlinking your dotfiles"

cd ~/
ln -sf .dotfiles/.tmux.conf
ln -sf .dotfiles/.gitconfig
ln -sf .dotfiles/.bashrc
ln -sf .dotfiles/.zshrc

echo "Installing oh-my-zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ZSH="$HOME/.dotfiles/oh-my-zsh" sh install.sh

if [ ! -d "$HOME/.dotfiles/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
  echo "Downloading powerlevel10k"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.dotfiles/.oh-my-zsh/custom}/themes/powerlevel10k
fi

if [ ! -d "$HOME/.dotfiles/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  echo "Downloading zsh-autosuggestions"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

if [ ! -d "$HOME/.dotfiles/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  echo "Downloading zsh-syntax-highlighting"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

echo "Done."