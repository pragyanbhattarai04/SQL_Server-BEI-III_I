----------------------------------------------------------
--					Lab 2 (Part 2)
-- Date		: Jestha 8, 2080 (Monday (May 22, 2023))  
-- Author	: Pragyan Bhattarai
-- Roll		: THA077BEI030
-- Description: Dropped old database of part 1 and created 
--				new database
----------------------------------------------------------

SELECT * FROM tbl_students;

-- Insering into students table
INSERT INTO tbl_students
VALUES (1, 'Shrawan Poudel', 'm', 21, 'Bhaktapur', 980000001),
		(2, 'Sita Nepal', 'f', 45, 'Bhaktapur', 980000002),
		(3, 'Dipesh Bhattarai', 'm', 42, 'Morang', 980000003),
		(4, 'Pranisha Kadel', 'f', 21, 'Dhading', 980000004),
		(5, 'Srijan Khadka', 'm', 23, 'Dolakha', 980000005),
		(6, 'Srijan Ayer', 'm', 22, 'Kailali', 980000006),
		(7, 'Goma Panday', 'f', 38, 'Jhapa', 980000007),
		(8, 'Krishpa Thapa', 'f', 22, 'Okhaldhunga', 980000008),
		(9, 'Shirshak Bhattarai', 'm', 17, 'Bhaktapur', 980000009),
		(10, 'Manish Tamang', 'm', 27, 'Kathmandu', 980000010),
		(11, 'Anish Gupta', 'm', 30, 'Janakpur', 980000011),
		(12, 'Tanuja Panday', 'f', 23, 'Jhapa', 980000012),
		(13, 'Dawa Sherpa', 'm', 32, 'Dolpa', 980000013),
		(14, 'Menuka Adhikari', 'f', 30, 'Morang', 980000014),
		(15, 'Anjali Dahal', 'f', 22, 'Kathmandu', 980000015);

-- Correcting the name of student with roll 1
UPDATE tbl_students
SET name='Pragyan Bhattarai'
WHERE roll=1;

-- Updating the phone number of student with roll 1
UPDATE tbl_students
SET contact_num=984444444
WHERE roll=1;

-- Using alis 'AS'
SELECT name AS nam  FROM tbl_students;

-- Using AND, OR and NOT
SELECT name, gender
FROM tbl_students
WHERE NOT (address='Kathmandu' OR address='Bhaktapur');

-- Using BETWEEN to select students from age 20 to 30
SELECT name, gender, age, address
FROM tbl_students
WHERE age BETWEEN 20 AND 30

--starts with A
SELECT name
FROM tbl_students
WHERE name LIKE 'A%';

--ends with du
SELECT name, address
FROM tbl_students
WHERE address LIKE '%du';

--second position is 'i'
SELECT name
FROM tbl_students
WHERE name LIKE '_i%';

-- select age in ascending order
SELECT name, age
FROM tbl_students
ORDER BY age ASC;

-- in alphabetical order
SELECT * FROM tbl_students
ORDER BY name;


