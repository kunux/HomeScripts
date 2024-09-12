#!/bin/bash

echo "ldv,dml,mlv,sml,lmz,sml"
echo "Hello, test from git project !"
read -pr "What is your name?" NAM
	echo "Hello, ${NAM}!"
	echo "executed from githidddddddub project......"


 confirm() {
    echo -n "Continue? y or n? "
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
confirm
