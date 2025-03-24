---
public: true
title: 
tags:
  - algorithms
  - bnf
created: 2025-02-11
last-modified: 2025-03-24
---
**Related**: [[../BNF 103-PAR Bioinformatics Algorithims|BNF 103-PAR Bioinformatics Algorithims]]  
  
---  
  
# Algorithms  
Algorithms are like a recipe or a process: you follow a clear set of steps to obtain a final result.  
  
**Two common definitions:**  
* step by step process to perform a calculation using a fixed number of operations in a specific order  
* sequence of instructions to solve a well-defined problem in a finite amount of time  
  
**Key structures**  
* loops: repeats an action(s) until a condition is met  
	* for loops  
	* while loops  
* conditionals: executes an action(s) based on different conditions  
	* if - then - else  
  
**Examples of Algorithms applications**  
* Finding a number in a list: if given numbers, check if *5* is present. if not, then return *false*  
* DNA to protein translation: Given a DNA sequence, determine the protein it codes for  
* Relationships and patterns: find evolutionary relationships between gene sequences  
  
# Analyzing algorithms  
You can analyze algorithms experimentally or theoretically, both have their pros and cons.  
  
**Experimental**: Run the program and see what happens  
* can't test every possible case  
* must normalize for the same hardware/software while comparing  
* Like testing different routes to find the fastest way home  
  
**Theoretical**: uses mathematical models  
* independent of hardware/software  
* execution time depends on input size  
* Estimating time a trip will take based on distance, not checking real-time traffic  
  
  
  
  
# Pseudocode  
Using normal language to conceptualize algorithms before actually code the algorithms. These can help you go through the logic of the algorithm without thinking about the constraints of the language it's written in.  
  
It can be a starting point for documentation, helps bug detection, and can actually help you get over "writer's block" by giving you a place to start.  
  
This is what the structure of pseudocode looked like in my [[./Bioinformatics Certificate at CNAM|bioinformatics certificate classes]]:  
  
```text  
Nom de l’algorithme Données (en entrée)  
Résultats (en sortie)  
  
Bloc « tant que » :  
Tant que CONDITION faire instruction ;  
Instruction ;  
Fin tant que  
  
bloc « si »  
Si CONDITION alors instruction si vrai  
Sinon instruction si faux  
  
Fin si  
```  
  
Here's an example of what that can look like in plain language:  
  
```  
- IF employee gets eight or more questions correct   
    - Display message: “Congratulations on passing the quiz!”   
    - Transition to printable certificate of completion page     
- ELSE  
    - Display message: “Let’s try again!”   
    - Transition back to first page of quiz  
```  
  
  
> [!quote] The six keywords of pseudocode  
>- SEQUENCE represents linear tasks sequentially performed one after the other.  
>- WHILE is a loop with a condition at its beginning.  
>- REPEAT-UNTIL is a loop with a condition at the bottom.  
>- FOR is another way of looping.  
>- IF-THEN-ELSE is a conditional statement changing the flow of the algorithm.  
>- CASE is the generalization form of IF-THEN-ELSE.   
  
  
![[basics of algorithms and pseudocode2025-03_23.png|basics of algorithms and pseudocode2025-03_23.png]]  
  
## references/links  
* [Pseudocode: What It Is and How to Write It \| Built In](https://builtin.com/data-science/pseudocode)