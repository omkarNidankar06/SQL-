DROP TABLE student;

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    year_of_study INT,
    email VARCHAR(100),
    phone VARCHAR(15)
);

SELECT * FROM student; 

INSERT INTO student ( name, age, gender, department, year_of_study ,email, phone)
VALUES ('omkar','19','male','cse','2026','omkar@nidankar','8978465022'),
       ('somesh','17','male','mpc','2026','somu@nidankar','7075808209'),
	   ('chintu','18','male','Bsc','2026','chintu@mufekar','8976543213'),
	   ('ramesh','19','male','cse','2026','omkar@nidankarr','7093057822');

TRUNCATE TABLE student RESTART IDENTITY;

SELECT * FROM student;

ALTER TABLE student
RENAME COLUMN phone TO mobile;  

--To change the age column's data type from INT to SMALLINT

ALTER TABLE student
ALTER COLUMN age TYPE SMALLINT;

--TO add a NOT CONSTRAINT to city column

ALTER TABLE student
ALTER COLUMN department SET NOT NULL;

--adding CHECK constraint to age column
ALTER TABLE student
DROP CONSTRAINT age;

ALTER TABLE student
ADD CONSTRAINT age CHECK(age>=15);

ALTER TABLE student
RENAME TO students;

SELECT * FROM students;

