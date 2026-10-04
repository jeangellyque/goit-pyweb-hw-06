-- Change the subject name to compare groups in another subject.
SELECT
    gr.id AS group_id,
    gr.name AS group_name,
    sub.name AS subject,
    ROUND(AVG(g.grade)::numeric, 2) AS average_grade
FROM grades AS g
JOIN students AS s ON s.id = g.student_id
JOIN groups AS gr ON gr.id = s.group_id
JOIN subjects AS sub ON sub.id = g.subject_id
WHERE sub.name = 'Математика'
GROUP BY gr.id, gr.name, sub.name
ORDER BY gr.name;
