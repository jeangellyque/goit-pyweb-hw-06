-- Change teacher_id to select another teacher.
SELECT
    t.id AS teacher_id,
    t.first_name,
    t.last_name,
    sub.id AS subject_id,
    sub.name AS subject
FROM teachers AS t
JOIN subjects AS sub ON sub.teacher_id = t.id
WHERE t.id = 1
ORDER BY sub.name;
