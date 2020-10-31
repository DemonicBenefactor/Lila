#!/bin/bash

funcS()
{
lynx duckduckgo
}
funcM()
{
expr
}
funcG()
{
exit
}

funcT()
{
while :
do
    echo -n "talk and i will echo you back>"
    read textToSpeech

    case $textToSpeech in
        no) break ;;
        *) espeak "$textToSpeech" --stdout | aplay
            ;;
    esac
done
}

funcP()
{
bastet
}

funcR()
{
espeak "okay,  let's read a book" --stdout | aplay
clear
qpdfview ~/Bookshelf/Essentials_Scratch_v1.pdf
}

funcMenuMain()
{
    while :
    do
        clear
        echo "math) you want to learn"
        echo "book) you want to read" 
        echo "play) you want to play"
        echo "talk) you want to talk"
        echo "go) you want to go"
        echo "i) you want to do what you want"
        echo "shalala) you want to dance"
        echo ""
        echo -n "type what you want to do>"
        read menuInput

        case $menuInput in
            BOOK) funcR
                ;;
            MAT) funcM
                ;;
            PLAY) funcP
                ;;
            TALK) funcT
                ;;
            GO) "NO"
                ;;
            I) funcG
                ;;
            SHAlala) funcS
                ;;
            *) echo "what did you say"
                read
                ;;
        esac
    done
}


#Greeting
espeak "hello Zoe, today we are going to have fun, what do you want to do." --stdout | aplay --quiet

funcMenuMain
