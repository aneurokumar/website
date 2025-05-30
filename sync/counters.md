---
public: true
title: 
tags:
  - programming
  - algorithms
created: 2025-03-03
last-modified: 2025-05-28
aliases:
  - how to use a counter in scheme
  - scheme counter
---
**Related**: [[./Programming MOC|Programming MOC]]  
  
---  
The purpose of a counter (aka a loop counter or loop iterator), is to keep track of the number of iterations of a particular event in a program.   
  
Particularly useful whenever you have certain conditions in your code. In loops, a condition is checked every time a loop is run. Counters can be useful to keep track of how many times a loop is run and decide if the loop needs to keep running. This can be done by comparing it to another number or referencing the range.  
  
Useful if you need to keep track of how many times a loop is performed, for example a while loop.  
  
In python, it's actually pretty easy to include a counter for for loops. But for scheme you have to add them separately.  
  
Python examples using while loop comparing n to 5, and for loop using a range  
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
  
  
# a simple example using brushing teeth  
If a person is cleaning their teeth, and assuming they have 32 individual teeth, you wouldn't write the algorithm as: clean tooth 1, clean tooth 2, etc.   
  
A more efficient way is to look at using a counter, similar to the first python example above  
  
how the loop looks in the overall process could be:[^1]  
* put toothpaste on toothbrush  
* teeth counter is initialized (set) to 0  
* begin cleaning tooth  
	* after cleaning a tooth, increase tooth counter by +1  
	* check tooth counter and compare it to 32  
	* if tooth counter < 32, clean the next tooth  
	* if tooth counter = 32, stop and rinse toothbrush  
* put away toothbrush  
  
  
## references/links  
* [What is a counter and how is it used in Python loops? - Stack Overflow](https://stackoverflow.com/questions/76359677/what-is-a-counter-and-how-is-it-used-in-python-loops)  
* [racket - How to use counter in Scheme - Stack Overflow](https://stackoverflow.com/questions/15125312/how-to-use-counter-in-scheme)  
# References  
  
[^1]: [Conditions and counters - Iteration - KS3 Computer Science Revision - BBC Bitesize](https://www.bbc.co.uk/bitesize/guides/zg46tfr/revision/3)