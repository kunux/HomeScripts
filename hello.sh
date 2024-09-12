#!/bin/bash

#_____ Functions COLORS _______________________________________________________
REVERSE_B () {          echo -e "\033[1;7m $@ \c"; nocol;}      # REVERSED BOLD POUR DEV/DEBUG


#_____ Section 1 _______________________________________________________
REVERSE_B "________Strating GIT Installation Script_______"
echo -e ""

#_____ functions  _______________________________________________________
CONFIRM() {
    echo -n "Do you want to ontinue? y or n? "
    read REPLY
    case $REPLY in
    [Yy]) echo 'yup y' ;; # you can change what you do here for instance
    [Nn]) echo 'nope n' ;;
    # Here are a few optional options to choose between
    # 1. Repeat the question
    *) confirm ;;

    # 2. ignore
    # *) ;;

    # 3. Exit terminal
    # *) exit ;;

    esac
    # REPLY=''
}

#_____ Main Script execution  _______________________________________________________
confirm
