#!/bin/bash

funcScratch()
{
    scratch
     geany
     thonny
}
funcMenu()
{
while :
do
    clear
    echo "hello!"
    echo "q) if you want to quit"
    echo "l) if you want to go to school"
    echo "h) if you want to know my name"
    echo ""
    echo -n "what>"
    read vsghhyy

    case $vsghhyy in
        q) echo "okay"
            break
            ;;
        l) funcScratch
            ;;
        h) echo "i'm Sparks"
            read
            ;;
        *) echo "?"
            read
            ;;
    esac
done
}
funcMenuNain()
{


    clear
    echo "s) Sparks with you."
    echo ""
    echo -n " >"
    read menuInput

    case $menuInput in
        s) funcMenu
            ;;
        *) echo "no"
            read
            ;;
    esac

}

funcMenuNain
