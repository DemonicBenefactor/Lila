#!/bin/bash

funcOldies()
{
    espeak "golden time" --stdout | aplay
    mplayer http://listen.011fm.com:9000/stream14
}

funcE()
{
    exit
}

funcPunk()
{
    espeak "punk time" --stdout | aplay
    clear
    mplayer http://stream.laut.fm/12xu

}

funcClassical()
{
    espeak "classical time" --stdout | aplay
    clear
    mplayer http://ais-edge12-113fm-dal04.cdnstream.com/1864_128
}

funcMenuMain()
{
    while :
    do
        clear
        echo "Zoe give's 10 for classical music"
        echo "Nina give's 11 for punk"
        echo "Earl give's 5 for golden oldies"
        echo "you will quit if you type in exit"
        echo ""
        echo -n "type in you'r password > "
        read menuInput

        case $menuInput in
            zoe) funcClassical
                ;;
            nina) funcPunk
                ;;
            earl) funcOldies
                ;;
            exit) funcE
                break
                ;;
            *) echo "sorry, we don't tell Zoe's password's"
                read
                ;;
        esac
    done
}


#Greeting
espeak "hello, pick a music or type in exit to quit" --stdout | aplay --quiet

funcMenuMain
