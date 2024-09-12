#!/bin/bash

#_____ Functions COLORS _______________________________________________________
nocol () {              echo -e "${NC} $@ ";}                   # NOCOLOR
REVERSE_B () {          echo -e "\033[1;7m $@ \c"; nocol;}      # REVERSED BOLD POUR DEV/DEBUG
GREY_B () {             echo -e "\e[1;90m $@ \c"; nocol;}       # BOLD GREY POUR DEV/DEBUG

#_____ functions  _______________________________________________________
CONFIRM() 
{
        echo -n "Do you want to ontinue? [y]es or [n]o ?"
        read REPLY
                case $REPLY in
                [Yy])
                        echo "we are in yes we can continue with new value"
                        export | grep PATH
                        echo "is it expoirted?"
                        ;; # you can change what you do here for instance
                [Nn])
                        echo "exiting"
                        exit 0;;
                *)
                        CONFIRM ;;
                esac
}

#_____ Section 1 _______________________________________________________
REVERSE_B "________Strating GIT Installation Script_______"
echo -e ""

#_____ Main Script execution  _______________________________________________________
CONFIRM
nocol
GREY_B "Fetched Variables for $1 from: ... init.sh \& KEYCHAIN ..."
        if [ $MOUNT=true ]; then
            echo "MOUNT:${MOUNT} is the value for USER:${ACCOUNT} and SERVER:${SERVER}"
            GREY_B "PASSWORD:${PASS2}"
            echo "mounting the share by calling function"
            else
               error "mount is false ==  $MOUNT"
        fi
