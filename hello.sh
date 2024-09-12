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
        *) CONFIRM ;;
        esac
        # REPLY=''
    }

#_____ Main Script execution  _______________________________________________________
CONFIRM
print_section_NC "Fetched Variables for $1 from: ... init.sh \& KEYCHAIN ..."
        if [ $MOUNT=true ]; then
            echo "MOUNT:${MOUNT} is the value for USER:${ACCOUNT} and SERVER:${SERVER}"
            GREY_B "PASSWORD:${PASS2}"
            echo "mounting the share by calling function"
            else
               error "mount is false ==  $MOUNT"
        fi
