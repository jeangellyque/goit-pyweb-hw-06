-- Change student_id and teacher_id to select another student and teacher.
SELECT
    s.id AS student_id,
    s.first_name AS student_first_name,
    s.last_name AS student_last_name,
    t.id AS teacher_id,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name,
    ROUND(AVG(g.grade)::numeric, 2) AS average_grade
FROM grades AS g
JOIN students AS s ON s.id = g.student_id
JOIN subjects AS sub ON sub.id = g.subject_id
JOIN teachers AS t ON t.id = sub.teacher_id
WHERE s.id = 1
  AND t.id = 1
GROUP BY s.id, s.first_name, s.last_name, t.id, t.first_name, t.last_name;
