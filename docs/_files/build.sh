#!/bin/bash
#Building a script that compile SCSS for unity builds
# Author: Fabio Paniconi 30.05.2017
# To run the script just type "./build.sh" in a bash terminal on visual studio code, just make sure you are in the main unity folder (Ex: C:\gitrepos\sd-unity>) or whateve is your git folder.

#Define path to file
# If you want to automate your main css as well you need to point to the right folder.
SPTH='C:/gitrepos/sd-unity/css'

#Declare colors, this only work with printf method not echo
RED='\033[0;31m'
# No Color
NC='\033[0m'
GREEN=`tput setaf 2`

#Declare a variable choice and assing a value
choice=4
#Print to stdout
printf "\n"
printf "${GREEN}1. Compile SASS with ruby\n\n"
printf "2. Build list\n\n"
printf "3. Exit${NC}\n\n"
echo -n "Please, choose an option, 1, 2 or 3: "

#Loop while the variable choice is equal to 4
#bash while loop
while [ $choice -eq 4 ]; do

#read user input
read choice
#bash nested if/else
if [ $choice -eq 1 ] ; then

#Define the variable for each site that contain the command to run
amazonsite="sass --watch --compass sass/skins/amazon-site/:css/skins/amazon-site/;"
kellogg="sass --watch --compass sass/skins/kellogg/:css/skins/kellogg/;"
mercer="sass --watch --compass sass/skins/mercer/:css/skins/mercer/;"
sky="sass --watch --compass sass/skins/sky/:css/skins/sky/;"
omnicom="sass --watch --compass sass/skins/omnicom/:css/skins/omnicom/;"
unilever="sass --watch --compass sass/skins/unilever/:css/skins/unilever/;"

    echo ""
    read -p 'Please, enter a build name: ' buildName
    printf "\n${GREEN}Compiling SASS for: $buildName ${NC}\n"

    if [ $buildName = "amazon-site" ] ; then
        echo ""
        printf "${GREEN}Rewrite @import in main.css with $buildName, path: $SPTH ${NC}\n\n"
        echo "@import url(\"../css/skins/$buildName/$buildName.css\");" >${SPTH}/main.css
        eval $amazonsite
    else
      if [ $buildName = "kellogg" ] ; then
        echo ""
        printf "${GREEN}Rewrite @import in main.css with $buildName, path: $SPTH ${NC}\n\n"
        echo "@import url(\"../css/skins/$buildName/$buildName.css\");" >${SPTH}/main.css
        eval $kellogg
    else
      if [ $buildName = "mercer" ] ; then
        echo ""
        printf "${GREEN}Rewrite @import in main.css with $buildName, path: $SPTH ${NC}\n\n"
        echo "@import url(\"../css/skins/$buildName/$buildName.css\");" >${SPTH}/main.css
        eval $mercer
    else
      if [ $buildName = "sky" ] ; then
        echo ""
        printf "${GREEN}Rewrite @import in main.css with $buildName, path: $SPTH ${NC}\n\n"
        echo "@import url(\"../css/skins/$buildName/$buildName.css\");" >${SPTH}/main.css
        eval $sky
    else
      if [ $buildName = "omnicom" ] ; then
        echo ""
        printf "${GREEN}Rewrite @import in main.css with $buildName, path: $SPTH ${NC}\n\n"
        echo "@import url(\"../css/skins/$buildName/$buildName.css\");" >${SPTH}/main.css
        eval $omnicom
     else
      if [ $buildName = "unilever" ] ; then
        echo ""
        printf "${GREEN}Rewrite @import in main.css with $buildName, path: $SPTH ${NC}\n\n"
        echo "@import url(\"../css/skins/$buildName/$buildName.css\");" >${SPTH}/main.css
        eval $unilever
    else
        echo ""
        printf "${RED}You typed an unnknown skin${NC}\n\n"
        echo -n "Please choose an option, 1,2 or 3: "
        echo ""
        choice=4
    # you need an fi for any else-if you add
    fi
    fi
    fi
    fi
    fi
    fi

else

    if [ $choice -eq 2 ] ; then
        echo ""
        printf "${GREEN}Available build name:${NC}\n\n"
        echo "- amazon"
        echo "- kellogg"
        echo "- mercer"
        echo "- sky"
        echo "- omnicom"
        echo "- unilever"
        echo ""
        echo -n "Please choose an option, 1,2 or 3: "
        echo ""
        choice=4

    else

        if [ $choice -eq 3 ] ; then
           echo "Now leaving build script.."
           exit 1
        else
            printf "\n"
            printf "${RED}You typed a wrong value. Please, choose between 1-3!${NC}\n\n"
            printf "1. Run build\n\n"
            printf "2. Build list\n\n"
            printf "3. Exit\n\n"
            echo -n "Please choose an option, 1,2 or 3: "
            choice=4
        fi
    fi
fi
done