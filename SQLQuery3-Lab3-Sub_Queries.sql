----------------------------------------------------------
--					Lab 3
-- Date		: Jestha 17, 2080 (Wednesday (May 31, 2023))  
-- Author	: Pragyan Bhattarai
-- Roll		: THA077BEI030
----------------------------------------------------------
SELECT * FROM tbl_subjects;
SELECT * FROM tbl_students;
SELECT * FROM tbl_marks;

--1.  max age of student
SELECT MAX(age) AS max_age
FROM tbl_students;

--2. details of student with max age
SELECT * 
FROM tbl_students
WHERE age=(SELECT MAX(age) FROM tbl_students);

--3. count number of male
SELECT COUNT(gender) AS male_num
FROM tbl_students
WHERE gender='m';

SELECT AVG(age) AS avg_age
FROM tbl_students;

-- 5. Display the name, age and marks of students with highest marks among all subjects
SELECT name, age, sub_name, marks_obtained
FROM tbl_students, tbl_marks, tbl_subjects
WHERE marks_obtained=(SELECT MAX(marks_obtained) FROM tbl_marks)
AND tbl_marks.roll = tbl_students.roll
AND tbl_subjects.sub_code = tbl_marks.sub_code;

-- 6. Get sum of marks of all roll numbers with their name
SELECT name, (SELECT SUM(tbl_marks.marks_obtained) 
				FROM tbl_marks
				WHERE tbl_students.roll = tbl_marks.roll) AS total_marks
FROM tbl_students;

-- Inserting marks obtained by each student in each subject in tbl_marks
INSERT INTO tbl_marks(roll, sub_code, marks_obtained)
VALUES (2, 501, 99),(2,502,0),(2,503,88),(2,504,102),(2,505,98),(2,506,115);
INSERT INTO tbl_marks(roll, sub_code, marks_obtained)
VALUES (3, 501, 101),(3,502,68),(3,503,108),(3,504,120),(3,505,118),(3,506,115),
		(4, 501, 105),(4,502,88),(4,503,111),(4,504,121),(4,505,118),(4,506,115);
INSERT INTO tbl_marks(roll, sub_code, marks_obtained)
VALUES (5, 501, 100),(5,502,62),(5,503,106),(5,504,88),(5,505,108),(5,506,100),
		(6, 501, 109),(6,502,89),(6,503,110),(6,504,120),(6,505,128),(6,506,105),
		(7, 501, 105),(7,502,65),(7,503,104),(7,504,78),(7,505,78),(7,506,120),
		(8, 501, 45),(8,502,89),(8,503,17),(8,504,44),(8,505,14),(8,506,88),
		(9, 501, 100),(9,502,63),(9,503,106),(9,504,108),(9,505,109),(9,506,100),
		(10, 501, 103),(10,502,98),(10,503,109),(10,504,100),(10,505,128),(10,506,105),
		(11, 501, 100),(11,502,62),(11,503,106),(11,504,101),(11,505,108),(11,506,100),
		(12, 501, 109),(12,502,89),(12,503,110),(12,504,12),(12,505,18),(12,506,105),
		(13, 501, 100),(13,502,62),(13,503,106),(13,504,108),(13,505,108),(13,506,100),
		(14, 501, 109),(14,502,89),(14,503,110),(14,504,120),(14,505,148),(14,506,105),
		(15, 501, 111),(15,502,67),(15,503,116),(5,504,88),(5,505,108),(5,506,100);
