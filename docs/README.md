# Getting started
> New Machine: Installing required software


## Git

Download and install the latest [GIT client](https://git-scm.com/downloads), this is our version control tool.

### Add new ssh key 

In order to be able to clone any repository, you need to setup a SSH key on youre Machine:

1. Run git bash
2. Run the commnand: eval "$(ssh-agent -s)" in the command line to enable ssh (Windows machine)
3. Run the command: ssh-keygen -t rsa -b 4096 -C "your_email@example.com", a ssh key will be crated
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

1. gem sources --remove https://rubygems.org/
2. gem sources --add http://rubygems.org
3. gem update --system
4. gem sources --remove http://rubygems.org
5. gem sources --add https://rubygems.org

This worked fine for me on last 2 msi laptop.

### Ruby gems

Open a ruby command line and run:

1. Gem install sass
2. Gem install zurb-foundation
3. Gem install compass
4. Gem install breakpoint

## Node js

Download and install the reccomended version of [node.js](https://nodejs.org/en/). Node is running all the grunt task, bower and other utility we use in most project.

If the project you working on does require grunt, bower or any other npm:

1. Run: Npm install (this will install all the package necessary if you already have a package.json file in the project root)
2. Run: Bower install (this will install all the package necessary if you already have a bower.json file in the project root)

> If you need any npm pakage that isn't in the json file, just run: npm install 'package-name'. An example below with bless-css pakage.

### Bless css for IE9

1. Run: npm install -g bless@3.0.3
2. Go to the folder where the actual css is, like: C:\sddev\vs2008\c3v4\c3v4\sass
3. Run: blessc formbuilder.css formbuilder_split.css

> Note: Do not install v4 of bless, at the moment does have plenty of bugs. Probably worth a try now as v4 is out frorm some time now (03/01/2017)

### NPM options

NPM does have some options when installing package, I will cover the very basic:

1. npm install -g 'pakage-name' (the -g flag stand for global so the pakage will be installed as global)
2. npm install -g 'pakage-name@3.0.0 (the flag @ allow us to install a very specific version of the pakage)

> [NPM flags and other options - article](https://docs.npmjs.com/cli/install)


## Visual Studio Express

Download and install [Visual studio Express](https://www.visualstudio.com/vs/visual-studio-express/)

### Run a project

1. From the menu select: FILE >>> Open Project, then load the proper file with the .sln extension.
2. Start the project clicking on the RUN button on the top bar.

## VPN

To login on any of our project you need a virtual private connection (VPN).
As it stand for now we still use CISCO VPN on windows 10 anniversary Updates using some hacks from the web, as the software isn't supported anymore by recent Windows.

Download: [cisco_5.0.7_vpn64bit](https://drive.google.com/file/d/0B46U1Qcuo72jSjY2c2tCbTdacTg/view?usp=sharing)

> Before Installing the CISCO VPN software please read below how to hack it.

### CISCO VPN hacks

Read this [article]((http://www.firewall.cx/cisco-technical-knowledgebase/cisco-services-tech/1165-cisco-vpn-client-windows-10-anniversary-update-break-and-fix.html) on how to fix it.


# Basic GIT command line

1. Git init [project name] (Creates a new local repository with the specified name)
2. Git clone [url] (Downloads a project and its entire version history)
3. Git add [file] (Snapshots the file in preparation for versioning), comm use is: git add -A, to add all modified files
4. git commit -m "[descriptive message]" (Records file snapshots permanently in version history)
5. Git feth (fetch to update your remote-tracking branches under refs/remotes/remote/)
6. Git pull (Download and incorporate changes)
7. Git push (Uploads all local branch commits to GitHub/GitLab or whatever you are using)
8. Git branch (Lists all local branches in the current repository)
9. Git checkout [branch-name] (Switches to the specified branch and updates the working directory)
10. Git gc (Runs a number of housekeeping tasks within the current repository, such as compressing file revisions to reduce disk space and increase performance and removing unreachable objects which may have been created from prior invocations of git add.)

> [Git cheat-sheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)

# SASS command

Some sass command to run css build. Just replace the brand word with the actual brand name you want to build (kellogg as an example)

## Unity build local

sass --watch --compass sass/skins/brand/:css/skins/brand/

Admin

sass --watch --compass sass/skins/brand/brandAdmin.scss:css/skins/brand/brandAdmin.css

Build all (site + admin)

sass --watch --compass sass/skins/brand/:css/skins/brand/

## Unity build live

C:\gitrepos\htmlunity>grunt --skin=brand

## Specific brand build

### Castrol

sass --watch --compass sass/:css/

### C3

c:/sddev/vs2008/c3v4/c3v4/sass --compass --update .

or Grunt:

NOTE: IMPORTANT! DO NOT USE GRUNT ON A VISUAL STUDIO 2008, "node_modules" folder does break visual studio 2008 debug!
NOTE2: If node folder contain only split package it DOESN'T break visual studio 2008 debug.

c:/sddev/vs2008/c3v4/c3v4/ grunt

To split css:
c:/sddev/vs2008/c3v4/c3v4/sass/blessc formbuilder.css formbuilder_split.css    ---> Make sure to be in the sass folder ot it won't work.
