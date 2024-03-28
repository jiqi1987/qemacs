#!/bin/bash

sudo apt update
sudo apt -y install emacs-nox
sudo apt -y install net-tools binutils g++ cmake
sudo apt -y install bash-completion
sudo apt -y install git

source ./git-completion.bash

cd file/lisp/
git clone https://github.com/dominikh/go-mode.el.git
cd ../..

rm -rf ~/.emacs.d
cp -r file ~/.emacs.d
cp init ~/.emacs
