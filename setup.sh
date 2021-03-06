#!/bin/bash

echo 'Start init new mac...'

basepath=$(cd `dirname $0`; pwd)
targetpath=$(cd ~; pwd)
echo "Dotfiles in $basepath"
echo "Target directory(Home of current user) is $targetpath"

# Step 1. Install homebrew
echo 'Install homebrew...'
if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew formulas
echo 'Update brew...'
brew update

# Step 2. Install homebrew bundle & formulas
echo 'Install homebrew bundle & formulas...'
brew tap Homebrew/bundle
brew bundle

# Step 3. Setup zsh & on-my-zsh
echo 'Setup zsh & on-my-zsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Step 4. Get extra scripts
echo 'Download z.sh...'
curl -fsSL https://raw.githubusercontent.com/rupa/z/master/z.sh > ~/z.sh

echo 'Download vim bundle...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
curl -fsSL https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim > ~/.vim/colors/solarized.vim

# Step 5. link dotfiles
echo 'Link dotfiles...'

dotfiles=(
.zshrc
.path.zsh
.alias.zsh
.ssh_config
.vimrc
.gitconfig
.login_actions.zsh
)

for file in $dotfiles; do
    echo $file
    rm -rf $targetpath/$file
    echo "Link $file to home directory..."
    ln -s $basepath/$file $targetpath/$file
done

# Special links
ln -s ~/.ssh/config ~/.ssh_config

# Install vim plugin
echo 'install vim plugin...'
vim +PluginInstall +qall

# Step 6. run zshrc
source ~/.zshrc
