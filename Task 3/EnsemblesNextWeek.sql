/*
Checks amount of students in ensembles in order to list how many spots are left. 
Then lists all ensembles the following week and their number of available spots.

*/
SELECT genre, lesson.date, lesson.time, to_char(lesson.date, 'Day') AS d, CASE  
    WHEN ensemble.amount_students = ensemble.max_students THEN 'FULL'
    WHEN ensemble.amount_students = ensemble.max_students - 1 THEN 'ONE SPOT LEFT'
    WHEN ensemble.amount_students = ensemble.max_students - 2 THEN 'TWO SPOTS LEFT'
    ELSE 'MORE SPOTS LEFT'
END AS spots_left
FROM lesson
LEFT JOIN ensemble ON ensemble.lesson_id = lesson.lesson_id
WHERE date_trunc('week', lesson.date) = date_trunc('week', now()) + interval '1 week'
ORDER BY genre, d;
