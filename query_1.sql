SELECT
    s.id,
    s.first_name,
    s.last_name,
    ROUND(AVG(g.grade)::numeric, 2) AS average_grade
FROM students AS s
JOIN grades AS g ON g.student_id = s.id
GROUP BY s.id, s.first_name, s.last_name
ORDER BY average_grade DESC, s.last_name, s.first_name
LIMIT 5;
