----------------------------------------------------------
--					Lab 2(Part 1)
-- Date		: Jestha 8, 2080 (Monday (May 22, 2023))  
-- Author	: Pragyan Bhattarai
-- Roll		: THA077BEI030
----------------------------------------------------------

CREATE TABLE tbl_student(
	name VARCHAR(60),
	roll int NOT NULL PRIMARY KEY,
	address VARCHAR(50),
	phone_num int
)

INSERT INTO tbl_student(name, roll, address, phone_num)
VALUES ('Pragyan', 1, 'Balkot', 980000000)

INSERT INTO tbl_student(name, roll, address, phone_num)
VALUES ('Prashant', 2, 'Kalanki', 981111111)

CREATE TABLE tbl_subjects(
	sub_id INT NOT NULL PRIMARY KEY,
	sub_name VARCHAR(50),
	marks INT
)

INSERT INTO tbl_subjects
VALUES (1, 'Physics', 50)

INSERT INTO tbl_subjects
VALUES (2, 'Chemistry', 60)

SELECT * FROM tbl_subjects;

ALTER TABLE tbl_subjects
DROP COLUMN marks;

SELECT * FROM tbl_subjects;

INSERT INTO tbl_student(name, roll, address, phone_num)
VALUES ('Prahlad', 3, 'Bouddha', 982222222)

INSERT INTO tbl_student(name, roll, address, phone_num)
VALUES ('Rijan', 4, 'Gokarna', 983333333)

INSERT INTO tbl_student(name, roll, address, phone_num)
VALUES ('Sabin', 5, 'Tokha', 981111111)

SELECT * FROM tbl_student;

INSERT INTO tbl_subjects
VALUES (3, 'Biology'),(4, 'Maths'),(5, 'English')

SELECT * FROM tbl_subjects;

DELETE FROM tbl_student WHERE roll=5;

SELECT * FROM tbl_student;

TRUNCATE TABLE tbl_student;

SELECT * FROM tbl_student;

CREATE TABLE marks