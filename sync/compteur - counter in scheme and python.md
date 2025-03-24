---
public: true
title: 
tags: 
created: 2025-03-03
last-modified: 2025-03-03
aliases:
  - how to use a counter in scheme
  - scheme counter
---
**Related**: [[./Programming MOC|Programming MOC]]  
  
---  
The purpose of a counter (aka a loop counter or loop iterator), is to keep track of the number of iterations of a particular event in a program.  
  
Useful if you need to keep track of how many times a loop is performed, for example a while loop.  
  
In python, it's actually pretty easy to include a counter for for loops. But for scheme you have to add them separately.  
  
Python examples  
```python  
n=0  
while n < 5:  
    print(n)  
    n=n+1  
  
  
mysum =0   
for i in range(7,10):  
    mysum += i  
print(mysum)  
```  
  
  
Scheme examples  
```scheme  
  
```  
  
## references/links  
* [What is a counter and how is it used in Python loops? - Stack Overflow](https://stackoverflow.com/questions/76359677/what-is-a-counter-and-how-is-it-used-in-python-loops)  
* [racket - How to use counter in Scheme - Stack Overflow](https://stackoverflow.com/questions/15125312/how-to-use-counter-in-scheme)  
  
  
