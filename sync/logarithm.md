---
public: true
title: 
tags:
  - math
created: 2025-05-27
last-modified: 2025-06-10
---
**Related**:  
  
---  
  
>[!quote] Math is Fun  
>How many of *one number* multiply together to make *another number* ?  
  
Example from Math is Fun[^1]  
  
How many 2's multiply together to make 8 ?  
  
2 x 2 x 2 = 8  
  
so we need three 2's to get a product of 8  
  
we'd write it as the following  
  
$\log_{2}(8)=3$  
  
**key terms**  
* base: number we multiply (example: 2)  
* logarithm: how often the base needs to be multiplied (example: 3)  
* the desired number (example: 8)  
  
Common logarithm (log) are base 10. If they're base 10, they don't need to precise the base number  
  
natural logarithms have a base e, also known as [[Euler's number|Euler's number]]  
  
# computer science - algorithms and logs  
**[[../dichot algo example - ED 4|dichot]] (Binary Search)**  
Time Complexity: $O(log⁡ n)$  
**Quick Explanation**: This algorithm repeatedly divides the search interval in half, leading to logarithmic time complexity.  
**Detailed explanation:**  
* the code has one loop  
* each iteration of the loop results in the vector length being cut in half  
	* using logarithm, this can be expressed as $\log_{2}(n)$ = how many times I can divide by 2 before getting to 1  
	* where $n$ are the number of elements in a vector pool  
* the reason why it's defined as $log(n)$ and not $\log_{2}(n)$ is because in computer science log usually means $\log_{2}$ [^2] due to ignoring constant factors  
	* so if the algorithm divides the problem by 2, 3, or 10 at each step, the growth characteristic is still logarithmic  
* so time complexity of this algorithm in $O log(n)$  
  
# References  
  
[^1]: [Introduction to Logarithms](https://www.mathsisfun.com/algebra/logarithms.html)  
[^2] [Time complexity binary search](https://math.stackexchange.com/questions/3224473/how-come-the-time-complexity-of-binary-search-is-log-n)