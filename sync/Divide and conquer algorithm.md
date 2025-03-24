---
public: true
title: 
tags:
  - algorithms
  - computer-science
created: 2025-02-20
last-modified: 2025-03-24
---
**Related**:  
  
---  
An algorithm aptly named, since it breaks down an overall problem into smaller problems, "conquers" or solves each sub problem, and them combines them into the overall solution  
  
Example:  
![[./Divide and conquer algorithm-1.png|Divide and conquer algorithm-1.png]]  
In the problem above, you have a total of $100K debt of student loans. The total is from multiple smaller loans that One way to tackle it is to pay off each individual amount until all the small loans are paid off, leading to the whole total being paid off.  
  
Applied examples: Array that you want to sort  
* divide the arrays down to size 1  
* merge the sorted arrays (using 2 pointers pattern)  
  
2 pointers pattern - adding a "pointer" (like literally an arrow) that starts at the beginning of both sorted arrays (position 0)  
* the pointers compare their numbers together, and the smaller one gets sorted to the front of the new list  
* now that we've sorted that number out of the sorted array, the pointer moves to the next number in that sorted array  
* the process repeats, with the pointers comparing the numbers, and the smaller one being sorted into the new list  
* at some point one of the sorted arrays will be "finished" and the pointer can't increment further  
* then, whatever is left after the pointer in the remaining sorted array gets appended to the end of the new list  
  
![[./Divide and conquer algorithm-3.png|Divide and conquer algorithm-3.png]]  
  
  
in  between the two arrays and the final sorted array, we did the 2 pointers pattern 