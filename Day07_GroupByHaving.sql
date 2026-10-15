

--Write an SQL query to display each marks value and the number of students who obtained those marks. Show only those marks values that have more than one student.
--Use your existing students table with columns id, name, and marks.


Select marks ,count(*) from Students
GROUP BY Marks HAVING count(*) > 1;

--“I used GROUP BY to group students by marks and HAVING to display only marks obtained by more than one student.”

//////////////////////////////////

Select * from Students;

///////////////////////////////

INSERT INTO STUDENTS(id , name , marks)
VALUES
(5 , 'Rahul', 85),
(6 , 'Neha', 65),
(7 , 'Amit' , 85),
(8 , 'Om' , 92),
(9 , 'Ravi' , 45),
(10 , 'Kiran' ,85);

////////////////////////////

Select * from students;

//////////////////////////////////////////

// 

--Question 2: Write an SQL query to display only those marks values that were obtained by exactly 2 students.



Select marks , count(*) from Students 
Group by marks Having count(*) = 2;


////////////////////////////////////////////////////

Select marks , count(*) from Students 
Group by marks Having count(*) >= 2;


///////////////////////////////////

--Write an SQL query to display marks values greater than 60, along with the number of students who obtained those marks. Show only groups containing more than one student.


SELECT marks, COUNT(*)
FROM students
WHERE marks > 60
GROUP BY marks
HAVING COUNT(*) > 1;


//////////////////////////////////////////////////////

--Write an SQL query to display each marks value and the number of students who obtained those marks. Show only those marks groups where the average marks value is greater than 70


SELECT marks, COUNT(*)
FROM students
GROUP BY marks
HAVING AVG(marks) > 70;