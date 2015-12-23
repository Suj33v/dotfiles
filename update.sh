#!/bin/bash

BASE_DIR=$PWD

git submodule foreach git pull origin master

# Install pathogen
mkdir -p vim vim/autoload vim/bundle
cp $PWD/vim-pathogen/autoload/pathogen.vim $PWD/vim/autoload
echo "copied pathogen.vim."
