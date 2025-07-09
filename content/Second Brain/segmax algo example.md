---
public: true
title: 
tags:
  - vector-length
  - scheme
  - bnf
  - fc-bnf-103
created: 24-02-2025
last-modified: 18-06-2025
---
**Related**: [[../BNF 103-PAR Bioinformatics Algorithims|BNF 103-PAR Bioinformatics Algorithims]]  
  
---  
[[./nested loops and their usage in algorithms|nested loops and their usage in algorithms]]  
  
the outer loop prevents redundancy in checking by increasing the starting index  
as the index i increases, the second loop j does its thing by increasing the ending index.  
then we have k...which iterates from i to j  
  
where can I even use this?? checkout [[../Kadane's Algorithm - maximum sum subarray problem|Kadane's Algorithm - maximum sum subarray problem]] and [[./Big-O notation and time complexity|Big-O notation and time complexity]]  
  
# Applicable explanation  
## problem  
We have a long stretch of DNA with a bunch of different genes. Each gene have varying levels of gene expression. The goal is to find the section of DNA where the gene expression is the highest.  
  
from the files, this would mean we're looking for the expression value with the highest total. We have one file which gives us a long string of values for the expression levels at each DNA position.  
  
## conceptual explanation of segmax  
this algorithm is a bit brute force-y, because it starts at the beginning of the DNA sequence and then examines the entire thing.  
  
Segmax starts at the first position and uses that as the start of a high expression region, (this is the first loop with i starting at 0), then moves to the second position, and so on (this is i increasing my 1 each time, moving the starting index up by 1)  
  
from each starting point, we try stopping at different points down the DNA sequence (extending the subarray by choosing an end index)  
  
we add up the values at every position in that region, measuring total gene expression for each one  
  
How we keep track of totals  
* we save the starting position of the best region - eg marking the first nucleotide of a gene  
* we save the ending position of the best region - eg marking where the expression stops  
* we save the total expression value for that region  
  
## step by step applicable explanation  
Create variables to keep track of things  
* vmax = highest total gene expression  
* imax = stores starting position for best region  
* jmax = stores ending position for best region  
  
Tries to use every position as a starting point (*i loop*)  
```scheme  
(do((i 0(+ i 1)))  
	((>= i (vector-length v)) (list imax jmax vmax))  
```  
  
We start at 0 and then move forward on the DNA sequence one base-pair at a time (or one step). For each position, we want to know if starting here leads to a region with high expression  
  
Tries to use every position as endpoints (*j loop*)  
```scheme  
(do((j(+ i 1) (+ j 1)))  
	((>= j (vector-length v)) 'fait)  
```  
  
Once we choose a starting point, we're going to try different stopping points. These will mark different DNA "regions"  
  
Example, if i = 7, then the algo with try 8, 9, 10 etc as possible end points. (You can already see how cumbersome this is...)  
  
Add up the gene expression levels for each region  
```scheme  
(let ((m 0)))  
	(do ((k i (+ k 1)))  
		((> k j)  
		(if (> m vmax)  
			(begin  
				(set! vmax m)  
				(set! imax i)  
				(set! jmax j)))))  
	(set! m (+ m (vector-ref v k)))))  
```  
  
Start with the total sum of 0 `(let((m 0)))`, then add the expression values from the starting (`i`) and ending(`j`) points.   
  
If the total is greater than the best value found so far (`vmax`), then this total is saved as the new `vmax`, and the starting and ending points are saved as the new `imax` and `jmax` respectively.  
  
Once the algo has tested all the regions (which will probably take forever), it outputs `imax`, `jmax`, and `vmax` that shows:  
* `imax` = where highest expression starts  
* `jmax` = where highest expression ends  
* `vmax` = the total expression of that region  
  
# Applicable example  
Remember that the *position* is understood by the computer, it doesn't have to be written as a two column table!  
  
For segmax, since the input is v, we could have a data table like this:  
  
| DNA position | Expression level |  
| ------------ | ---------------- |  
| 0            | 2                |  
| 1            | -1               |  
| 2            | 3                |  
| 3            | 5                |  
| 4            | -2               |  
But we'd input it as a vector in scheme:  
  
```scheme  
(define v #(2 -1 3 5 -2))  
```  
  
`vector-length` returns 5, because we have 5 positions in our dataset, so having `>= i vector-length v` makes sure we're not trying to access data (that doesn't exist) beyond our dataset. The code needs to be explicitly told to not move past the end point!  
  
**Where are the values stored while the algo runs?**   
* gene expression data is stored in `v`   
* temporary sum of expression levels is in `m`  
  
  
![[./segmax explanation in scheme and python.pdf|segmax explanation in scheme and python.pdf]]