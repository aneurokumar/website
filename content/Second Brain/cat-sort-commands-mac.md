---
public: true
title: cat and sort commands for mac (unix)
tags:
  - "#unix"
  - shell
created: 01-12-2024
last-modified: 26-12-2024
---
**Related:** cheat-sheet-unix-commands

> **Summary**
> Made this because noticed some commands are different on mac (what I use), but still need to study the commands on a Linux/Windows machine for my unix class

cat
* instead of -A (doesn't exist on mac) use "vet"
* below is from stack exchange
I use `cat -vet`  
In this order, it is easy for me to remember -- my Mac cat needs a vet.  

|option|desc|
|---|---|
|-v|<Display non-printing characters so they are visible. Control characters print as ‘^X’ for control-X; the delete character (octal 0177) prints as ‘^?’. Non-ASCII characters (with the high bit set) are printed as ‘M-’ (for meta) followed by the character for the low 7 bits.|
|-e|Display non-printing characters (see the -v option), and display a dollar sign (‘$’) at the end of each line.|
|-t|Display non-printing characters (see the -v option), and display tab characters as ‘^I’.|

[linux - Mac OS Catalina zshell : cat -A is illegal so what's is the substitute? - Stack Overflow](https://stackoverflow.com/questions/59988059/mac-os-catalina-zshell-cat-a-is-illegal-so-whats-is-the-substitute)


sort

## references/links?
* 

note created on 20241201 @ 1118