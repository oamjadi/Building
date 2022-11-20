#!/bin/bash

#Please note this was not created by me. This is an exact copy of what was done by Jonny Langefeld with just some comments of my own.

#The contents of this were copied from https://gist.github.com/jonnylangefeld/3c6ecdcc13f15abbbc5297f689421440#file-configure-terminal-sh .
#The original youtube video can be found here: https://www.youtube.com/watch?v=48fmUGCIjc0
#I made some modification to comment out the brew install part, and I downloaded iterm from the website so also commenting out that part.
#After doing this open iterm2, go to preferences, click on Profiles>Text, search the font SourceCodePro and in Colors import the deep blue color configuration and then select it and restart the terminal. 
#In the future as I continue to customize my terminal I will add to this. Next I want to do more keymapping for my vim to be able to code faster.

#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew cask install iterm2

#Start of the active script
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p ~/Library/Fonts
curl -sLo "$HOME/Library/Fonts/Meslo for Powerline.ttf" https://github.com/Falkor/dotfiles/raw/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf

brew install fzf zsh-syntax-highlighting
/usr/local/opt/fzf/install --all

git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
curl -sLo "$HOME/Desktop/shades-of-blue.itermcolors" https://gist.githubusercontent.com/jonnylangefeld/3c6ecdcc13f15abbbc5297f689421440/raw/540097894c7ddf483a4d9e09222a3481e207aab4/shades-of-blue.itermcolors
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

curl -sLo "$HOME/.zshrc" https://gist.github.com/jonnylangefeld/3c6ecdcc13f15abbbc5297f689421440/raw/23dc4143e85aa35399d7ae6d248d69c25f76e5dd/.zshrc

compaudit | xargs chmod g-w,o-w

