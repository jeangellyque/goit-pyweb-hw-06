-- Latest lesson is inferred from the most recent grade date for this group and subject.
-- Change the group and subject names to select different records.
WITH selected_group AS (
    SELECT id, name
    FROM groups
    WHERE name = 'Група 1'
),
selected_subject AS (
    SELECT id, name
    FROM subjects
    WHERE name = 'Математика'
),
latest_lesson AS (
    SELECT MAX(g.received_at) AS received_at
    FROM grades AS g
    JOIN students AS s ON s.id = g.student_id
    JOIN selected_group AS sg ON sg.id = s.group_id
    JOIN selected_subject AS ss ON ss.id = g.subject_id
)
SELECT
    s.id AS student_id,
    s.first_name,
    s.last_name,
    sg.name AS group_name,
    ss.name AS subject,
    g.grade,
    g.received_at
FROM grades AS g
JOIN students AS s ON s.id = g.student_id
JOIN selected_group AS sg ON sg.id = s.group_id
JOIN selected_subject AS ss ON ss.id = g.subject_id
JOIN latest_lesson AS ll ON ll.received_at = g.received_at
ORDER BY s.last_name, s.first_name;
