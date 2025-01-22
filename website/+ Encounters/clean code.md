---
public: true
title: 
tags: 
created: 15-01-2025
last-modified: 15-01-2025
---
**Related:** [[../01_Maps/Programming MOC|Programming MOC]], Concepts MOC

---


> [!info]
> Clean code are good coding practices. I'm writing them down with examples as I come across them myself.
> 
> Read *Clean Code* by Robert J Martin !

# Naming Variables
* **Meaningful names**: avoid comments to explain what the variable is.
	* instead of` var d; // elapsed time in days`, use `var elapsedTimeInDays`
* **Disinformation/Misnomers**: some common spoken words mean something specific in coding, like "list"
	* instead of `var accountList = [ ]`, you can just use `accounts = [ ]`

# Functions
* **Keep them small and doing one thing:** "They should really be 20 lines long. The longer a function gets, it is more likely...to do multiple things and have side effects."

# Other
* **Know the language style guides:** Just like each newspaper has a style guide, so does each coding language.
	* quick example: snake_case in python, and camelCase in Java
	* Style guides
		* [Javascript style guide](https://www.geeksforgeeks.org/javascript-style-guide-and-coding-conventions/)
		* [Python style guide](https://peps.python.org/pep-0008/#a-foolish-consistency-is-the-hobgoblin-of-little-minds)
		* [R style guide](https://style.tidyverse.org/)
		* [HTML/CSS style guide](https://google.github.io/styleguide/htmlcssguide.html#HTML)
## references/links
* [Clean Code Explained – A Practical Introduction to Clean Coding for Beginners](https://www.freecodecamp.org/news/clean-coding-for-beginners/)
