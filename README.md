# The VCP Project
A more verbose substitute for cp in linux

![alt text](https://raw.githubusercontent.com/anotherAlex154/vcp/master/screenshot1.png)

## Abstract
So there I was, copying gigs upon gigs of music back onto my phone when I discovered that the file explorer wasn't the most reliable way. It was like giving a four year old a stack papers. They draw on them, throw them around, stash them in places I won't find. Worst of all, he takes sporadic naps while copying my files. It's bad. Thus, I went to his parent, the terminal and masterfully typed `cp *.mp3 /music`. And waited... and waited... Nothing flashed before my eyes after that. I was lost in the dark, with nothing but the command staring back at me. How long could it keep me waiting? Hours? Days? Was it stuck? Should I give up? No. WE ARE NOT SLAVES TO COMPUTERS!! If we want more, we ask for more. With some research, father has brought the holy grail of scripts, `vcp`.

## Installation
Go to the source directory containing install.sh then enter `sudo ./install.sh`. Simple stuff. (:

## Usage
```vcp --help```

```vcp <destination>```

This will copy all files in the current directory recursively to the given destination folder. 
