-- Change the subject name to find the top student in another subject.
SELECT
    s.id,
    s.first_name,
    s.last_name,
    sub.name AS subject,
    ROUND(AVG(g.grade)::numeric, 2) AS average_grade
FROM students AS s
JOIN grades AS g ON g.student_id = s.id
JOIN subjects AS sub ON sub.id = g.subject_id
WHERE sub.name = 'Математика'
GROUP BY s.id, s.first_name, s.last_name, sub.name
ORDER BY average_grade DESC, s.last_name, s.first_name
LIMIT 1;
