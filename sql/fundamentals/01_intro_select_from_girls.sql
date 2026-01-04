
/* THE INSPO OF THE REPOSITORY WAS */

SELECT *
FROM "GIRLS"
WHERE age
BETWEEN 18 AND 28           -- This condition filters for rows where the "age" column value is between 18 and 28
AND boyfriend = false       -- This condition filters for rows where the "boyfriend" column value is false, indicating that the girl is not currently in a relationship
AND is_cute = true          -- This condition filters for rows where the "is_cute" column value is true, indicating that the girl is considered cute
AND is_crazy = true         -- This condition filters for rows where the "is_crazy" column value is true, indicating that the girl is considered a bit crazy or fun-loving
AND smallwaist = true;      -- This condition filters for rows where the "smallwaist" column value is true, indicating that the girl has a small waist


/* 
The clause SELECT tells the DB to return all columns for each row that matches the WHERE clause conditions
The clause FROM "GIRLS" specifies the table from which to retrieve the data. In this case, the table is named "GIRLS"
The clause WHERE introduces the conditions that must be met for a row to be included in the results
*/

