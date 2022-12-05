SELECT EXTRACT(MONTH FROM lesson.date), EXTRACT(YEAR FROM lesson.date),
SUM(CASE WHEN ensemble.lesson_id = lesson.lesson_id then 1 else 0 end) AS ensemble,
SUM(CASE WHEN private_lesson.lesson_id = lesson.lesson_id then 1 else 0 end) AS private,
SUM(CASE WHEN group_lesson.lesson_id = lesson.lesson_id then 1 else 0 end) AS group,
COUNT(*) as total
FROM lesson
LEFT JOIN ensemble ON ensemble.lesson_id = lesson.lesson_id
LEFT JOIN private_lesson ON private_lesson.lesson_id = lesson.lesson_id
LEFT JOIN group_lesson ON group_lesson.lesson_id = lesson.lesson_id
WHERE EXTRACT(YEAR FROM lesson.date) = 2022
GROUP BY EXTRACT(YEAR FROM lesson.date), EXTRACT(MONTH FROM lesson.date)
ORDER BY EXTRACT(MONTH FROM lesson.date);