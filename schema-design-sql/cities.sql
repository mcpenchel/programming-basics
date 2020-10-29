-- Queries from the slide's challenges!

-- Query 1
SELECT *
FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE cities.name = "Paris";

-- Query 2
SELECT *
FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE cities.name = "Paris"
AND   inhabitants.age >= 18;

-- Query 3
SELECT c.created_at, p.first_name, d.first_name
FROM consultations c
JOIN patients p ON p.id = c.patient_id
JOIN doctors d ON d.id  = c.doctor_id
