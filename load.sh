#!/usr/bin/env bash
echo '[ -f ~/dotfiles/.zsh ] && source ~/dotfiles/.zsh ' >> ~/.zshrc
echo '[ -f ~/dotfiles/.zsh ] && source ~/dotfiles/.zsh ' >> ~/.zshrc

echo '[ -f ~/dotfiles/.profile ] && source ~/dotfiles/.profile ' >> ~/.profile
echo '[ -f ~/dotfiles/.aliases ] && source ~/dotfiles/.aliases ' >> ~/.aliases

echo 'source ~/dotfiles/.nvimrc ' >> ~/.config/nvim/init.vim
echo 'source ~/dotfiles/.vimrc ' >> ~/.vimrc

#echo "source ~/dotfiles/.zsh" >> ~/.zshrc
#echo "source ~/dotfiles/.nvimrc" >> ~/.config/nvim/init.vim
#echo "source ~/dotfiles/.profile" >> ~/.profile
#echo "source ~/dotfiles/.aliases" >> ~/.aliases
##echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf


