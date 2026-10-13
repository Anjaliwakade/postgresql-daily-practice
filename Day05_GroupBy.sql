--Write an SQL query to display each student's marks and the total number of students who have the same marks.

Select marks , count(*) from Students 
group by marks;