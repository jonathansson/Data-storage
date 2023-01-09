/*
Counts number of students with x amount of siblings.

-1 in siblings for student not to count as their own sibling.
*/
SELECT siblings - 1 as siblings, SUM(siblings) as number
FROM (
    SELECT family_id, COUNT(family_id) as siblings
    FROM student
    GROUP BY family_id
) number
GROUP BY siblings
ORDER BY siblings ASC;