#!/bin/bash

funcRead()
{
    espeak "Great,  let us read a book about scratch." --stdout | aplay
    clear
    qpdfview ~/Bookshelf/Essentials_Scratch_v1.pdf
}

funcProgramming()
{
    scratch
}

funcGame()
{
    bastet
}

funcTalk()
{
    while :
    do
        echo -n "Please type something and press enter or q to quit>"
        read textToSpeech
    
     case $textToSpeech in
            q) break ;;
            *) espeak "$textToSpeech" --stdout | aplay
                ;;
        esac
    done
}


funcMenuMain()
{
    while :
    do

        clear
        echo "1) Read a book"
        echo "2) Do some programming"
        echo "3) Play a game"
        echo "4) Talk"
        echo "5) Quit"
        echo ""
        echo -n "Type in your choice>"
        read menuInput

        case $menuInput in
            1) funcRead
                ;;
            2) funcProgramming
                ;;
            3) funcGame
                ;;
            4) funcTalk
                ;;
            5) echo "good bye"
                break
                ;;
            *) echo "WHAT..."
                read
                ;;
        esac
    done
}


#Greeting
espeak "Hello Zoe, welcome back, what would you like to do right now."  --stdout | aplay --quiet

funcMenuMain
