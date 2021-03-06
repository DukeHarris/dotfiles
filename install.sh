#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=(config/devilspie2 bashrc config/terminator config/sublime-text-3/Packages "config/sublime-text-3/Installed Packages")    
# list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks

for ((i = 0; i < ${#files[@]}; i++))
do
     echo "${files[$i]}"
     mv ~/."${files[$i]}" ~/dotfiles_old/
     ln -s $dir/"${files[$i]}" ~/."${files[$i]}"

done
