#!/bin/bash

funcMenuMain()
{
    while :
        do
        clear
        echo "type in q to quit"
        echo ""
        echo -n "talk to Lila > "
        read menuInput


        case $menuInput in
        hi Lila) "hello"
            read
            ;;
        how are you) "i'm good"
            read
            ;;
        what are you doing) "talking with you"
            read
            ;;
        what is 1001 - 106) "895"
            read
            ;;
        my mom is crazy) "WHAT..."
            read
            ;;
            did you eat) "no"
            read
            ;;
        dad is a poo poo) "HA HA HA your dad is a poo poo"
            read
            ;;
        my name is Zoe) "well my name is Lila"
            read
            ;;
        dogs or cats is your best) "dogs"
            read
            ;;
        my best coler is pink) "i like pink too but blu more"
            read
            ;;
        i have a thing for you) "what is it"
        read
            ;;
        is a book) "thanks"
            read
            ;;
        i love you) "i love you too"
            read
            ;;
        q) "okay"
            break
            ;;
    esac
done
}
