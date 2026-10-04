-- Change the group and subject names to select different grades.
SELECT
    s.id AS student_id,
    s.first_name,
    s.last_name,
    gr.name AS group_name,
    sub.name AS subject,
    g.grade,
    g.received_at
FROM grades AS g
JOIN students AS s ON s.id = g.student_id
JOIN groups AS gr ON gr.id = s.group_id
JOIN subjects AS sub ON sub.id = g.subject_id
WHERE gr.name = 'Група 1'
  AND sub.name = 'Математика'
ORDER BY s.last_name, s.first_name, g.received_at;
