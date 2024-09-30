CREATE TABLE STUDENTS (  
ID INT                           NOT NULL,  
NAME VARCHAR (20) NOT NULL,  
AGE INT                         NOT NULL,  
ADDRESS CHAR (25),  
PRIMARY KEY (ID)  
);  

INSERT INTO STUDENTS (ID, NAME, AGE, ADDRESS)  
VALUES  
    (1, 'John Doe', 22, '123 Elm Street'),  
    (2, 'Jane Smith', 20, '456 Oak Avenue'),  
    (3, 'Mike Johnson', 23, '789 Maple Drive'),  
    (4, 'Emily Davis', 21, '101 Pine Blvd'),  
    (5, 'Sophia Brown', 24, '202 Cedar Lane');



SELECT NAME,ADDRESS FROM STUDENTS;

SELECT * FROM STUDENTS;

SELECT DISTINCT AGE FROM STUDENTS;

SELECT COUNT(DISTINCT AGE) FROM STUDENTS;

SELECT * FROM STUDENTS
WHERE AGE=22;

SELECT DISTINCT AGE 
FROM STUDENTS
ORDER BY AGE ASC;


SELECT COUNT(ID), AGE
FROM STUDENTS
GROUP BY AGE;

INSERT INTO STUDENTS (ID, NAME, AGE, ADDRESS)  
VALUES  
    (6, 'Liam Carter', 22, '303 Birch Street'),  
    (7, 'Olivia Martin', 22, '404 Willow Lane'),  
    (8, 'Mason White', 22, '505 Palm Road');

SELECT *FROM STUDENTS;

SELECT COUNT(ID) AS NumberOfStudents, AGE
FROM STUDENTS
GROUP BY AGE
HAVING COUNT(ID)>3;


