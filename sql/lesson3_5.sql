CREATE TABLE IF NOT EXISTS student(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT,
	PRIMARY KEY (student_id)
)

INSERT INTO student VALUES(1,'小白','英語','50');
INSERT INTO student VALUES(2,'小洪','華語','50');
INSERT INTO student VALUES(3,'小黃','日語','50');
INSERT INTO student VALUES(4,'小黑','美語','50');


DELETE FROM student; /*全刪*/

DELETE FROM student
WHERE name ='小白';

DROP TABLE IF EXISTS student;

SELECT *
FROM student;


