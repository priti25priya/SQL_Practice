--TCL(TRANSACTION CONTROL LANGUAGE)
-- Step 1: Create the MastersStudents table
CREATE TABLE MastersStudents (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Program VARCHAR(50)
);

-- Step 2: Insert initial values into the MastersStudents table
INSERT INTO MastersStudents (StudentID, FirstName, LastName, Email, Program)
VALUES 
    (1, 'Alice', 'Wang', 'alice.wang@edu.in', 'Data Science'),
    (2, 'Bob', 'Smith', 'bob.smith@edu.in', 'Computer Science'),
    (3, 'Catherine', 'Johnson', 'catherine.j@edu.in', 'Cybersecurity'),
	(4, 'Priti', 'Singh','priti.s@edu.in','Cybersecurity'),
	(5, 'Rohit','Sharma', 'rohit.s@edu.in','Artificial Intelligence');

-- Step 3: Begin a transaction
BEGIN TRANSACTION;

-- Insert a new student
INSERT INTO MastersStudents (StudentID, FirstName, LastName, Email, Program)
VALUES (6, 'David', 'Brown', 'david.brown@edu.in', 'Data Analytics');

-- Create a savepoint
SAVE TRANSACTION BeforeSecondInsert;

-- Insert another student
INSERT INTO MastersStudents (StudentID, FirstName, LastName, Email, Program)
VALUES (7, 'Eva', 'Green', 'eva.green@edu.in', 'Machine Learning');

-- Rollback to the savepoint if needed
ROLLBACK TRANSACTION BeforeSecondInsert; -- This will undo the last insert

-- Commit the transaction to save all changes made since the transaction started
COMMIT;




