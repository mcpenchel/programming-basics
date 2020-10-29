-- Learning the syntax!

-- SELECT is where you specify the columns you want to have
-- in your result

-- FROM is where you specify the table where you want to query
-- from

-- JOIN is when you want to connect two (or more) tables through
-- their foreign_keys / primary_keys

-- WHERE is where you filter down the results

-- GROUP BY is to group information by a specific field

-- ORDER BY is to order the information by looking at a column
-- and specifying if you want it ASC(ending) or DESC(ending)

-- Two useful functions that we have: COUNT to count the number
-- of rows; LIKE to do an "inclusion" search

SELECT last_name, age # fields separated by comma
FROM patients; # table_name

SELECT * # * represents all columns
FROM patients;

SELECT * FROM patients;

SELECT *
FROM patients
WHERE age = 31;

SELECT *
FROM patients
WHERE last_name = "Penchel";

SELECT *
FROM patients
WHERE last_name = "Penchel"
AND age = 31;

SELECT *
FROM doctors
WHERE specialty LIKE "%Surgery"; # finds Cardiac Surgery
                                 # finds Drum Surgery
                                 # finds Shrubbles Surgery
                                 # finds ASurgery

SELECT *
FROM doctors
WHERE specialty LIKE "%Surgery%"; # doesn't find Cardiac Surgery

SELECT * FROM patients ORDER BY age ASC;
SELECT * FROM patients ORDER BY age DESC;

SELECT COUNT(*) FROM doctors; # => 3
SELECT COUNT(*) FROM doctors WHERE specialty LIKE '%Surgery'; # => 2

--   Cardiac Surgery -> 1
--   Drum Surgery -> 1
--   Psychiatrist -> 2

SELECT COUNT(*), specialty
FROM doctors
GROUP BY specialty

-- To create a new SQLITE database just touch file.db

-- Inner Join
SELECT patients.first_name, patients.last_name,
       doctors.first_name, specialty
FROM consultations
JOIN doctors ON consultations.doctor_id = doctors.id
JOIN patients ON consultations.patient_id = patients.id

-- Another way to type the same thing!

-- SELECT patients.first_name, patients.last_name,
--        doctors.first_name, specialty
-- FROM consultations, patients, doctors
-- WHERE consultations.doctor_id = doctors.id
-- AND   consultations.patient_id = patients.id
