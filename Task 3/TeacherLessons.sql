/*
Checks if any instructors has taught more than x amounts of lessons and lists them.
*/
SELECT instructor.name, count(lesson.instructor_id)
FROM lesson
INNER JOIN instructor ON lesson.instructor_id = instructor.instructor_id
GROUP BY instructor.name
HAVING COUNT(lesson.instructor_id) > x;
