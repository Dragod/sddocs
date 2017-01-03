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

### Installing required gems

Open a ruby command line and run:

1. Gem install sass
2. Gem install zurb-foundation
3. Gem install compass
4. Gem install breakpoint

## Node js

Download and install the reccomended version of [node.js](https://nodejs.org/en/)

### Bless css for IE9

1. Run: npm install -g bless@3.0.3
2. Go to the folder where the actual css is, like: C:\sddev\vs2008\c3v4\c3v4\sass
3. Run: blessc formbuilder.css formbuilder_split.css

> Note: Do not install v4 of bless, at the moment does have plenty of bugs. Probably worth a try now as v4 is out frorm some time now (03/01/2017)#

# Basic GIT command line

1. Git init [project name] (Creates a new local repository with the specified name)
2. Git clone [url] (Downloads a project and its entire version history)
3. Git add [file] (Snapshots the file in preparation for versioning), comm use is: git add -A, to add all modified files
4. git commit -m "[descriptive message]" (Records file snapshots permanently in version history)
5. Git feth (fetch to update your remote-tracking branches under refs/remotes/remote/)
6. Git pull (Download and incorporate changes)
7. Git push (Uploads all local branch commits to GitHub/GitLab or whatever you are using)

> [Git cheat-sheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)
