#!/bin/bash

echo "Symlinking your dotfiles"

cd ~/
ln -sf .dotfiles/.tmux.conf
ln -sf .dotfiles/.gitconfig
ln -sf .dotfiles/.bashrc
ln -sf .dotfiles/.zshrc

echo "Done."