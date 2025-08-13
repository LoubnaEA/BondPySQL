# 💘 BondPySQL
BondPySQL is a playful repository designed to make learning **Python** and **SQL** engaging and fun.  
Explore relationships and digital connections through SQL queries, focusing on understanding core concepts.

---

## Databases & Relationships
Welcome to a world where **Entity-Relationship modeling** meets the complexities of love !
This project offers a clear introduction to cardinalities, keys, constraints and more. All through the lens of romance.

Think of this README as your ***love at first sight*** moment : a quick, charming overview to spark your interest.  
For a deeper dive (complete with diagrams, extended examples, analogies), head over to the **Wiki**, your go-to resource for a more detailed exploration.

### 2.2 💎 **Primary & Foreign Keys,** ***The one & only***    
🔹️ **Primary 🗝️** = the one who uniquely identifies you in their heart.  
🔹️ **Foreign 🗝️** = a link to someone else’s **primary 🗝️** (sometimes harmless, sometimes… a love triangle).

[🔹️ Primary 🗝️ : *the one who makes you unique in their heart*    
 🔹️ Foreign 🗝️ : *the link that ties you to another*  
 🔹️ Referential integrity : *never breaking the trust*  ]

### 2.3 💎 **Integrity Constraints,** ***The rules of engagement*** 
🔹️ NOT NULL Constraints, *no ghosting allowed* 👻 
`NULL` in a DB = missing data 👻

[🔹️ NOT NULL : *no ghosting allowed* 👻  
 🔹️ UNIQUE : *total exclusivity*  
 🔹️ CHECK : *no deal-breakers allowed*  
 🔹️ DEFAULT : *the “usual habits” of the relationship*  ]  

### 2.5 💎 **Attributes, Relationships & More,** ***The little things that matter***  
 🔹 **Attributes**, 
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

[🔹️ **Attributes**, *those charming little quirks like `eye_color`, `humor`, `height`... that make each entity unique*  
 🔹️ **Relationships & Cardinalities**, *one-to-one, one-to-many, many-to-many... the many ways love can connect us*  
 🔹️ Mapping **ER Diagrams** to Relational Schema : *turning your love story into a solid DB plan*  ]     

### 5.5 💎 **Constraints,** ***Deal-breakers & promises***  
`NOT NULL` = commitment required.    --- *boundaries in love*
`UNIQUE` = no duplicates allowed (exclusivity).  
`CHECK` constraints = deal-breakers.  
Violating constraints → errors… or 💔

[🔹️ **Primary 🗝️** constraints, *exclusivity guaranteed*    
 🔹️ **Foreign 🗝️** constraints and referential actions, *trust and fidelity*    
 🔹️ **UNIQUE** & **CHECK** constraints, *no cheating, no crossing red lines*   
 🔹️ DEFAULT values and **NOT NULL** enforcement, *habits and commitments* ]  

### 6.3 💎 **JOINS,** ***How couples form***  
`INNER JOIN`  Both agree 💑 both participate.  
`LEFT JOIN`  One is committed, the other… not so much.  
`FULL OUTER JOIN`   Everyone’s connected, somehow.

[🔹️ **INNER JOIN** 💑 *mutual love and agreement*     
 🔹️ **LEFT JOIN** and **RIGHT JOIN**, preserving rows : *one-sided love stories with hope*  
 🔹️ **FULL OUTER JOIN**, all rows from both sides 🌍 *everyone’s connected, no one’s left out*      
 🔹️ **CROSS JOIN**, Cartesian product : *wild, unpredictable chemistry*   
 🔹️ Self-joins & aliases, *loving yourself, or secret admirers*  ]  

---

## Table of Contents, *The Map of Love in SQL*    
### 💘 *First dates with Databases*
1.1 💎 ***Laying the foundation for a strong relationship***  
 🔹️ What is a DB ?  
 🔹️ Types of Data : Structured, Semi-structured, Unstructured  
 🔹️ DB Systems vs File Systems  
 🔹️ The Language *of love* (DB Edition) : Database, DBMS, Schema, Instance  
 🔹️ Available “Models” : Relational, Hierarchical, Network   
 🔹️ Benefits of Using Databases  

1.2 💎 ***Finding the one that fits your style*** **(Types of Databases)**  
 🔹️ **Relational Database**s, *structured love*   
 🔹️ NoSQL : Key-Value, Document, Column, Graph... *free love*  
 🔹️ NewSQL & Distributed Databases, *technical polyamory*   
 🔹️ Embedded Databases, *love to-go*  
 🔹️ Cloud Databases and DBaaS (Database-as-a-Service), *long-distance love that works*   

1.3 💎 ***Your Data’s matchmaker***, **DBMS**      
 🔹️ Definition and Roles of a DBMS (Database Management Systems)  
 🔹️ Main Components of a DBMS, *the vital organs of a data relationship*   
 🔹️ Types of DBMS : Centralized, Distributed, Open Source, Commercial  
 🔹️ Key Features : ACID, Scalability, Security  
 🔹️ Popular DBMS *players* (PostgreSQL, MySQL, Oracle, SQL Server…)  

### 💘 Modeling *love* : ER Model & Relationships  
2.1 💎 **Tables, Rows, and Columns,** ***Our couple’s portrait in data format***  
 🔹️ Table structure (relation)  
 🔹️ Data Types of Columns  
 🔹️ Schema vs Instance (*the plan vs the reality*)  

2.2 💎 **Primary & Foreign Keys,** ***The one & only***    
 🔹️ Primary 🗝️ : *the one who makes you unique in their heart*    
 🔹️ Foreign 🗝️ : *the link that ties you to another*  
 🔹️ Referential integrity : *never breaking the trust*

2.3 💎 **Integrity Constraints,** ***The rules of engagement***  
 🔹️ NOT NULL : *no ghosting allowed* 👻  
 🔹️ UNIQUE : *total exclusivity*  
 🔹️ CHECK : *no deal-breakers allowed*  
 🔹️ DEFAULT : *the “usual habits” of the relationship*  

2.4 💎 **Normalization and Denormalization**    
 🔹️ Objectives of Normalization  
 🔹️ Normal Forms : 1NF, 2NF, 3NF  
 🔹️ When and Why to Denormalize  

2.5 💎 **Attributes, Relationships & More,** ***The little things that matter***  
 🔹️ **Attribute**s, *those charming little quirks like `eye_color`, `humor`, `height`... that make each entity unique*  
 🔹️ **Relationships & Cardinalities**, *one-to-one, one-to-many, many-to-many... the many ways love can connect us*  
 🔹️ Mapping **ER Diagrams** to Relational Schema : *turning your love story into a solid DB plan*     

### 💘 SQL *love* Language
3.1 💎 **Introduction and History**  
 🔹️ Origins and standardization of SQL, *how it became the love language of data*    
 🔹️ Dialects and Variants, *every DB has its own accent*  

3.2 💎 **DDL (Data Definition Language)** ***Setting up the stage***   
 🔹️ CREATE : making new TABLEs, INDEXes, VIEWs, *setting up your relationship’s home*  
 🔹️ ALTER : $tweaking your setup as love evolves*  
 🔹️ DROP : *sometimes, breaking up cleanly*  
 🔹️ Defining CONSTRAINTs : *setting boundaries to keep things healthy*  

3.3 💎 **DML (Data Manipulation Language),** ***Talking to your data***    
 🔹️ SELECT : *asking for what you want*  
 🔹️ INSERT : *adding new love interests (or data rows)*  
 🔹️ UPDATE : *changing details as feelings grow*  
 🔹️ DELETE : *letting go when it’s time*  

3.4 💎 **DCL (Data Control Language) & TCL (Transaction Control Language),** ***Managing permissions & promises***   
 🔹️ GRANT and REVOKE : *who’s allowed in your inner circle ?*  
 🔹️ Transactions: BEGIN, COMMIT, ROLLBACK... *promises you make and keep*   

### 💘 Data Manipulation (DML), *Flirting with Data* : SELECT, INSERT, UPDATE & DELETE  🚬🍷   
4.1 💎 **SELECT: Simple and Advanced Queries,** ***The art of asking***  
 🔹️ Basic SELECT syntax  Basic SELECT syntax, *“Show me what you’ve got!”*  
 🔹️ Filtering with WHERE, *finding the one who matches your heart’s criteria*  
 🔹️ ORDER BY, *sorting the contenders by charm, kindness or any attribute*   
 🔹️ LIMIT & OFFSET, *dating in batches, not all at once*   
 🔹️ Aliases, *nicknames tables and columns*    
 🔹️ Combining conditions (AND, OR, NOT), *complex feelings need complex queries*    

4.2 💎 **INSERT : Adding Data,** ***Adding new lovers to the story***  
 🔹️ Basic INSERT syntax, *welcoming new entries to your DB heart*   
 🔹️ Multiple inserts, *group dates !*  
 🔹️ INSERT with SELECT (inserting from another table), *introducing friends of friends*  
 🔹️ Handling default and null values  

4.3 💎 **UPDATE : Modifying Data,** ***Changing the details***  
 🔹️ Basic UPDATE syntax, *evolving feelings over time*  
 🔹️ Updating with WHERE, *only change what’s meant to change*  
 🔹️ Using subqueries in UPDATE, *subtle shifts behind the scenes*  
 🔹️ Preventing accidental mass updates, *beware the missing WHERE !*    

4.4 💎 **DELETE : Removing Data,** ***Letting go gracefully***  
 🔹️ Basic DELETE syntax, *parting ways respectfully*  
 🔹️ DELETE with WHERE, *choosing who to say goodbye to*  
 🔹️ Cascading deletes and constraints impact, *when breakups affect the whole family*  
 🔹️ Using TRUNCATE for fast deletion, *wiping the slate clean quickly*  

4.5 💎 **Advanced Clauses and Expressions,** ***Adding spice to the conversation***    
 🔹️ CASE statements for conditional logic, *making conditional choices like in matters of the heart*  
 🔹️ String functions (CONCAT, SUBSTR, LENGTH), *crafting love letters*   
 🔹️ Date/time functions, *marking special moments and anniversaries*   
 🔹️ Mathematical functions, *calculating love scores and compatibility*   

### 💘 Table Structure and Management (DDL), *Building a love nest*    
5.1 💎 **CREATE TABLE: Table Creation,** ***The blueprint of togetherness***    
 🔹️ Syntax for creating tables, *laying the foundation*  
 🔹️ Defining columns & data types, *who brings what to the relationship*  
 🔹️ Primary keys & constraints at creation, *locking in exclusivity*  
 🔹️ Creating indexes, *speeding up finding “the one”*   

5.2 💎 **ALTER TABLE : Structural Modifications,** ***Growing & adapting***   
 🔹️ Adding and dropping columns, *welcoming new traits or letting go of old ones*    
 🔹️ Changing data types, *evolving preferences*  
 🔹️ Adding and dropping constraints (P🗝️, F🗝️, unique), *setting new boundaries or relaxing old ones*  
 🔹️ Renaming tables and columns, *fresh starts and new identities*   

5.3 💎 **DROP TABLE : Deletion,** ***Saying goodbye***  
 🔹️ Syntax for dropping tables, *clean breakups*  
 🔹️ Impact on dependent objects (indexes, Fforeign keys), *knowing who else gets hurt*  
 🔹️ CASCADE option, *breaking up with everyone involved* 

5.4 💎 **Indexing : Creating and Optimizing Indexes,** ***Finding “the one” instantly instead of scanning the whole dating pool***  
 🔹️ Why indexes matter, *no endless swiping*  
 🔹️ Types of indexes (B-tree, hash, unique, composite), *different ways to catch the eye*  
 🔹️ Creating & dropping indexes, *managing your dating pool*  
 🔹️ Performance impact, *love can be fast or slow, choose wisely*  

5.5 💎 **Constraints,** ***Deal-breakers & promises***  
 🔹️ **Primary 🗝️** constraints, *exclusivity guaranteed*    
 🔹️ **Foreign 🗝️** constraints and referential actions, *trust and fidelity*    
 🔹️ **UNIQUE** & **CHECK** constraints, *no cheating, no crossing red lines*   
 🔹️ DEFAULT values and **NOT NULL** enforcement, *habits and commitments*    

### 💘 Advanced Queries and SQL Functions, *Taking love to the next level*  
6.1 💎 **Aggregate Functions,** ***Counting your blessings***  
 🔹️ **COUNT, SUM, AVG, MIN, MAX** : *measuring love in numbers*    
 🔹️ **GROUP BY**, *gathering loved ones into meaningful groups*   
 🔹️ **HAVING** filtering those groups, *only the special ones stay*   

6.2 💎 **GROUP BY and HAVING Clauses**  
 🔹️ Grouping by one or more attributes, *clustering compatible souls*  
 🔹️ **WHERE** vs **HAVING**, *filtering before or after the grouping dance*   
 🔹️ Using **GROUP BY** in complex queries, *juggling love and logic* 

6.3 💎 **JOINS,** ***How couples form***  
 🔹️ **INNER JOIN** 💑 *mutual love and agreement*     
 🔹️ **LEFT JOIN** and **RIGHT JOIN**, preserving rows : *one-sided love stories with hope*  
 🔹️ **FULL OUTER JOIN**, all rows from both sides 🌍 *everyone’s connected, no one’s left out*      
 🔹️ **CROSS JOIN**, Cartesian product : *wild, unpredictable chemistry*   
 🔹️ Self-joins & aliases, *loving yourself, or secret admirers*  

6.4 💎 ***Secrets within secrets***   
 🔹️ What are **Subqueries** (scalar, correlated) ? *Little love notes hidden inside others*  
 🔹️ Using **Subqueries** in SELECT, FROM, WHERE clauses, *nested feelings*  
 🔹️ Performance tips, *don’t let love slow down*  

6.5 💎 **Views and Materialized Views,** ***Rose-tinted glasses***  
 🔹️ Creating and using views, *curated snapshots*    
 🔹️ Updating views and limitations, *changing perspectives*    
 🔹️ Materialized views and refresh strategies, *keeping memories fresh and quick to recall*  

6.6 💎 **Window Functions,** ***Analyzing love in motion***  
 🔹️ Introduction, *viewing love with a moving window*  
 🔹️ ROW_NUMBER(), RANK(), DENSE_RANK(), *ranking the suitors*  
 🔹️ Aggregate window functions (OVER clause), *running totals, moving averages of affection*  
 🔹️ Use cases, *trends, streaks and patterns in romance* 

6.7 💎 **Triggers and Stored Procedures,** ***Rituals and sparks***  
 🔹️ What are triggers ? *Sparks that set off actions automatically*   
 🔹️ Creating triggers for INSERT, UPDATE, DELETE, *romance in motion*  
 🔹️ Stored procedures, *weekly date nights, morning coffees scripted*  
 🔹️ Pros and cons, *balance between automation and surprises*  

### 💘 Transactions and Concurrency Control, *Committing to exclusivity or breaking up gracefully*   
7.1 💎 **ACID Properties** 🫠 ***The pillars of a trustworthy relationship***  
 🔹️ **A**tomicity, *all or nothing execution*  
 🔹️ **C**onsistency, *maintaining DB integrity*     
 🔹️ **I**solation, *ensuring transactions don’t interfere like bad timing*   
 🔹️ **D**urability, *once committed, forever remembered*   

7.2 💎 **Transaction Commands,** ***Keeping promises***   
 🔹️ BEGIN TRANSACTION / START TRANSACTION, *saying “let’s try this”*  
 🔹️ COMMIT : save changes, *sealing the deal*  
 🔹️ ROLLBACK : undo changes, *taking a step back*  
 🔹️ SAVEPOINT : partial rollback, *mid-date checkpoints*  

7.3 💎 **Transaction Isolation Levels,** ***How private is your love ?***  
 🔹️ Read Uncommitted, *gossip allowed, but beware the noise*  
 🔹️ Read Committed, *only confirmed truths*  
 🔹️ Repeatable Read, *consistency across the board*   
 🔹️ Serializable  Serializable, *total exclusivity, one love at a time*  
 🔹️ Impact on concurrency and performance, *balancing love and speed*   

7.4 💎 **Locking and Concurrency Control,** ***Managing the dating pool***  
 🔹️ Types of locks : shared (*friendly*), exclusive (*jealous*)  
 🔹️ Deadlocks : detection and resolution, *both waiting for the other to make the first move* 💔   
 🔹️ Optimistic vs pessimistic concurrency, *trusting vs protecting your heart*   

### 💘 Performance Optimization ⚡ *Keeping the spark alive* 
8.1 💎 **Query Execution Plans,** ***Reading the love letters carefully***   
 🔹️ Understanding EXPLAIN plans, *decoding what’s really going on*  
 🔹️ Spotting slow queries, *no one likes waiting forever for a text*    
 🔹️ Index usage & scans, *shortcuts to your beloved’s heart*    

8.2 💎 **Indexing Strategies,** ***Finding “the one” quicker***  
 🔹️ Choosing columns to index, *focusing on the important traits*  
 🔹️ Composite indexes, *multi-talented charmers*  
 🔹️ Index maintenance & costs, *keeping your dating pool tidy*  

8.3 💎 **Partitioning and Sharding,** ***Long-distance love made manageable***   
 🔹️ Table partitioning methods, *dividing and conquering*  
 🔹️ Horizontal vs Vertical partitioning, *different ways to share space*  
 🔹️ Distributed databases & sharding, *syncing feelings across miles* 🌍  

8.4 💎 **Writing Efficient Queries,** ***Making every word count***    
 🔹️ Avoiding unnecessary columns & rows, *no filler in your love letters*   
 🔹️ Using joins efficiently, *balancing closeness and independence*   
 🔹️ Subqueries vs joins, *choosing the right path to the heart*   
 🔹️ Caching and materialized views, *quick access to favorite memories*    

### 💘 Security and DB Administration   
9.1 💎 **User Management and Permissions 🛡️** ***Who gets the VIP access ?***    
 🔹️ Creating and managing users, *inviting the right people to your circle*    
 🔹️ Roles and privileges, *defining who can see and do what*    
 🔹️ Principle of Least Privilege, *only give as much love (and access) as needed*    

9.2 💎 **Authentication and Access Control 🔐** ***Locking the doors tight***   
 🔹️ Password policies, *strong locks keep out the wrong admirers*    
 🔹️ Multi-factor authentication, *double-checking love’s identity*   
 🔹️ Network access controls, *who’s allowed to knock on the door*  

9.3 💎 **Backup and Recovery,** ***Self-care after a breakup***  
 🔹️ Backup types (full, incremental, differential), *saving memories carefully*   
 🔹️ Backup strategies & schedules, *regular check-ins for safety*   
 🔹️ Recovery plans, *bouncing back after heartbreak*    

9.4 💎 **Auditing and Compliance,** ***Keeping things honest***  
 🔹️ Logging DB activities, *tracking who said what and when*   
 🔹️ GDPR, HIPAA, and regulations, *respecting privacy laws*   
 🔹️ Data masking & encryption, *hiding secrets*    

9.5 💎 **Data Encryption,**  ***Love letters in code***   
 🔹️ Encryption at rest, *locking your data when it’s chilling*    
 🔹️ Encryption in transit, *keeping secrets safe on the way*    
 🔹️ Key management   


## Contributing
Got cool SQL snippets, useful resources, or ideas to make BondPySQL even better ?  
Feel free to fork, tweak and send us a pull request.  

**We’d love to hear from you !** 🫶


## Resources
[SQL Tutorial - W3Schools](https://www.w3schools.com/sql/default.asp)  
[Python Tutorial - W3Schools](https://www.w3schools.com/python/default.asp)  






