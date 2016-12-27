# Overview
This is a personal dotfiles project and for MacOS only now.

# Preparation
1.  Install Xcode Command Line Tools(For we need gcc).  
    Just type following command in terminal:  
    
        #> xcode-select --install
    
    A Install window will pop up if you need install it or you will get message like this:  
    
        xcode-select: error: command line tools are already installed, use "Software Update" to install updates

# How to use
    git clone https://github.com/magus0219/dotfiles ~/.dotfiles; cd ~/.dotfiles; source ./setup.sh

# Design pattern
1.  Easy use with single entry.
2.  Separate heavy installations and login setups by setup.sh and .zshrc  

# Thanks
This repo is referred to file organizations of [dotfiles of driesvints][1], thanks for his great job.

[1]:https://github.com/driesvints/dotfiles
