---
public: true
title: find (unix command)
tags:
  - unix
created: 2024-11-30
last-modified: 2025-01-12
---
**Related:** 2024-10-07 Unix Lecture 4, exec-find-unix-command, [[./Programming MOC|Programming MOC]]

> **Summary**
> Difference between find and grep: find is used to find files in one or multiple directories, and grep is used to find content inside files.

## Find
* powerful search command, searches files in a repo
```bash
find repo_to_search [-criteria] [-actions]
```

* important to put -print at the end, to make sure whatever files you're searching for actually print!
* access level - to go through files, find needs access to those files. Otherwise they won't show up in the search
* search files by age, size, owner, file type, timestamp, permissions, and depth within subtree
* can also do things to the files themselves

## Examples of Find
find all files that start with "A" or "a", followed by letters or numbers, and end with a number between 3 and 6
```bash
find . -iname "a*[3-6]" -print

OR

find . -name "[aA]*[3-6]" -print
```

find a file that was modified 30 days ago, more than 30 days ago, and less than 30 days ago?
```bash
find . -mtime 30 -print

find . -mtime +30 -print

find . -mtime -30 -print
```

find only directories
```bash
find . -type d -print
```

find a file that was modified less than 12 days ago and is larger than 30K
```bash
find . -type f -mtime -12 -size +30 k -print
```
# Find Search Criteria
find -amin *n*
* find files that were accessed *n* minutes ago
find -anewer *folder-name*
* searches most recently access files from *folder-name*
find -atime *n
* searches files accessed *n* days (24 hour period)
* just *n* = exactly *n*, +*n* = more than *n*, and -*n* = less than *n*
-cmin *n*
-cnewer *folder-name*
-ctime *n*
-mmin *n*
* find files that were modified *n* minutes
-mtime *n*
* find files that were modified *n* days  (24 hour period)
-name *file-name*
-iname *file-name*
-size *n*
-user *user-name*
-group *group-name*
-type *d/f*
* d = directory
* f = file
-empty
* search all empty files and directories
## Find vs Locate
> Bottom line, both are very useful. `locate(1)` is better when you're just trying to find a particular file by name, which you know exists, but you just don't remember where it is exactly. `find(1)` is better when you have a focused area to examine, or when you need any of its many advantages. ([source]([files - locate vs find: usage, pros and cons of each other - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/60205/locate-vs-find-usage-pros-and-cons-of-each-other#:~:text=locate(1)%20is%20better%20when%20you're%20just))

## Find vs Grep
>The Major difference is **FIND** is for searching files and directories using filters while **GREP** is for searching a pattern inside a file or searching process(es)_
>
>**FIND** is an command for searching file(s) and folder(s) using filters such as size , access time , modification time.  
>
>The find command lists all of the files within a directory and its sub-directories that match a set of filters.  
>
>This command is most commonly used to find all of the files that have a certain name.
>
>To find all of the files named theFile.txt in your current directory and all of its sub-directories, enter:  
```
find . -name theFile.txt -print
```
>To look in your current directory and its sub-directories for all of the files that end in the extension .txt , enter:  
```
find . -name "*.txt" -print
```
>**GREP** :(Globally search a Regular Expression and Print)
>Searches files for a specified string or expression.
>
>Grep searches for lines containing a specified pattern and, by default, writes them to the standard output.
>
>`grep myText theFile.txt`
>
>Result : Grep will print out each line contain the word _myText_. [source](https://stackoverflow.com/questions/43165447/what-is-the-difference-between-find-with-grep)

#### flashcards
* using `find`, how do you return *only* files in your search results? // use `-type f` to specify files
* using `find`, how do you return *only* directories in your search results? // use `-type d` to specify directories
* what does `find . -type d` mean? // find all directories in the current directory
* what does `find . -type f` mean? // find all files in the current directory
* what does `find . "*.c" -print` mean? // find all files in current directory that has a c at the end with a character before it and print the results
* what does `find / -mtime -3 -print` mean? // find all files in the entire tree that were modified less than 3 days ago
* what's the difference between `find /` and `find ~` ? // `find /` looks through all files in the tree, while `find ~` looks through all the content in your user account

## references/links
* [files - locate vs find: usage, pros and cons of each other - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/60205/locate-vs-find-usage-pros-and-cons-of-each-other#:~:text=locate(1)%20is%20better%20when%20you're%20just)
* [unix - What is the difference between find with grep? - Stack Overflow](https://stackoverflow.com/questions/43165447/what-is-the-difference-between-find-with-grep)

note created on 20241130 @ 2100