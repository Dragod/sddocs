# Getting started
> New Machine: Installing required software


## Git

Download and install the latest [GIT client](https://git-scm.com/downloads), this is our version control tool.

### Add new ssh key 

In order to be able to clone any repository, you need to setup a SSH key on youre Machine:

1. Run git bash
2. Run the commnand: ```eval "$(ssh-agent -s)"``` in the command line to enable ssh (Windows machine, sometimes you don't need to run this command, just go to next step)
3. Run the command: ```ssh-keygen -t rsa -b 4096 -C "your_email@example.com"```, a ssh key will be crated
4. Now search for the folder: c\user\whatevername\.ssh and find the file id_rsa.pub
5. Open that file with Word Pad and copy the content.
6. Open https://gitlab.screendragon.net/profile/keys
7. Add a new key with a new title
8. Copy the content
9. Save

## Ruby

Download and install the latest [Ruby installer](https://rubyinstaller.org/downloads/), we still need that to run sass for now. We may change to Node in the near future.

PS: remember to add global variable while using ruby installer, very important on windows machine to check the checkbox in the installer.

### Windows SSH issue

> [https://github.com/rubygems/rubygems/issues/1736](https://github.com/rubygems/rubygems/issues/1736)

Quick reference, just in case it will be removed from the web:

I noticed this problem with a fresh installation on windows using the ruby-installer.
Another (imho better workaround) is to replace the https source temporary, run gem update --system and then switch back to https.

1. ```gem sources --remove https://rubygems.org/```
2. ```gem sources --add http://rubygems.org```
3. ```gem update --system```
4. ```gem sources --remove http://rubygems.org```
5. ```gem sources --add https://rubygems.org```

This worked fine for me on last 2 msi laptop.

### Ruby gems

Open a ruby command line and run:

1. ```gem install sass```
2. ```gem install zurb-foundation```
3. ```gem install compass```
4. ```gem install breakpoint```

## Node js

Download and install the reccomended version of [node.js](https://nodejs.org/en/). Node is running all the grunt task, bower and other utility we use in most project.

If the project you working on does require any of the above mentioned pakage, run:

1. npm install && bower install (this will install all the package necessary if you already have a package.json & bower.json file in the project root)

> If you need any npm pakage that isn't in the json file, just run: npm install 'package-name'. An example below with bless-css pakage.

### Bless css for IE9

1. Run: ```npm install -g bless@3.0.3```
2. Go to the folder where the actual css is, like: C:\sddev\vs2008\c3v4\c3v4\sass
3. Run: blessc formbuilder.css formbuilder_split.css

> Note: Do not install v4 of bless, at the moment does have plenty of bugs. Probably worth a try now as v4 is out frorm some time now (03/01/2017)

### NPM options

NPM does have some options when installing package, I will cover the very basic:

1. ```npm install -g 'pakage-name'``` (the -g flag stand for global so the pakage will be installed as global)
2. ```npm install -g 'pakage-name@3.0.0``` (the flag @ allow us to install a very specific version of the pakage)

> [NPM flags and other options - article](https://docs.npmjs.com/cli/install)


## Visual Studio Express

Download and install [Visual studio Express](https://www.visualstudio.com/vs/visual-studio-express/)

### Run a project

1. From the menu select: FILE >>> Open Project, then load the proper file with the .sln extension.
2. Start the project clicking on the RUN button on the top bar.

### Dependencies

Sometimes project do require additional dependencies such as DLL. If you get an error while trying to build a solution this may be your problem.
To solve this you can use the Pakage Manager inside visual studio.

How to handle this:

1. The Package Manager Console in Visual Studio lets you use NuGet PowerShell commands to find, install, uninstall, and update NuGet packages. Using the Console is necessary if you want to work with packages without having a solution open, and is required in cases where the Package Manager UI does not provide a way to perform an operation. Note, however, that all operations can be done with the NuGet CLI. In all cases, you open the Console in Visual Studio through the Tools > NuGet Package Manager > Package Manager Console command.
2. Usually the error reported during the build does tell you what package is missing. Search the package from [nuget website](https://www.nuget.org/packages)
3. Open the pakage manager console and type in the package you want to download. Example: Install-Package DocumentFormat.OpenXml 
4. Press ENTER, and it will download it for you.
5. Once it's done, repeat this until you got all the dependencies fixed.
6. Start your solution again, you should be able to run it now.

## VPN

To login on any of our project you need a virtual private connection (VPN), using a third party software.

### CISCO VPN

Cisco System VPN client is an old, free, VPN software no longer supported by recent windows, however with some patience we can make it work. Only downside is, CISCO VPN can only handle one VPN at time.

Download: [cisco_5.0.7_vpn64bit](https://drive.google.com/file/d/0B46U1Qcuo72jSjY2c2tCbTdacTg/view?usp=sharing)

> Before Installing the CISCO VPN software please make sure to install [Sonic Wall](http://help.mysonicwall.com/Applications/vpnclient/) then read below how to hack it for Windows 8-8.1-10, it work under latest anniversay update as well

#### CISCO VPN hacks

Read this [article]((http://www.firewall.cx/cisco-technical-knowledgebase/cisco-services-tech/1165-cisco-vpn-client-windows-10-anniversary-update-break-and-fix.html) on how to fix it.

### Shrew Soft VPN

Shrew Soft VPN is similar to CISCO, but not as old. Unfortunately, even this software is no longer in development since 2013 but it is supported by lastest windows version, as well as handling multiple VPN connection.

Download: [Shrew Soft_2.2.2](https://www.shrew.net/download/vpn)

You can find an in depth guide for Shrew Soft in the [Screendragon Desk](http://helpdesk.screendragon.com/support/solutions/articles/12000002478-shrewsoft-vpn-configuration). If you don't have access please ask Dave O'Connell.

# Basic GIT command

1. ```git init [project name]``` (Creates a new local repository with the specified name)
2. ```git clone [url]``` (Downloads a project and its entire version history)
3. ```git add [file]``` (Snapshots the file in preparation for versioning), comm use is: git add -A, to add all modified files
4. ```git commit -m "[descriptive message]"``` (Records file snapshots permanently in version history)
5. ```git feth``` (fetch to update your remote-tracking branches under refs/remotes/remote/)
6. ```git pull``` (Download and incorporate changes)
7. ```git push``` (Uploads all local branch commits to GitHub/GitLab or whatever you are using)
8. ```git branch``` (Lists all local branches in the current repository)
9. ```git checkout [branch-name]``` (Switches to the specified branch and updates the working directory)
10. ```git gc``` (Runs a number of housekeeping tasks within the current repository, such as compressing file revisions to reduce disk space and increase performance and removing unreachable objects which may have been created from prior invocations of git add.)

> [Git cheat-sheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)

# SASS command

Some sass command to run css build. Just replace the brand word with the actual brand name you want to build (kellogg as an example)

## Unity build local

```sass --watch --compass sass/skins/brand/:css/skins/brand/```

Admin

```sass --watch --compass``` ```sass/skins/brand/brandAdmin.scss:css/skins/brand/brandAdmin.css```

Build all (site + admin)

```sass --watch --compass sass/skins/brand/:css/skins/brand/```

## Unity build live

C:\gitrepos\htmlunity> ```grunt --skin=brand```

## Specific brand build

### Castrol

```sass --watch --compass sass/:css/```

### C3

c:/sddev/vs2008/c3v4/c3v4/```sass --compass --update .```

or Grunt:

NOTE: IMPORTANT! DO NOT USE GRUNT ON A VISUAL STUDIO 2008, "node_modules" folder does break visual studio 2008 debug!
NOTE2: If node folder contain only split package it DOESN'T break visual studio 2008 debug.

c:/sddev/vs2008/c3v4/c3v4/ ```grunt```

To split css:
c:/sddev/vs2008/c3v4/c3v4/sass/```blessc formbuilder.css formbuilder_split.css```    ---> Make sure to be in the sass folder ot it won't work.

# Code Editors

## Sublime Text

Download [Sublime text 3](https://www.sublimetext.com/3)

### Shortcuts

ctrl + alt + uparrow/downarrow - create a new editable point above/below cursor

ctrl + d - with selection - select next instance of a selection and create a new edit point

ctrl + shift + d - duplicate current line or selection 

shift + ctrl  + uparrow/downarrow - move current line up/down

alt + shift + w wrap selection in a tag

ctrl + j - concatenate lines

ctrl + shift + m - select to brackets

ctrl + shift + j - select to indentation

ctrl + / - comment/uncomment

ctrl + r - search through classes / elements

## Visual studio code

Download [Visual studio code](https://code.visualstudio.com/)

### Shortcuts

[Show PDF](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)

### Running IIS in Visual studio code

> Requirements: Windows Machine (Sorry not for Linux & OSX), IIS Express installed

Download and intall: [IIS Express](https://marketplace.visualstudio.com/items?itemName=warren-buckley.iis-express)

After installing the package you need to change the port number. 
Port number setting can be set in .vscode/iisexpress.json if you wish to override random port number.
You need the following file added ```.vscode/iisexpress.json``` and then you can set the port setting like so:

```json
{
    "port": 49797
}
```
An example of a json config:

```json
{
  "port": 49797,
  "path": "c:\\gitrepos\\sd-unity",
  "clr": "v4.0",
  "protocol": "http"
}
```

Keyboard shortcuts: 

Start site (Ctrl+F5)

Stop site (Shift+F5) 

Restart site (Ctrl+Shift+F5)

### Automate Bash script to run Sass and rewrite main.css: Build.sh

Download: [Build.sh](https://drive.google.com/file/d/0B46U1Qcuo72jcU80SDcyUFlyX3M/view?usp=sharing)

```bash
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
```


