#!/bin/bash

# Requirements
# 
# archlinux
# git
# 


# Variables
github_adress="https://github.com/RoverCube/dotfiles.git"

# 
if [[ $1 == "" ]] then
echo -e "Specify your .config directory!
    by ./install_script.sh \e[4mDIRECTORY\e[24m\b
    examples:
        - ./install_script.sh .config
        - ./install_script.sh ./
        - ./install_script.sh /home/\e[4mYOURUSER\e[24m/.config"
exit
fi

echo "directory chosen $1 make sure that is your .config"

# Warning
echo -e "------------------WARNING------------------ \n
\e[4mPLEASE MAKE SURE TO READ EVERYTHING!\e[24m 
\nThis script may or may not cause irreversable damage to your machine!
please proceed with caution ;]\n"
sleep 1

echo "Chose
[1] List programs to be installed
[2] Chose programs and dotfiles to install
[3] Install programs and dotfiles
[4] Install only programs
[5] Install only dotfiles
[6] Cancel instalation"


# Agreement
#read agreement

#if [[ "$agreement" == "y" ]]; then 
#    # Installing
#    echo "Initializing install script...";
#    
#    mkdir dotfiles-rovercube/
#    cd dotfiles-rovercube/
#    git clone $github_adress
#    wait
    
    
    
    
#else 
#    # Calceled Instalation
#	echo "Instalation calceled";
#fi
