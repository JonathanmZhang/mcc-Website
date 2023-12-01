# One-Time Setup

For both the content editor and code developer roles,
you need to run a local copy of the website on your
personal laptop or desktop.
Windows, Mac, or Linux laptop or desktop may be used.
Everything (except your machine) required to run a
local environment is free software.

## Environment Set Up Steps

### Get A github.com Id

The source content and code will be stored in a shared repository
hosted on www.github.com.  If you do not already have one, you will
need to create an id for yourself on www.github.com (it's free).

Once you have a github id, you will have to get access to be able
to "push" updates to the repository.  Ask Jonathan Zhang, he's the
current owner of the repository.

### Install Git

[Git](https://git-scm.com/) is software for source code
management.  It's what we'll be using for this website.
If you do not already have it installed, you will need to
[download and install it](https://git-scm.com/downloads)
on your machine (it's free).

To test that you have it installed correctly, go to a command line
window and run this command

    git --version

Your version of git should be displayed. If you get command not 
found or something similar, you need to fix this.

### Install VSCode (or other text editor)

The content and code (except for images) are in text files of
various types.  You will need a text editor to update these files.
If you do not already have a favourite text editor, installing and
using [Visual Studio Code](https://code.visualstudio.com/),
or VSCode for short, is recommended.

Versions are available for Windows, Mac, and Linux.
Your can download and install it from its
[home page](https://code.visualstudio.com/) (it's free).

### Install Node

To build the website, a few additional software packages are
required.  These software packages are installed by something
called "npm" which is a part of Node JS.

If you do not already have it installed on your machine,
you will need to install Node JS.  You can download and install it
from its [home page](https://nodejs.org/en/).

To test that you have it installed correctly, go to a command line
window and run this command

    node --version
    npm --version

### Check out Website Code from Gitlab

The lastest content and code files should be in the github.com repository.
To get these files, create a new directory (or folder ) for it,
go into that folder, and enter the following git command:

    md \path\to\Mississaug-Chess-Club
    cd \path\to\Mississaug-Chess-Club
    git clone https://github.com/JonathanmZhang/mcc-Website.git

In your newly created directory, you should now have another
directly (probably) called `mcc-Website`.  This contains the 
content and code files from github.com.

### Install software pacakges with "npm"

Now we need to install Hugo and the additional software packages
needed to build the website.  Run these commands:

    cd \path\to\Mississaug-Chess-Club\mcc-Website
    cd hugo
    npm install

This reads the list of required software from `package-lock.json`
and installs that software into the `node_modules` directory.

Defined in `package.json` are a few script commands that we
will be using.  These script commands are run via npm so that
they run with access to the software in `node_modules`.

### Run Hugo's Dev Server

Hugo is the software used to build the website.  It has a 
development server that lets us view the website as we change
the content and/or code files.  To run this:

    cd hugo       (if not already there
    npm run hugo:serve

Unless there's errors in the code, it should start the
development server which you can view with your web browser
at [localhost:1313](http://localhost:1313).

**If you are using VSCode**: you might prefer this alternate
way to start the development server.  A few useful commands
have been predefined for this project (in ./.vscode/tasks.json).
In the top menu, click "Terminal", click "Run task ...",
click "npm run hugo:server".  This will run Hugo in a terminal
window within VSCode.
