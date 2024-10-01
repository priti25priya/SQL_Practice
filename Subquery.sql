-- SUBQUERY:

CREATE TABLE Database1 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    marks INT
);

INSERT INTO Database1 (student_id, student_name, marks) VALUES
(1, 'Hammy', 89),
(2, 'Olivia', 90),
(3, 'Dexter', 92),
(4, 'Jin', 88),
(5, 'Eve', 78);

SELECT AVG(marks) AS Average_marks
FROM Database1
WHERE marks IN (SELECT marks FROM Database1);