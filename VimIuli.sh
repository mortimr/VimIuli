#! /bin/sh

clear
echo """
 ██▒   █▓ ██▓ ███▄ ▄███▓ ██▓ █    ██  ██▓     ██▓
▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██▒ ██  ▓██▒▓██▒    ▓██▒
 ▓██  █▒░▒██▒▓██    ▓██░▒██▒▓██  ▒██░▒██░    ▒██▒
  ▒██ █░░░██░▒██    ▒██ ░██░▓▓█  ░██░▒██░    ░██░
   ▒▀█░  ░██░▒██▒   ░██▒░██░▒▒█████▓ ░██████▒░██░
   ░ ▐░  ░▓  ░ ▒░   ░  ░░▓  ░▒▓▒ ▒ ▒ ░ ▒░▓  ░░▓
   ░ ░░   ▒ ░░  ░      ░ ▒ ░░░▒░ ░ ░ ░ ░ ▒  ░ ▒ ░
     ░░   ▒ ░░      ░    ▒ ░ ░░░ ░ ░   ░ ░    ▒ ░
      ░   ░         ░    ░     ░         ░  ░ ░
     ░
"""
sleep 2

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.vim/colors
cp ./wombat256.vim ~/.vim/colors/
cp .vimrc ~
cd
vim -c PlugInstall -c qall
clear
echo "Enjoy"
