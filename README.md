# BondPySQL  
**`💘 BondPySQL`** is designed to make learning **Python** and **SQL** engaging and accessible.  

Part 1 : SQL

---

## Databases & Relationships Modeling
An introduction to **Entity-Relationship modeling** : cardinalities, keys, constraints and more. All through the lens of romance.  
Practical examples make complex concepts easy to understand.

For the deeper dive, check out the **Wiki**.


### 2.5 **Attributes, Relationships & more,** ***The little things that matter***  
 🔹 **Attributes**, every entity has attributes : `eye_color`, `humor`, `height`, `income`, ...  
Querying feelings like :  
```sql
SELECT *
FROM soulmate
WHERE income >= 100000
AND height >= 180
AND eye_color = 'green'
ORDER BY kindness DESC;
````


## Pedagogical Progression, *From First Dates to Real Relationships*  
**`💘 BondPySQL`** follows a step-by-step learning journey, designed to mirror how SQL is learned and used in real-world systems.

### 👆 SQL Fundamentals (Query-Centric Learning)  

The first SQL files focus on isolated, playful queries, each illustrating a specific SQL concept :  
- SELECT, INSERT, UPDATE, DELETE  
- GROUP BY, HAVING, ORDER BY  
- CASE, WINDOW FUNCTIONS, UNION, etc.  

🏹 Mastering SQL syntax and logic while minimizing cognitive load.    

### ✌️ Application Scenario (Data-Model–Centric Learning)  

A second set of files reuses the same ideas and queries, but this time within :  
a global data model, clearly defined entities, primary & foreign keys, realistic relationships, meaningful JOINs.   

Here, queries are no longer isolated, they become part of a coherent application scenario, closer to what you would encounter in :  
real databases, production systems, QA, Data or BI contexts.  

🏹 Moving from writing SQL to thinking in data models and business logic.     

### 🤗 Why this approach ?  

Many SQL tutorials jump directly into complex schemas.  
**`💘 BondPySQL`** deliberately separates learning syntax from understanding systems.  
This progression builds confidence first, then bridges the gap to real-world structures and professional-grade reasoning.

## Structure

├─ 📁 docs/ → Documentation, guides, notes  
├─ 📁 schema/ → ER diagrams, data model visuals   
├─ 📁 sql/ → SQL scripts  
├─ 📁 tests/ → Test scripts, sample queries  
└─ README.md  


## Table of Contents, *The Map of Love in SQL*    
### [💘 *First dates with Databases*](https://github.com/LoubnaEA/BondPySQL/wiki/%F0%9F%92%98-First-dates-with-Databases)
1.1 *Laying the foundation for a strong relationship*  
1.2 *Finding the one that fits your style* **(Types of DBs)**  
1.3 **DBMS,** *Your Data’s matchmaker*    

### [💘 ER Model & Relationships](https://github.com/LoubnaEA/BondPySQL/wiki/%F0%9F%92%98-ER-Model-&-Relationships) 
2.1 **Tables, Rows and Columns**  
2.2 **Primary & Foreign Keys,** *The one & only*    
2.3 **Integrity Constraints,** *Rules of engagement*  
2.4 **Normalization and Denormalization**    
2.5 **Attributes, Relationships & more,** *The little things that matter*  
 
### [💘 SQL *love* Language](https://github.com/LoubnaEA/BondPySQL/wiki/%F0%9F%92%98-SQL-love-Language)
3.1 **Introduction**  
3.2 **DDL (Data Definition Language),** *Setting up the stage*   
3.3 **DML (Data Manipulation Language),** *Flirting with data* 🚬🍷     
3.4 **DCL (Data Control Language) & TCL (Transaction Control Language),** *Managing permissions & promises*   

### 💘 Data Manipulation (DML) 🚬🍷   
4.1 **SELECT (Simple and Advanced Queries),** *Art of asking*  
4.2 **INSERT (Adding Data),** *Adding new lovers to the story*  
4.3 **UPDATE (Modifying Data),** *Changing the details*  
4.4 **DELETE (Removing Data),** *Letting go gracefully*  
4.5 **Advanced Clauses and Expressions,** *Adding spice to the convo*    

### 💘 Table Structure and Management (DDL)  
5.1 **CREATE TABLE**  
5.2 **ALTER TABLE,** *Growing & adapting*   
5.3 **DROP TABLE,** *Saying goodbye*  
5.4 **Indexing,** *Finding “the one” instantly instead of scanning the whole dating pool* 🏄🏻‍♀️  
5.5 **Constraints,** *Deal-breakers & promises*  

### [💘 Advanced Queries and SQL Functions](https://github.com/LoubnaEA/BondPySQL/wiki/%F0%9F%92%98-Advanced-Queries-and-SQL-Functions)
6.1 **Aggregate Functions,** *Counting the blessings*  
6.2 **GROUP BY and HAVING Clauses**  
6.3 **JOINS,** *How couples form*  
6.4 *Secrets within secrets*   
6.5 **Views and Materialized Views**   
6.6 **Window Functions**   
6.7 **Triggers and Stored Procedures**  

### 💘 Transactions and Concurrency Control, *Committing to exclusivity or breaking up gracefully*   
7.1 **ACID Properties** 🫠 *The pillars of a trustworthy relationship*  
7.2 **Transaction Commands,** *Keeping promises***   
7.3 **Transaction Isolation Levels** 🫣 *How private is your love ?*  
7.4 **Locking and Concurrency Control,** *Managing the dating pool* 🤿   

### 💘 Performance Optimization ⚡ *Keeping the spark alive* 
8.1 **Query Execution Plans**      
8.2 **Indexing Strategies,** *Finding “the one” quicker*  
8.3 **Partitioning and Sharding**    
8.4 **Writing Efficient Queries,** *Making every word count*       

### 💘 Security and DB Administration   
9.1 **User Management and Permissions 🛡️** *Who gets the VIP access ?*    
9.2 **Authentication and Access Control 🔐** *Locking the doors tight*   
9.3 **Backup and Recovery**     
9.4 **Auditing and Compliance**   
9.5 **Data Encryption**   
  

## Contributing
Got useful SQL snippets, resources or ideas to improve BondPySQL ?  
Feel free to fork the repo, make changes and submit a pull request.  

Community contributions are welcome 🫶


## Resources
[SQL Tutorial - W3Schools](https://www.w3schools.com/sql/default.asp)  
[Python Tutorial - W3Schools](https://www.w3schools.com/python/default.asp)  
