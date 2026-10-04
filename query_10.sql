-- Change student_id and teacher_id to select a different student and teacher.
SELECT DISTINCT
    s.id AS student_id,
    s.first_name AS student_first_name,
    s.last_name AS student_last_name,
    t.id AS teacher_id,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name,
    sub.id AS subject_id,
    sub.name AS subject
FROM students AS s
JOIN grades AS g ON g.student_id = s.id
JOIN subjects AS sub ON sub.id = g.subject_id
JOIN teachers AS t ON t.id = sub.teacher_id
WHERE s.id = 1
  AND t.id = 1
ORDER BY sub.name;
