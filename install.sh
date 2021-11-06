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

echo "Done."