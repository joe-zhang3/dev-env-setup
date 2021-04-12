#!/bin/bash

echo "Check and see if homebrew is installed"

if ! command -v brew &> /dev/null
then
    echo "brew could not be found, install it for now"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "install autojump"
brew install autojump

echo "install tig"
brew install tig

echo "install pyenv"
brew install pyenv

echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "copy .zshrc file to current user"
sed "s/joezhang/$(whoami)/g" zshrc > ~/.zshrc


echo "install powerlevel10k"
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

echo "install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo "install zsh-sync-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

source ~/.zshrc

##install vim related plugins

echo "install vim with homebrew"
brew install vim 

echo "install vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc ~/.vimrc


