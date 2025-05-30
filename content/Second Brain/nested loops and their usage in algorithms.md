---
public: true
title: 
tags:
  - programming
  - python
  - algorithms
created: 27-02-2025
last-modified: 28-04-2025
---
**Related**:  
  
---  
  
Nested loop is loop code inside another loop. Outer loops and inner loops. They're very situational.  
  
You have a while loop inside a for loop, for inside a for, while inside a while, etc.  
  
Very useful if:  
* you need to loop two different things (arrays) through the same function  
  
# Detailed explanation  
  
```python  
for x in range(1, 10):  
	print(x)  
```  
which outputs  
```  
1  
2  
3  
4  
5  
6  
7  
8  
9  
````  
Print statements end with a new line character, meaning they print each output on a separate line.  
  
If we want to output it all on the same line, add `, end="")` to the end of the print statement.  
  
```python  
for x in range(1, 10):  
	print(x, end="")  
```  
  
which outputs `123456789`  
  
the `end` will specify what to add at the end of each individual printed statemnt.  
  
If we do `end=" "` for example, it will add a space between all the characters, because it's adding an empty space after each number that's being printed  
  
# Example of nested for loop  
the outer loop will repeat the inner loop three times.  
  
The inner loop will repeat 9 times (10 is exclusive)  
  
```python  
for x in range(3): # outer  
	for x in range(1, 10):  
		print (x, end="")  
```  
  
the `x` in this example is our counter. Avoid having the same counter for nested loops. let's name the second one `y`  
  
```python  
for x in range(3):  
	for y in range(1, 10):  
		print(y, end="")  
```  
  
prints out `123456789123456789123456789`  
  
if we want to print out each iteration of x onto a new line, but keep all the iterations of y on one, we'd need to add a blank print statement at the end of the x for loop  
  
```python  
for x in range(3):  
	for y in range(1, 10):  
		print(y, end="")  
	print()  
```  
  
so now the result reads:  
```  
123456789  
123456789  
123456789  
```  
  
# Applied example  
Printing a rectangle made up of a particular symbol  
  
Accept some user input, so the user will specify how many rows and how many columns they want to see. We first create variables for rows and columns, and make them inputs. Then we typecast them as integers  
  
```python  
rows = int(input("enter the number of rows:))  
columns = int(input("enter the number of columns:))  
```  
  
We're going to reuse the nested forloops from above. Outer loop will be in charge of rows, and the inner loop will be in charge of columns.  
  
```python  
for x in range(rows):  
	for y in range(columns):  
		print(symbol, end="")  
	print()  
```  
  
You'll get an input questions that you'll have to answer:  
* "enter the number of rows:" 5  
* "enter the number of columns:" 5  
And the output will look like:  
  
```  
*****  
*****  
*****  
*****  
*****  
```  
  
  
## references/links  
* [Nested loops in Python are easy ➿ - YouTube](https://www.youtube.com/watch?v=APWy6Pc83gE)