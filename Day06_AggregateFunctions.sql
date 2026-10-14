
--Write an SQL query to display the total number of students in the students table.


SELECT count(*) as total_students FROM Students;

SELECT * FROM students;



--Write an SQL query to find the highest marks among all students in the students table.

Select marks as highest_marks from Students
ORDER BY marks DESC LIMIT 1;

Select max(marks) as highest_marks from Students;
--The MAX() aggregate function returns the highest value in a column.


//////////////////////////////////////

--Write an SQL query to find the lowest marks among all students in the students table.


SELECT min(marks) as lowest_marks from students;


//////////////////////////////////////////////


--Write an SQL query to calculate the average marks of all students in the students table.

SELECT avg(marks) as average_marks from students;

--“The AVG() aggregate function calculates the average of numeric values in a column

/////////////////////////////////////////////

--Write an SQL query to display the total sum of all students' marks.

Select sum(marks)as totalMarks_sum from Students;

////////////////////////////////////////////////////////