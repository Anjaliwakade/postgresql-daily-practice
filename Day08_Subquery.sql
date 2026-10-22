--Question: Write a query to display the names and marks of students who scored more than the average marks of all students.


SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

select * from students

////////////////////////////////////////////////////

--Write a query to display the names of students who scored the highest marks in the students table.

Select name from students where marks = (select max(marks) from students);


///////////////////////////////////

--Write a query to display the names of students who scored below the average marks of all students.

SELECT name
FROM students
WHERE marks < (SELECT AVG(marks) FROM students);

////////////////////////////////////

--Write a query to display the names and marks of students who scored the same marks as Rahul.

SELECT name, marks
FROM students
WHERE marks = (SELECT marks FROM students WHERE name = 'Rahul');

///////////////////////////////////////

--Write a query to display the names of students who scored more marks than Rahul.

SELECT name
FROM students
WHERE marks > (SELECT marks FROM students WHERE name = 'Rahul');

///////////////////////////////////////////////

--Display the names and marks of students who scored the second-highest distinct marks in the students table.


SELECT name, marks
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
    WHERE marks <> (
        SELECT MAX(marks)
        FROM students
    )
);

/////////////////////////////////////////////////

--Write a query to display the names of students whose marks are greater than the average marks of students who scored more than 70.

SELECT name
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
    WHERE marks > 70
);

//////////////////////////////////

--Write a query to display the names of students who scored more marks than at least one student in the table.

SELECT name
FROM students
WHERE marks > (SELECT MIN(marks) FROM students);

/////////////////////////////////////////////////////////

--Write a SQL query to display the names of students who scored the same marks as at least one other student.

select name from students 
   where marks IN
     (select marks from students group by marks HAVING count(*) > 1);

///////////////////////////////////////////////////////////////

-- 

