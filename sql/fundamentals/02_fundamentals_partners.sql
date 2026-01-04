
-- Partners Table

-- 1. All the Single Partners
-- Select all partners
-- DQL is used to fetch data from the database
SELECT * FROM partners;

-- 2. Sayonara, Small Fry Revenues
-- Delete partners with revenue under 2500
-- DML is used to manipulate data within tables
DELETE FROM partners WHERE revenue < 2500;

-- 3. New Bae Alert!
-- Update a specific partner's name (e.g., changing partner with ID 3)
-- DML: UPDATE is used to modify existing records
UPDATE partners SET name = 'New Name' WHERE partner_id = 3;

-- 4. Welcome, Newcomer!
-- Insert new partner
-- DML: INSERT INTO is used to add new records to a table
INSERT INTO partners (partner_id, name, revenue) 
VALUES (4, 'Raphael', 5000);

-- 5. Alphabetically Yours
-- Select all partners ordered alphabetically by name
-- DQL: ORDER BY is used to sort the result set
SELECT * FROM partners ORDER BY name;

-- 6. Adieu, A-Listers
-- Delete partners whose names start with 'A'
-- DML: DELETE FROM is used to remove records from a table
DELETE FROM partners WHERE name LIKE 'A%';


-- Matchmaker, Matchmaker, Make Me a Match

-- 7. Who's a Player, Baby?
-- Identify people with more than seven partners
-- DQL: GROUP BY groups rows that have the same values into summary rows
SELECT person_id, COUNT(partner_id) AS partner_count 
FROM relationships 
GROUP BY person_id 
HAVING COUNT(partner_id) > 7;

-- 8. Bye-Bye Body Count (for some)
-- Delete body count data for players
-- DML: UPDATE with SET to modify records
UPDATE relationships SET body_count = NULL WHERE person_id IN (
    SELECT person_id 
    FROM relationships 
    GROUP BY person_id 
    HAVING COUNT(partner_id) > 1
);

-- 9. The Player Board
-- Rank everyone by their body count
-- DQL: ORDER BY to sort data in descending order
SELECT person_id, COUNT(partner_id) AS body_count 
FROM relationships 
GROUP BY person_id 
ORDER BY body_count DESC;


-- The Unsung Heroes (and Heroines) of Love

-- 10. The Queen of Unrequited Feelings
-- Analyze unrecognized emotional investment (example based on fictive table structure)
-- DQL: SUM aggregates data
SELECT person_id, SUM(emotional_investment) AS total_investment 
FROM relationships 
WHERE reciprocated = 0 
GROUP BY person_id 
ORDER BY total_investment DESC;


-- The Ghosted and the Ghosters

-- 11. Ghostbusters, We Need You!
-- Analyze who gets ghosted the most
-- DQL: COUNT counts the number of rows
SELECT person_id, COUNT(*) AS ghosted_count 
FROM relationships 
WHERE status = 'ghosted' 
GROUP BY person_id 
ORDER BY ghosted_count DESC;

-- 12. Casper, the Friendly Ghost... Not!
-- Identify frequent ghosters
-- DQL: Similar to the previous query but with different criteria
SELECT person_id, COUNT(*) AS ghosting_count 
FROM relationships 
WHERE status = 'ghoster' 
GROUP BY person_id 
ORDER BY ghosting_count DESC;

-- 13. Seasonal Spooktacular
-- Analyze ghosting trends
-- DQL: Using CASE to determine the season
SELECT 
    CASE 
        WHEN EXTRACT(MONTH FROM ghosting_date) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(MONTH FROM ghosting_date) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM ghosting_date) IN (6, 7, 8) THEN 'Summer'
        WHEN EXTRACT(MONTH FROM ghosting_date) IN (9, 10, 11) THEN 'Autumn'Using CASE to determine the season
    END AS season,
    EXTRACT(YEAR FROM ghosting_date) AS year,
    COUNT(*) AS ghosting_count
FROM relationships 
WHERE status = 'ghosted'
GROUP BY season, year
ORDER BY year, season;

-- Define who has ghosted or blocked
SELECT person_id, partner_name, 'ghosted' AS action 
FROM relationships 
WHERE status = 'ghosted' AND ghosted_by = person_id 
UNION ALL 
SELECT person_id, partner_name, 'blocked' AS action 
FROM relationships 
WHERE blocked_by = person_id;

-- Define who was ghosted or blocked
SELECT partner_id AS person_id, partner_name, 'ghosted' AS action 
FROM relationships WHERE status = 'ghosted' AND ghosted_by = partner_id 
UNION ALL 
SELECT partner_id AS person_id, partner_name, 'blocked' AS action 
FROM relationships 
WHERE blocked_by = partner_id;


-- Love and Marriage

-- 14. Happily Ever After... or Maybe Not
-- Analyze marriage and divorce trends per year
-- DQL: FILTER allows conditional aggregation
SELECT EXTRACT(YEAR FROM marriage_date) AS year, 
       COUNT(*) FILTER (WHERE status = 'married') AS marriages, 
       COUNT(*) FILTER (WHERE status = 'divorced') AS divorces 
FROM relationships 
GROUP BY year 
ORDER BY year;


-- Tunes for Two

-- 15. Top 10 Love Songs (According to Your Ears)
-- Rank most popular romantic songs
-- DQL: LIMIT restricts the number of returned rows
SELECT song_id, COUNT(*) AS play_count 
FROM song_plays 
WHERE genre = 'romantic' 
GROUP BY song_id 
ORDER BY play_count DESC 
LIMIT 10;


-- The Battleground of Love

-- 16. The Most Common Fighting Points
-- Analyze common conflict types
-- DQL: Another example of using COUNT and GROUP BY
SELECT conflict_type, COUNT(*) AS conflict_count 
FROM conflicts 
GROUP BY conflict_type 
ORDER BY conflict_count DESC;


-- Feeling the Feels

-- 17. The Chatty Gender
-- Analyze message sentiment by gender
-- DQL: AVG function to calculate the average value
SELECT gender, AVG(sentiment_score) AS avg_sentiment 
FROM messages 
GROUP BY gender 
ORDER BY avg_sentiment DESC;


-- Settling Down or Settling In?

-- 18. Love in the Time of AARP
-- Analyze relationship duration by age and gender
-- DQL: Combining GROUP BY on multiple columns
SELECT age_group, gender, AVG(relationship_duration) AS avg_duration 
FROM relationships 
GROUP BY age_group, gender 
ORDER BY avg_duration DESC;

-- 19. How Long Does Singlehood Last, Anyway?
-- Analyze time between relationships
-- DQL: Using window functions like LAG to look at previous rows
SELECT person_id, AVG(time_between) AS avg_time_between 
FROM (SELECT person_id, 
             LAG(relationship_end_date) OVER (PARTITION BY person_id ORDER BY relationship_start_date) AS previous_end, 
             relationship_start_date - previous_end AS time_between 
      FROM relationships) AS time_diff 
GROUP BY person_id 
ORDER BY avg_time_between DESC;


-- First Date Dilemmas

-- 20. The Hotspots for First Encounters
-- Analyze popular first date locations
-- DQL: Basic COUNT and GROUP BY with ORDER BY
SELECT location, COUNT(*) AS first_date_count 
FROM first_dates 
GROUP BY location 
ORDER BY first_date_count DESC;


-- No Strings Attached

-- 21. Hookup Haven by Age
-- Analyze hookup trends by age
-- DQL: Another example of grouping and counting
SELECT age_group, COUNT(*) AS hookup_count 
FROM hookups 
GROUP BY age_group 
ORDER BY hookup_count DESC;


-- The Expectation vs. Reality Show

-- 22. Dreamers vs. Doers
-- Analyze expectation vs. reality in relationships
-- DQL: Calculating averages for comparison
SELECT person_id, AVG(expected_quality) AS avg_expected, AVG(actual_quality) AS avg_actual 
FROM relationships 
GROUP BY person_id 
ORDER BY avg_expected DESC;



/* DESCRIPTION and EXPLANATION of SQL SYNTAX and COMMANDS

DQL (Data Query Language): Used to query the database and retrieve data
    SELECT: Retrieves data from one or more tables
    GROUP BY: Groups rows sharing a property so that aggregate functions can be applied to each group
    ORDER BY: Sorts the result set of a query by one or more columns
    HAVING: Filters groups in the result set created by GROUP BY

DML (Data Manipulation Language): Used to manipulate data within tables
    INSERT INTO: Adds new records to a table
    UPDATE: Modifies existing records in a table
    DELETE FROM: Removes records from a table

DCL (Data Control Language): Manages access to the database (not explicitly used in the provided scripts)
    GRANT: Gives user's access privileges to the database
    REVOKE: Takes back permissions granted to users

TCL (Transaction Control Language): Manages transactions in the database (not explicitly used in the provided scripts)
    COMMIT: Saves the transaction's changes
    ROLLBACK: Reverts the transaction's changes
    SAVEPOINT: Sets a point within a transaction to which you can later roll back

Aggregate Functions:
    COUNT(*): Returns the number of rows
    SUM(): Returns the sum of a set of values
    AVG(): Returns the average value
    MAX(): Returns the maximum value
    MIN(): Returns the minimum value

Window Functions:
    LAG(): Accesses data from a previous row in the same result set without using a self-join

Filtering and Sorting:
    WHERE: Filters rows based on a condition
    LIKE: Searches for a specified pattern in a column
    LIMIT: Limits the number of rows returned by a query
*/