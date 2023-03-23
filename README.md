Ever open Command Prompt and type `ls` forgetting that you're on a Windows machine?

```
C:\Users\Admin>ls
'ls' is not recognized as an internal or external command, operable program or batch file.
```

Good news, you can set up a whole aliases file for Command Prompt.

`C:\aliases.cmd`

```
@echo off
doskey x=exit
doskey ls=dir $*
doskey .=dir
doskey ..=cd ..
doskey cd=cd /d $*
doskey clear=cls
doskey mv=ren $*
doskey ps=tasklist $*
doskey kill=taskkill /IM $*
```

`install_aliases.reg`

```
Windows Registry Editor Version 5.00
[HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor]
"Autorun"="\"C:\\aliases.cmd\""
```

# Install

1. Clone this repo to your desktop
2. Move the files into your `C:\`
3. Run `install_aliases.reg`
4. Restart command prompt