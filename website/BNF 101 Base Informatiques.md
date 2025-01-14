---
public: true
title: 
tags:
  - bioinformatics
  - course
  - bnf
created: 24-09-2024
last-modified: 14-01-2025
---
**Related**: [[./Bioinformatics Certificate at CNAM|Bioinformatics Certificate at CNAM]], [[Bioinformatics MOC|Bioinformatics MOC]], [[Bioinformatics Career Change|Bioinformatics Career Change]]

---

> [!Summary] About
> Lecture notes + their atomic notes from the BNF101: Base Informatiques et Bases de Données class I'm taking during Fall 2024 at CNAM. 


[[Unix Commands - BNF101 Test 1|Unix Commands - BNF101 Test 1]]
[[cheat-sheet-unix-commands|cheat-sheet-unix-commands]]


## BDD - SQL/R 
why SQL?
it's incredibly useful mentally in the way it makes you understand data key relationships and what can go wrong with matching this-field-to-that-field. [reddit](https://www.reddit.com/r/bioinformatics/comments/12ddryu/sql_a_sought_after_skill_in_bioinformatics/)

Topics to still revise:
* [x] explain what an MCD and MPD is in your own words
* [x] what do the numbers (0,1,n) represent
* [x] normal forms (1-3)

**Topics to study SQL/R Exam**
* how to connect postgres and R inside of R
* presented with a code and need to answer what it does
	* check cran.r-project.org look at dbGetQuery page, and check out examples and related functions. understand what they do and how to use it
	* [dbGetQuery function - RDocumentation](https://www.rdocumentation.org/packages/DBI/versions/0.5-1/topics/dbGetQuery)
* 

* [[2024-12-03 BDD + R - session 1|2024-12-03 BDD + R - session 1]]
	* Cours 13: instructions for downloading R
	* Cours 12 - TP for R and SQL databases
	* read through [TP 1](https://www.lesfleursdunormal.fr/static/appliweb/atelier_base_de_donnees/index.html?tp=1)and create a MPD based on the exercice (don't actually use sql for the exercice), THEN do an MCD
* [[2024-12-10 BDD + R - session 2|2024-12-10 BDD + R - session 2]]
	* linking psql and r
	* creating/inserting tables for proteins
* [[2024-12-17 BDD + R - session 3|2024-12-17 BDD + R - session 3]]
	* selecting tables/visualization in R
# Concepts
These are atomic notes based on my personal lecture notes. This allows me to link information across lectures and courses, without making my raw notes public. :) 

## Computer science basics
* [[./3 fundamentals characteristics of a computer|3 fundamentals characteristics of a computer]]
* [[./Buses and RAM work in computer architecture|Buses and RAM work in computer architecture]]
* [[./Computers work based on Von Neumann Machine principles|Computers work based on Von Neumann Machine principles]]
* [[./Homebrew is a package management system|Homebrew is a package management system]]
* [[algorithms are a method executed step by step to resolve a problem or give a desired result|algorithms are a method executed step by step to resolve a problem or give a desired result]]


## HTML & CSS
* [[linking images and urls in html|linking images and urls in html]]
* [[Using divs and nested divs in css|Using divs and nested divs in css]]
* [[website forms via html|website forms via html]]

## Database theory
* [[Database Management Systems (DBMS) and three-schema architecture|Database Management Systems (DBMS) and three-schema architecture]]
* [[MERISE Method of database design|MERISE Method of database design]]
	* [[MCD = modele conceptual données|MCD = modele conceptual données]]
	* [[cardinality-example-MCD|cardinality-example-MCD]]
	* [[total participation vs partial participation|total participation vs partial participation]]
* [[formes normales - normal forms in database formalization|formes normales - normal forms in database formalization]]
* [[PRIMARY KEY vs FOREIGN KEY|PRIMARY KEY vs FOREIGN KEY]]
## SQL/R
* [[Postgre SQL is an open source relational database system|Postgre SQL is an open source relational database system]]
	* [[2024-10-22 SQL L2|starting postgresql/psql]]
	* [[differences btwn oracle and postgres|differences btwn oracle and postgres]]
* [[COMMIT and ROLLBACK|COMMIT and ROLLBACK]]
* [[how to link postgresql and r for analysis|how to link postgresql and r for analysis]]

- [[2024-09-16 Unix Lecture 1|2024-09-16 Unix Lecture 1]]
- [[2024-09-17 BDD Lecture 1|2024-09-17 BDD Lecture 1]]
- [[2024-09-23 Unix Lecture 2|2024-09-23 Unix Lecture 2]]
- [[2024-09-24 BDD Lecture 2|2024-09-24 BDD Lecture 2]]
- [[2024-09-30 Unix Lecture 3|2024-09-30 Unix Lecture 3]]
- [[2024-10-01 BDD Lecture 3|2024-10-01 BDD Lecture 3]]
- [[2024-10-07 Unix Lecture 4|2024-10-07 Unix Lecture 4]]
- [[2024-10-15 BDD Lecture 6|2024-10-15 BDD Lecture 6]]
- [[2024-10-22 SQL L2|2024-10-22 SQL L2]]
- [[2024-10-29 SQL L3|2024-10-29 SQL L3]]
- [[2024-11-12 SQL L5|2024-11-12 SQL L5]]
- [[2024-12-03 BDD + R - session 1|2024-12-03 BDD + R - session 1]]
- [[2024-12-10 BDD + R - session 2|2024-12-10 BDD + R - session 2]]
- [[2024-12-17 BDD + R - session 3|2024-12-17 BDD + R - session 3]]
- [[./Bioinformatics Certificate at CNAM|Bioinformatics Certificate at CNAM]]
- [[CSS Lecture 1|CSS Lecture 1]]
- [[CSS Lecture 2|CSS Lecture 2]]
- [[CSS Lecture 3|CSS Lecture 3]]
- [[./database creation syntax and data fields|database creation syntax and data fields]]
- [[HTML Lecture 1|HTML Lecture 1]]
- [[HTML Lecture 2|HTML Lecture 2]]
- [[HTML Lecture 3|HTML Lecture 3]]
- [[linking images and urls in html|linking images and urls in html]]
- [[./Programming MOC|Programming MOC]]
- [[quartz-to-do-note|quartz-to-do-note]]
- [[Unix Commands - BNF101 Test 1|Unix Commands - BNF101 Test 1]]
- [[website forms via html|website forms via html]]


| File                                                                                                                                                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [[cheat-sheet-unix-commands\|cheat-sheet-unix-commands]]                                                                                                                                     |
| [[Unix Commands - BNF101 Test 1\|Unix Commands - BNF101 Test 1]]                                                                                                                             |
| [[Programming definitions, simple and composed scheme expressions\|Programming definitions, simple and composed scheme expressions]]                                                         |
| [[Postgre SQL is an open source relational database system\|Postgre SQL is an open source relational database system]]                                                                       |
| [[PRIMARY KEY vs FOREIGN KEY\|PRIMARY KEY vs FOREIGN KEY]]                                                                                                                                   |
| [[MCD = modele conceptual données\|MCD = modele conceptual données]]                                                                                                                         |
| [[INSERT command\|INSERT command]]                                                                                                                                                           |
| [[HTML Lecture 2\|HTML Lecture 2]]                                                                                                                                                           |
| [[Database Management Systems (DBMS) and three-schema architecture\|Database Management Systems (DBMS) and three-schema architecture]]                                                       |
| [[CSS Lecture 3\|CSS Lecture 3]]                                                                                                                                                             |
| [[CSS Lecture 2\|CSS Lecture 2]]                                                                                                                                                             |
| [[CSS Lecture 1\|CSS Lecture 1]]                                                                                                                                                             |
| [[2024-12-03 BDD + R - session 1\|2024-12-03 BDD + R - session 1]]                                                                                                                           |
| [[2024-10-15 BDD Lecture 6\|2024-10-15 BDD Lecture 6]]                                                                                                                                       |
| [[2024-09-30 Unix Lecture 3\|2024-09-30 Unix Lecture 3]]                                                                                                                                     |
| [[2024-09-24 BDD Lecture 2\|2024-09-24 BDD Lecture 2]]                                                                                                                                       |
| [[2024-10-22 SQL L2\|2024-10-22 SQL L2]]                                                                                                                                                     |
| [[differences btwn oracle and postgres\|differences btwn oracle and postgres]]                                                                                                               |
| [[2024-10-29 SQL L3\|2024-10-29 SQL L3]]                                                                                                                                                     |
| [[2024-11-12 SQL L5\|2024-11-12 SQL L5]]                                                                                                                                                     |
| [[2024-10-01 BDD Lecture 3\|2024-10-01 BDD Lecture 3]]                                                                                                                                       |
| [[HTML Lecture 3\|HTML Lecture 3]]                                                                                                                                                           |
| [[2024-10-07 Unix Lecture 4\|2024-10-07 Unix Lecture 4]]                                                                                                                                     |
| [[BNF 102 Initation à la programmation\|BNF 102 Initation à la programmation]]                                                                                                               |
| [[linking images and urls in html\|linking images and urls in html]]                                                                                                                         |
| [[2024-09-17 BDD Lecture 1\|2024-09-17 BDD Lecture 1]]                                                                                                                                       |
| [[2024-09-23 Unix Lecture 2\|2024-09-23 Unix Lecture 2]]                                                                                                                                     |
| [[cardinality-example-MCD\|cardinality-example-MCD]]                                                                                                                                         |
| [[COMMIT and ROLLBACK\|COMMIT and ROLLBACK]]                                                                                                                                                 |
| [[algorithms are a method executed step by step to resolve a problem or give a desired result\|algorithms are a method executed step by step to resolve a problem or give a desired result]] |
| [[total participation vs partial participation\|total participation vs partial participation]]                                                                                               |
| [[formes normales - normal forms in database formalization\|formes normales - normal forms in database formalization]]                                                                       |
| [[Using divs and nested divs in css\|Using divs and nested divs in css]]                                                                                                                     |
| [[HTML Lecture 1\|HTML Lecture 1]]                                                                                                                                                           |
| [[MERISE Method of database design\|MERISE Method of database design]]                                                                                                                       |
| [[BNF 101 Base Informatiques\|BNF 101 Base Informatiques]]                                                                                                                             |
| [[2024-12-17 BDD + R - session 3\|2024-12-17 BDD + R - session 3]]                                                                                                                           |
| [[./3 fundamentals characteristics of a computer\|3 fundamentals characteristics of a computer]]                                                                                               |
| [[2024-09-16 Unix Lecture 1\|2024-09-16 Unix Lecture 1]]                                                                                                                                     |
| [[./Buses and RAM work in computer architecture\|Buses and RAM work in computer architecture]]                                                                                                 |
| [[./Computers work based on Von Neumann Machine principles\|Computers work based on Von Neumann Machine principles]]                                                                           |


## Other references
* [bases de données relationnelles avec MERISE](https://ineumann.developpez.com/tutoriels/merise/initiation-merise/#LI)

## BDD Slides
- [[./BNF101_BDD_cours_1_2024_2025.pdf|BNF101_BDD_cours_1_2024_2025.pdf]]
- [[./BNF101_BDD_cours_2_2024_2025.pdf|BNF101_BDD_cours_2_2024_2025.pdf]]
- [[./BNF101_BDD_cours_3_2024_2025.pdf|BNF101_BDD_cours_3_2024_2025.pdf]]
- [[./BNF101_BDD_cours_4_2024_2025.pdf|BNF101_BDD_cours_4_2024_2025.pdf]]
- [[./BNF101_BDD_cours_5_2024_2025.pdf|BNF101_BDD_cours_5_2024_2025.pdf]]
- [[./BNF101_BDD_cours_6_2024_2025.pdf|BNF101_BDD_cours_6_2024_2025.pdf]]
- [[./BNF101_BDD_cours_7_2024_2025.pdf|BNF101_BDD_cours_7_2024_2025.pdf]]
- [[./BNF101_BDD_cours_8_2024_2025.pdf|BNF101_BDD_cours_8_2024_2025.pdf]]
- [[./BNF101_BDD_cours_9_2024_2025.pdf|BNF101_BDD_cours_9_2024_2025.pdf]]
- [[./BNF101_BDD_cours_10_2024_2025.pdf|BNF101_BDD_cours_10_2024_2025.pdf]]
- [[./BNF101_BDD_cours_11_2024_2025.pdf|BNF101_BDD_cours_11_2024_2025.pdf]]
- [[./BNF101_BDD_et_R_cours_12_2024_2025.pdf|BNF101_BDD_et_R_cours_12_2024_2025.pdf]]
- [[./BNF101_BDD_et_R_cours_13_2024_2025.pdf|BNF101_BDD_et_R_cours_13_2024_2025.pdf]]
- [[./BNF101_BDD_exercice_interactions_protéine_proteine_2024_2025.pdf|BNF101_BDD_exercice_interactions_protéine_proteine_2024_2025.pdf]]
- [[./BNF101_BDD_exercice_interactions_protéine_proteine_corrigé_2024_2025.pdf|BNF101_BDD_exercice_interactions_protéine_proteine_corrigé_2024_2025.pdf]]
- [[./BNF101_BDD_select_jointures_et_select_imbriquées-1.pdf|BNF101_BDD_select_jointures_et_select_imbriquées-1.pdf]]