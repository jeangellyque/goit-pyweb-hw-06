-- Change the group name to list students in another group.
SELECT
    s.id,
    s.first_name,
    s.last_name,
    gr.name AS group_name
FROM students AS s
JOIN groups AS gr ON gr.id = s.group_id
WHERE gr.name = 'Група 1'
ORDER BY s.last_name, s.first_name;
