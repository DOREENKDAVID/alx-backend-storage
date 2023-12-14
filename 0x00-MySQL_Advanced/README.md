# MySQL advanced

# Resources
- [MySQL cheatsheet]
- [MySQL Performance: How To Leverage MySQL Database Indexing]
- [Stored Procedure]
- [Triggers]
- [Views]
- [Functions and Operators]
- [Trigger Syntax and Examples]
- [CREATE TABLE Statement]
- [CREATE PROCEDURE and CREATE FUNCTION Statements]
- [CREATE INDEX Statement]
- [CREATE VIEW Statement]


## Learning Objectives
- How to create tables with constraints
- How to optimize queries by adding indexes
- What is and how to implement stored procedures and functions in MySQL
- What is and how to implement views in MySQL
- What is and how to implement triggers in MySQL

Tasks
0. We are all unique!
mandatory
Write a SQL script that creates a table users following these requirements:

With these attributes:
id, integer, never null, auto increment and primary key
email, string (255 characters), never null and unique
name, string (255 characters)
If the table already exists, your script should not fail
Your script can be executed on any database

1. In and not out
mandatory
Write a SQL script that creates a table users following these requirements:

With these attributes:
id, integer, never null, auto increment and primary key
email, string (255 characters), never null and unique
name, string (255 characters)
country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
If the table already exists, your script should not fail
Your script can be executed on any database

2. Best band ever!
mandatory
Write a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans

Requirements:

Import this table dump: metal_bands.sql.zip
Column names must be: origin and nb_fans
Your script can be executed on any database

3. Old school band
mandatory
Write a SQL script that lists all bands with Glam rock as their main style, ranked by their longevity

Requirements:

Import this table dump: metal_bands.sql.zip
Column names must be: band_name and lifespan (in years until 2022 - please use 2022 instead of YEAR(CURDATE()))
You should use attributes formed and split for computing the lifespan
Your script can be executed on any database

4. Buy buy buy
mandatory
Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.

Quantity in the table items can be negative.
