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
