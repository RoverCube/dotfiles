#!/bin/bash

# Requirements
# 
# archlinux
# git
# 


# Variables
github_adress="https://github.com/RoverCube/dotfiles.git"
p_list_size=3
program_list=(
    [0]="rofi"
    [1]="swww swww-daemon"
    [2]=""
    [3]="nano"
)
program_activated=(
    [0]="X"
    [1]="0"
    [2]="0"
    [3]="X"
)


# $1 Thing
if [[ $1 == "" ]] then
echo -e "Specify your \e[4mHOME\e[24m directory!
    by ./install_script.sh \e[4mDIRECTORY\e[24m\b
    examples:
        - ./install_script.sh /home/\e[4mYOURUSER\e[24m
        - ./install_script.sh \e[4m~\e[24m"
exit
fi

clear

# Warning
echo -e "directory chosen $1\n
\e[4mPLEASE MAKE SURE TO READ EVERYTHING!\e[24m
please proceed with caution ;]"

menu() {
    echo "
--- Instalation Menu ---
[1] List programs to be installed
[2] List commands to be used
[3] Chose programs and dotfiles to install
[4] Preserve old configs
[5] Install programs and dotfiles
[6] Install only programs
[7] Install only dotfiles
[8] Cancel instalation"
    
    read menu1
    options $menu1
    echo -e "\n"
}

app_selection() {
    echo "--- select programs ---
    exit - go back"
    for x in $(seq 0 $p_list_size ); do
        echo "$x. [${program_activated[$x]}]${program_list[$x]}"
    done
    
    read selection
    
    if [[ $selection == "exit" ]]; then
        menu
    fi
    for x in $(seq 0 $p_list_size ); do
        if [[ $x == $selection ]]; then
            if [[ {program_activated[$x]} == X ]]; then
                program_activated[$x]="0"
            else
		echo #x
                program_activated[$x]="X"
            fi
        fi
    done
    
    app_selection
}

options() {
    clear
    # ------------------ 1 ------------------
    if [[ $1 == "1" ]]; then
        echo -e "--- Programs ---\n"
        for x in $(seq 0 $p_list_size ); do
            echo "[${program_activated[$x]}]${program_list[$x]}"
        done
        echo -e "\n"
        menu
    # ------------------ 2 ------------------
    elif [[ $1 == "2" ]]; then
        echo "WIP"
        menu
    # ------------------ 3 ------------------
    elif [[ $1 == "3" ]]; then
        app_selection
    # ------------------ 4 ------------------
    elif [[ $1 == "4" ]]; then
        echo "WIP"
        menu
    # ------------------ 5 ------------------
    elif [[ $1 == "5" ]]; then
        echo "WIP"
        menu
    # ------------------ 6 ------------------
    elif [[ $1 == "6" ]]; then
        echo "WIP"
        menu
    # ------------------ 7 ------------------
    elif [[ $1 == "7" ]]; then
        echo "WIP"
        menu
    # ------------------ 8 ------------------
    elif [[ $1 == "8" ]]; then
        echo "Bye"
        exit
    # ---------------- ERROR ----------------
    else
        echo "unknown input please try again"
        menu
    fi
}


menu
