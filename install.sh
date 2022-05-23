#!/bin/sh

#Xdg declaration
##############################
xdg=${XDG_DATA_HOME:-${HOME}/.local/share}
DIR="${xdg}/icons/pixelitos/"

#question
#############################
        echo "Do you want to install 'Pixelitos icon theme'? Y/n"
        read a

#if yes
#############################
        if [ x$a = x"Y" ]
        then
            echo "Creating theme directory: ${DIR}"
            mkdir -p "${DIR}"
            echo "Installing 'pixelitos icon theme'..."
            cp -r ./* "${DIR}"
            echo "done"
        
#if no
##############################
        elif [ x${a} = x"n" ]
            then
            echo "ok, operation cancelled"

fi
