SELECT s1.name, COUNT(s1.family_id) - 1 FROM student s1
LEFT JOIN student s2 ON s1.family_id = s2.family_id
GROUP BY s1.name, s1.family_id