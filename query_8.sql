-- Change teacher_id to calculate the average for another teacher.
SELECT
    t.id AS teacher_id,
    t.first_name,
    t.last_name,
    ROUND(AVG(g.grade)::numeric, 2) AS average_grade
FROM teachers AS t
JOIN subjects AS sub ON sub.teacher_id = t.id
JOIN grades AS g ON g.subject_id = sub.id
WHERE t.id = 1
GROUP BY t.id, t.first_name, t.last_name;
