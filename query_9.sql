-- Change student_id to list another student's courses.
SELECT DISTINCT
    s.id AS student_id,
    s.first_name,
    s.last_name,
    sub.id AS subject_id,
    sub.name AS subject
FROM students AS s
JOIN grades AS g ON g.student_id = s.id
JOIN subjects AS sub ON sub.id = g.subject_id
WHERE s.id = 1
ORDER BY sub.name;
