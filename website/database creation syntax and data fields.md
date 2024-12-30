---
public: true
title: 
tags: 
created: 30-12-2024
last-modified: 30-12-2024
---
**Related:** [[./Programming MOC|Programming MOC]], BNF 101 Base Informatiques  

---

> **Summary**
> CREATE TABLE, data types (INTEGER, VARCHAR, CHAR, DATE, SERIAL, Constraints (Primary/Foreign keys, NOT NULL, CHECK, DEFAULT), ALTER TABLE

# Key Concepts:
**Basic table creation syntax (CREATE TABLE)**: creates a table
Think of it like creating a spreadsheet, where you need to add all the columns you need and format them for the specific data type
* syntax: `CREATE TABLE Students (name VARCHAR(30), age INTEGER);`
* Always use `CREATE TABLE` followed by the name of the table, then open parentheses for the column names

**Data types (INTEGER, VARCHAR, CHAR, DATE, SERIAL)**
These are the "data formatting" equivalent for Excel
* Integer: whole nuDmbers (1, 2, 3, etc.)
* Varchar: "text of variable length", useful for names, adresses, etc. basically any string value. need to specify the maximum number with parenthesis
* Char: fixed-length text (like M or F for gender, or US state abbreviation)
* Date: calendar dates
* Serial: number that automatically counts up when a new row is added

**Constraints: used to specify rules for the data in the table.**
Can be used with `create table` or added later using `alter table`
- Primary Keys: main entry id for each table/row. example: Asset ID
- Foreign Keys: column that connects to another table's primary key (like linking Maintenance ID to Asset ID)
	* NOTE: PKs and FKs can either be in-line or out-of-line.
		* In-line = defined next to the column.
		* out-of-line = defined separately at the bottom of table creation
* NOT NULL: requires the field to have a value. (requiring a serial number for each equipment)
* CHECK constraints
* DEFAULT values
Table modification (ALTER TABLE)
Composite primary keys
Auto-incrementing fields (SERIAL)
Database connection commands (psql)
The difference between defining constraints during table creation vs. adding them later
Referential integrity (foreign key relationships)

# Study Questions
- "Explain the difference between adding a primary key constraint during table creation versus using ALTER TABLE afterward. Use the Client and Produit tables as examples."
- "Look at the Commande table. Why do you think NumCli and NumVen are defined as foreign keys? What business logic does this enforce?"
- "In the LigneCom table, there's a composite primary key. What makes it composite, and why might this design choice have been made?"
- "Compare how constraints are added in the Client table versus the Vendeur table. What are the different approaches used?"
- "What is the purpose of the CHECK constraint on CodePos in both Client and Client2 tables?"
- "Explain the purpose of SERIAL in the Client2 table. How does it differ from the regular INTEGER in Client table?"
- "What's the significance of setting QteSto DEFAULT(0) in the Produit table?"
- "Looking at the Commande table, explain why Total has a CHECK constraint of being greater than 0."
- "What's the difference between VARCHAR and CHAR as used in the Vendeur table's Genre field?"
- "Why might Tel be allowed to be NULL while other fields are explicitly set as NOT NULL in the Client table?"
- "Explain the relationship between LigneCom and Produit tables through their foreign key constraint."
- "What business rules are enforced by the CHECK constraint on QteCom in the LigneCom table?"
- "Compare the creation of Client and Client2 tables. What improvements or changes were made in Client2?"
- "Why does the Vendeur table have a Com field that allows NULL while Salaire doesn't?"
- "Explain the purpose of each column in the Commande table and how it relates to the overall database structure."
- "What is the significance of using CONSTRAINT naming conventions (like C_pk_numcli)? How does this help in database management?"
- "Why might DateCom in the Commande table be added as NOT NULL through an ALTER TABLE statement instead of in the initial creation?"
- "Looking at the LigneCom table, explain why it needs both NumCom and NumLig for its primary key."
- "What would happen if you tried to insert a product with NULL QteSto before and after the DEFAULT(0) constraint was added?"
- "Explain the relationship chain between LigneCom, Commande, and Client tables through their foreign key constraints."
# Flascards

## references/links
* 
