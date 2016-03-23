SELECT first_name, last_name
FROM people
WHERE first_name = "Alexa"

-----------------------------------------------------------------------

SELECT phone_numbers.phone_number, first_name, last_name
FROM people
LEFT JOIN phone_numbers
ON people.id = phone_numbers.person_id

-----------------------------------------------------------------------

SELECT people.first_name, phone_numbers.phone_number
FROM people, phone_numbers
WHERE people.id = '483' AND people.id = phone_numbers.person_id

-----------------------------------------------------------------------

SELECT count(*)
FROM people
GROUP BY last_name
HAVING count(*) > 70


-------------------------
SELECT clients.name, COUNT(projects.id)
FROM clients
LEFT JOIN projects
ON clients.id =  projects.client_id
GROUP BY clients.name

---------------------------

SELECT time_entries.id , projects.name, clients.name
FROM time_entries
INNER JOIN projects
ON time_entries.project_id =  projects.id
INNER JOIN clients
ON projects.client_id =  clients.id

---------------------------------------

SELECT developers.name
FROM developers
INNER JOIN group_assignments
ON developers.id = group_assignments.developer_id
INNER JOIN groups
ON group_assignments.group_id = groups.id
WHERE groups.name = "Ohio sheep"

--------------------------------------------

SELECT clients.name, SUM(time_entries.duration)
FROM clients
INNER JOIN projects
ON clients.id =  projects.client_id
INNER JOIN time_entries
ON projects.id =  time_entries.project_id
INNER JOIN developers
ON time_entries.developer_id =  developers.id
WHERE developers.name = "Mrs. Lupe Schowalter"
GROUP BY clients.name
ORDER BY SUM(time_entries.duration) DESC
LIMIT 1

---------------------------------------

SELECT clients.name, SUM(time_entries.duration)
FROM clients
INNER JOIN projects
ON clients.id =  projects.client_id
INNER JOIN time_entries
ON projects.id =  time_entries.project_id
GROUP BY clients.name
ORDER BY SUM(time_entries.duration) DESC

---------------------------------------

SELECT clients.name, SUM(time_entries.duration)
FROM clients
INNER JOIN projects
ON clients.id =  projects.client_id
INNER JOIN time_entries
ON projects.id =  time_entries.project_id
INNER JOIN developers
ON time_entries.developer_id =  developers.id
WHERE developers.name = "Mrs. Lupe Schowalter"
GROUP BY clients.name
ORDER BY SUM(time_entries.duration) DESC
LIMIT 1

---------------------------------------

SELECT developers.name, count(comments.id)
FROM developers
LEFT JOIN comments
ON developers.id = comments.developer_id
GROUP BY developers.id
HAVING count(comments.id) = 0
