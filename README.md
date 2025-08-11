# BondPySQL
BondPySQL is a playful repository designed to make learning **Python** and **SQL** engaging and fun.  
Explore relationships and digital connections through SQL queries, focusing on understanding core concepts.

---

## The ER of Love, Databases & Relationships
Welcome to a world where **Entity-Relationship modeling** meets the complexities of love !
This project offers a clear introduction to cardinalities, keys, constraints and more. All through the lens of romance.

Think of this README as your ***love at first sight*** moment : a quick, charming overview to spark your interest.  
For a deeper dive (complete with diagrams, extended examples, analogies), head over to the **Wiki**, your go-to resource for a more detailed exploration.


## 💘 The ER of Love, Databases & Relationships
This guide blends **Entity–Relationship (ER) modeling** with love life metaphors, because relationships are all about **connections, rules and maintenance**.

### 🔹️ER, emergency room or Entity–Relationship ?
When things get messy, both hearts and schemas need an ER checkup.  
In databases, you use an **ER diagram** to fix broken data structures.  

### 🔹️Cardinalities, the shape of love
Cardinalities define how many entities can be linked to how many others.

| Database Cardinality     | Love Equivalent                                           |
|--------------------------|-----------------------------------------------------------|
| **1:N**  One-to-Many     | One person has multiple admirers; admirers are exclusive. |
| **N:N**  Many-to-Many    | Complex love networks.                                    |
| **0:1**  Zero-to-One     | Single or exclusive relationship (nullable heart).        |
| **0:N**  Zero-to-Many    | Open to dating, possibly multiple partners.               |

### 🔹️Relationships, between tables & hearts
In databases, relationships link tables.  
Many-to-Many relationships can be thrilling and complicated.  
Normalization helps avoid redundancy in both schemas and emotional entanglements.

### 🔹️Primary & Foreign Keys, your one and only
**Primary 🗝️** = the one who uniquely identifies you in their heart.  
**Foreign 🗝️** = a link to someone else’s **primary 🗝️** (sometimes harmless, sometimes… a love triangle).

### 🔹️Attributes, the little things that matter
Every entity has attributes : `eye_color`, `humor`, `height`, `income`, ...  
Querying feelings :  
```sql
SELECT *
FROM soulmate
WHERE income >= 100000
AND height >= 180
AND eye_color = 'green'
ORDER BY kindness DESC;
````

### 🔹️Constraints, boundaries in love
`NOT NULL` = commitment required.  
`UNIQUE` = no duplicates allowed (exclusivity).  
`CHECK` constraints = deal-breakers.  
Violating constraints → errors… or 💔

### 🔹️NULL Values, ghosting  
`NULL` in a database = missing data 👻

### 🔹️Joins, how couples form   
`INNER JOIN`  Both agree 💑 both participate.  
`LEFT JOIN`  One is committed, the other… not so much.  
`FULL OUTER JOIN`   Everyone’s connected, somehow.

### 🔹️Advanced LoveOps (DevOps for hearts)
These concepts keep the DB running smoothly :

| Concept                  | In Databases                                                            | In Love                                                                |
| ------------------------ | ----------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| **Transactions**         | Group changes into one operation. COMMIT = permanent ; ROLLBACK = undo. | Committing to exclusivity or breaking up before it’s final.            |
| **Deadlocks**            | Two processes wait forever.                                             | Both waiting for the other to text 1st.                                |
| **Triggers**             | Automatic actions after events.                                         | Saying something that sparks instant romance… or argument.             |
| **Views**                | Filtered perspectives.                                                  | Seeing your partner through rose-tinted glasses.                       |
| **Stored Procedures**    | Predefined routines.                                                    | Weekly date nights or morning coffee rituals.                          |
| **Indexes**              | Faster searches.                                                        | Finding “the one” instantly instead of scanning the whole dating pool. |
| **Backup** & **Restore** | Recover lost data.                                                      | Self-care after a breakup.                                             |
| **Schema Evolution**     | Changing structure without losing data.                                 | Growing together and adapting in a relationship.                       |
| **Data Integrity**       | Keeping data accurate & consistent.                                     | Maintaining trust and honesty.                                         |
| **Sharding**             | Splitting data across locations.                                        | Long-distance relationships that still sync feelings.                  |

### 🔹️Love as a well-designed ER Diagram
A solid ER diagram is :  
**Clear**, everyone knows the rules.  
**Consistent**, no contradictory data (or mixed signals).  
**Flexible**, able to evolve without breaking everything.  
**Efficient**, no wasted queries… or drama.  

Bad design choices can lead to data loss… or heartbreak. Choose your schema and your partner, wisely.  


## 💘 Cardinalities of Romantic Relationships
In **data modeling** (UML or databases), cardinality indicates how many elements in one table/entity can be linked to how many elements in another.  

### 1️⃣ One-to-One (1:1)
**Model :** One person is partnered with exactly one other person.  
Adam ❤️ Eve, each has only one official partner (exclusive relationship).  
**Technical risk :** If one leaves the table, the other becomes orphaned…  

### 2️⃣ One-to-Many (1\:N)
**Model :** One person can have multiple partners, but each partner is linked to only that one person.  
Giacomo has several flings, but those flings (theoretically) have no other relationships.  
**Technical risk :** This model is often unstable and can shift to Many-to-Many with uncontrolled updates…  

### 3️⃣ Many-to-Many (N\:N)
**Model :** Everyone can have multiple partners, and those partners can themselves have multiple others 💞  
**Technical risk :** Combinatorial explosion, complex conflict management (and calendar juggling).  

### 4️⃣ Zero-to-One (0:1)
**Model :** A person can be single or partnered, but not more than one.  
**Technical risk :** Long `NULL` periods in the DB…

### 5️⃣ Zero-to-Many (0\:N)
**Model :** A person can be alone or have several relationships in parallel.  
**Technical risk :** Often sparse table but with potential for rapid growth.

Cardinality determines the structure of relationships, but it’s the quality of the bonds that decides whether the schema holds over time… or collapses in a cascade of deletions.

---

## Table of Contents  
### 💘 Introduction to Databases
💎 **Definitions and Key Concepts**  
1.1.1 🔹️ What is a Database?  
1.1.2 🔹️ Types of Data : Structured, Semi-structured, Unstructured  
1.1.3 🔹️ Database Systems vs File Systems  
1.1.4 🔹️ Key Terminology : Database, DBMS, Schema, Instance  
1.1.5 🔹️ Overview of Data Models : Relational, Hierarchical, Network  
1.1.6 🔹️ Benefits of Using Databases  

💎 **Types of Databases**  
1.2.1 🔹️ Relational Databases  
1.2.2 🔹️ NoSQL Databases : Key-Value, Document, Column, Graph  
1.2.3 🔹️ NewSQL and Distributed Databases  
1.2.4 🔹️ Embedded Databases  
1.2.5 🔹️ Cloud Databases and Database-as-a-Service (DBaaS)  

💎 **DBMS (Database Management Systems)**  
1.3.1 🔹️ Definition and Roles of a DBMS  
1.3.2 🔹️ Main Components of a DBMS  
1.3.3 🔹️ Types of DBMS : Centralized, Distributed, Open Source, Commercial  
1.3.4 🔹️ Key Features of Modern DBMS : ACID, Scalability, Security  
1.3.5 🔹️ Popular DBMS Software Overview  

### 💘 Relational Model and Fundamental Concepts  ---  [💘 The ER of Love, Databases & Relationships](#-the-er-of-love-databases--relationships)  
💎 **Tables, Rows and Columns**  
2.1.1 🔹️ Structure of a Table (Relation)  
2.1.2 🔹️ Data Types of Columns  
2.1.3 🔹️ Schema vs Instance  

💎 **Keys and Referential Integrity**  ---  [Primary & Foreign Keys, your one and only](#primary--foreign-keys-your-one-and-only)  
2.2.1 🔹️ Primary Keys : Definition and Purpose  
2.2.2 🔹️ Foreign Keys and Relationships  
2.2.3 🔹️ Referential Integrity Constraints  

💎 **Integrity Constraints**  
2.3.1 🔹️ NOT NULL Constraints  
2.3.2 🔹️ UNIQUE Constraints  
2.3.3 🔹️ CHECK Constraints  
2.3.4 🔹️ DEFAULT Values  

💎 **Normalization and Denormalization**    
2.4.1 🔹️ Objectives of Normalization  
2.4.2 🔹️ Normal Forms : 1NF, 2NF, 3NF  
2.4.3 🔹️ When and Why to Denormalize  

💎 **Types of Relationships**  
2.5.1 🔹️ One-to-One  
2.5.2 🔹️ One-to-Many  
2.5.3 🔹️ Many-to-Many and Junction Tables  

 [💘 Cardinalities of Romantic Relationships](#-cardinalities-of-romantic-relationships)
   1. [One-to-One (1:1)](#1-one-to-one-11)
   2. [One-to-Many (1N)](#2-one-to-many-1n)
   3. [Many-to-Many (NN)](#3-many-to-many-nn)
   4. [Zero-to-One (0:1)](#4-zero-to-one-01)
   5. [Zero-to-Many (0N)](#5-zero-to-many-0n)

💎 **Conceptual Modeling with ER Diagrams**  
2.6.1 🔹️ Entities and Attributes  
2.6.2 🔹️ Relationships and Cardinalities  
2.6.3 🔹️ Mapping ER Diagrams to Relational Schema  

### 💘 SQL Language : Basics and Categories  
💎 **Introduction and History**  
3.1.1 🔹️ Origins and Standardization of SQL  
3.1.2 🔹️ Dialects and Variants  

💎 **DDL (Data Definition Language)**  
3.2.1 🔹️ CREATE Statements (TABLE, INDEX, VIEW)  
3.2.2 🔹️ ALTER Statements  
3.2.3 🔹️ DROP Statements  
3.2.4 🔹️ Defining Constraints in DDL  

💎 **DML (Data Manipulation Language)**  
3.3.1 🔹️ SELECT Queries  
3.3.2 🔹️ INSERT Statements  
3.3.3 🔹️ UPDATE Statements  
3.3.4 🔹️ DELETE Statements  

💎 **DCL (Data Control Language)**  
3.4.1 🔹️ GRANT and REVOKE Permissions  
3.4.2 🔹️ User and Role Management  

💎 **TCL (Transaction Control Language)**  
3.5.1 🔹️ BEGIN/START TRANSACTION  
3.5.2 🔹️ COMMIT  
3.5.3 🔹️ ROLLBACK  
3.5.4 🔹️ SAVEPOINT  

### 💘 Data Manipulation (DML)  
💎 **SELECT: Simple and Advanced Queries**  
4.1.1 🔹️ Basic SELECT syntax  
4.1.2 🔹️ Filtering rows with WHERE clause  
4.1.3 🔹️ Sorting results with ORDER BY  
4.1.4 🔹️ Limiting results with LIMIT / OFFSET  
4.1.5 🔹️ Using aliases for columns and tables  
4.1.6 🔹️ Combining conditions with AND, OR, NOT  

💎 **INSERT : Adding Data**    
4.2.1 🔹️ Basic INSERT syntax    
4.2.2 🔹️ Inserting multiple rows    
4.2.3 🔹️ INSERT with SELECT (inserting from another table)   
4.2.4 🔹️ Handling default and null values  

💎 **UPDATE: Modifying Data**  
4.3.1 🔹️ Basic UPDATE syntax  
4.3.2 🔹️ Updating with WHERE clause  
4.3.3 🔹️ Using subqueries in UPDATE  
4.3.4 🔹️ Preventing accidental mass updates  

💎 **DELETE: Removing Data**  
4.4.1 🔹️ Basic DELETE syntax  
4.4.2 🔹️ DELETE with WHERE clause  
4.4.3 🔹️ Cascading deletes and constraints impact  
4.4.4 🔹️ Using TRUNCATE for fast deletion  

💎 **Advanced Clauses and Expressions**  
4.5.1 🔹️ CASE statements for conditional logic  
4.5.2 🔹️ String functions (CONCAT, SUBSTR, LENGTH)  
4.5.3 🔹️ Date/time functions  
4.5.4 🔹️ Mathematical functions  

### 💘 Table Structure and Management (DDL)  
💎 **CREATE TABLE: Table Creation**  
5.1.1 🔹️ Syntax for creating tables  
5.1.2 🔹️ Defining columns and data types  
5.1.3 🔹️ Setting primary keys and constraints during creation  
5.1.4 🔹️ Creating indexes simultaneously  

💎 **ALTER TABLE: Structural Modifications**   
5.2.1 🔹️ Adding and dropping columns  
5.2.2 🔹️ Modifying column data types  
5.2.3 🔹️ Adding and dropping constraints (primary key, foreign key, unique)  
5.2.4 🔹️ Renaming tables and columns  

💎 **DROP TABLE: Deletion**  
5.3.1 🔹️ Syntax for dropping tables  
5.3.2 🔹️ Impact on dependent objects (indexes, foreign keys)  
5.3.3 🔹️ Drop with cascade option  

💎 **Indexing: Creating and Optimizing Indexes**   
5.4.1 🔹️ Purpose of indexes  
5.4.2 🔹️ Types of indexes (B-tree, hash, unique, composite)  
5.4.3 🔹️ Creating and dropping indexes  
5.4.4 🔹️ Index impact on performance and maintenance  

💎 **Constraints and Keys**  ---  [Constraints, boundaries in love](#constraints-boundaries-in-love)  
5.5.1 🔹️ Primary Key constraints  
5.5.2 🔹️ Foreign Key constraints and referential actions  
5.5.3 🔹️ Unique and Check constraints  
5.5.4 🔹️ Default values and NOT NULL enforcement  

### 💘 Advanced Queries and SQL Functions  
💎 **Aggregate Functions**  
6.1.1 🔹️ COUNT, SUM, AVG, MIN, MAX  
6.1.2 🔹️ Using aggregates with GROUP BY  
6.1.3 🔹️ Filtering grouped results with HAVING  

💎 **GROUP BY and HAVING Clauses**  
6.2.1 🔹️ Grouping data by one or multiple columns  
6.2.2 🔹️ Difference between WHERE and HAVING  
6.2.3 🔹️ Using GROUP BY in complex queries  

💎 **Joins: INNER, LEFT, RIGHT, FULL, CROSS**  ---  [Joins, how couples form](#joins-how-couples-form)  
6.3.1 🔹️ INNER JOIN: matching rows  
6.3.2 🔹️ LEFT JOIN and RIGHT JOIN: preserving rows  
6.3.3 🔹️ FULL OUTER JOIN: all rows from both sides  
6.3.4 🔹️ CROSS JOIN: Cartesian product  
6.3.5 🔹️ Self-joins and using aliases  

💎 **Subqueries**  
6.4.1 🔹️ Definition and types (scalar, correlated)  
6.4.2 🔹️ Using subqueries in SELECT, FROM, WHERE clauses  
6.4.3 🔹️ Performance considerations  

💎 **Views and Materialized Views**  
6.5.1 🔹️ Creating and using views  
6.5.2 🔹️ Updating views and limitations  
6.5.3 🔹️ Materialized views and refresh strategies  

💎 **Window Functions and Analytical Queries**  
6.6.1 🔹️ Introduction to window functions  
6.6.2 🔹️ ROW_NUMBER(), RANK(), DENSE_RANK()  
6.6.3 🔹️ Aggregate window functions (OVER clause)  
6.6.4 🔹️ Use cases : running totals, moving averages  

💎 **Triggers and Stored Procedures**  
6.7.1 🔹️ What are triggers?  
6.7.2 🔹️ Creating triggers for insert, update, delete  
6.7.3 🔹️ Stored procedures : definition and use cases  
6.7.4 🔹️ Advantages and limitations  

### 💘 Transactions and Concurrency Control
💎 **ACID Properties**  
7.1.1 🔹️ Atomicity : all or nothing execution  
7.1.2 🔹️ Consistency : maintaining database integrity  
7.1.3 🔹️ Isolation : transactions don’t interfere  
7.1.4 🔹️ Durability : committed changes are permanent  

💎 **Transaction Commands**  
7.2.1 🔹️ BEGIN TRANSACTION / START TRANSACTION  
7.2.2 🔹️ COMMIT : save changes  
7.2.3 🔹️ ROLLBACK : undo changes  
7.2.4 🔹️ SAVEPOINT : partial rollback  

💎 **Transaction Isolation Levels**  
7.3.1 🔹️ Read Uncommitted  
7.3.2 🔹️ Read Committed  
7.3.3 🔹️ Repeatable Read  
7.3.4 🔹️ Serializable  
7.3.5 🔹️ Impact on concurrency and performance  

💎 **Locking and Concurrency Control**   
7.4.1 🔹️ Types of locks (shared, exclusive)  
7.4.2 🔹️ Deadlocks : detection and resolution  
7.4.3 🔹️ Optimistic vs pessimistic concurrency  

### 💘 Performance Optimization  
💎 **Query Execution Plans**  
8.1.1 🔹️ Understanding explain plans  
8.1.2 🔹️ Identifying slow queries  
8.1.3 🔹️ Index usage and scans  

💎 **Indexing Strategies**    
8.2.1 🔹️ Choosing columns to index  
8.2.2 🔹️ Composite indexes  
8.2.3 🔹️ Index maintenance and costs  

💎 **Partitioning and Sharding**  
8.3.1 🔹️ Table partitioning methods  
8.3.2 🔹️ Horizontal vs vertical partitioning  
8.3.3 🔹️ Distributed databases and sharding  

💎 **Writing Efficient Queries**  
8.4.1 🔹️ Avoiding unnecessary columns and rows  
8.4.2 🔹️ Using joins efficiently  
8.4.3 🔹️ Subquery vs joins performance considerations  
8.4.4 🔹️ Caching and materialized views   

### 💘 Security and Database Administration  
💎 **User Management and Permissions**  
9.1.1 🔹️ Creating and managing users  
9.1.2 🔹️ Roles and privileges  
9.1.3 🔹️ Principle of least privilege  

💎 **Authentication and Access Control**   
9.2.1 🔹️ Password policies  
9.2.2 🔹️ Multi-factor authentication  
9.2.3 🔹️ Network access controls  

💎 **Backup and Recovery**  
9.3.1 🔹️ Backup types (full, incremental, differential)  
9.3.2 🔹️ Backup strategies and scheduling  
9.3.3 🔹️ Recovery techniques and disaster recovery plans  

💎 **Auditing and Compliance**  
9.4.1 🔹️ Logging database activities  
9.4.2 🔹️ GDPR, HIPAA, and other regulations  
9.4.3 🔹️ Data masking and encryption  

💎 **Data Encryption**  
9.5.1 🔹️ Encryption at rest  
9.5.2 🔹️ Encryption in transit  
9.5.3 🔹️ Key management  


   . [ER, emergency room or Entity–Relationship ?](#️er-emergency-room-or-entityrelationship-)
   . [Cardinalities, the shape of love](#cardinalities-the-shape-of-love)
   . [Relationships, between tables & hearts](#relationships-between-tables--hearts)
   . [Attributes, the little-things-that-matter](#attributes-the-little-things-that-matter)
   . [NULL Values, ghosting](#null-values-ghosting)
   . [Advanced LoveOps (DevOps for hearts)](#advanced-loveops-devops-for-hearts)
   . [Love as a well-designed ER Diagram](#love-as-a-well-designed-er-diagram)


## Contributing
Got cool SQL snippets, useful resources, or ideas to make BondPySQL even better?  
Feel free to fork, tweak and send us a pull request.  

**We’d love to hear from you !** 🫶


## Resources
[SQL Tutorial - W3Schools](https://www.w3schools.com/sql/default.asp)  
[Python Tutorial - W3Schools](https://www.w3schools.com/python/default.asp)  






