--create a database and table 

CREATE DATABASE student_db;

\c student_db;

SELECT current_database();

CREATE TABLE students(id INT PRIMARY KEY , name VARCHAR(50), marks INT);

INSERT INTO students(id, name, marks)
VALUES
    (1, 'Anjali',85),
    (2 , 'Priya', 65),
    (3, 'Sneha', 92),
    (4, 'Pooja' , 45);


-- Check existing student records
SELECT * FROM students;