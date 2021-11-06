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

echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.dotfiles/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Done."