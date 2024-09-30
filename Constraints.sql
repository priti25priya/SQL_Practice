-- SQL CONSTRAINTS:

-- Step 1: Create a referenced table for Foreign Key demonstration
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL UNIQUE
);

-- Step 2: Create the Students table with various constraints
CREATE TABLE Students_S1 (
    StudentID INT PRIMARY KEY,                       -- Primary Key
    FirstName VARCHAR(50) NOT NULL,                 -- NOT NULL constraint
    LastName VARCHAR(50) NOT NULL,                  -- NOT NULL constraint
    Email VARCHAR(100) UNIQUE,                       -- UNIQUE constraint
    Age INT CHECK (Age >= 18 AND Age <= 60),        -- CHECK constraint
    RegistrationDate DATETIME DEFAULT GETDATE(),    -- DEFAULT value
    CourseID INT,                                    -- Foreign Key
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) -- Foreign Key constraint
);

-- Step 3: Insert values into Courses table
INSERT INTO Courses (CourseID, CourseName) VALUES
(1, 'Data Science'),
(2, 'Computer Science'),
(3, 'Cybersecurity');

-- Step 4: Insert valid values into Students table
INSERT INTO Students_S1 (StudentID, FirstName, LastName, Email, Age, CourseID) VALUES
(1, 'Alice', 'Wang', 'alice.wang@example.com', 23, 1),
(2, 'Bob', 'Smith', 'bob.smith@example.com', 29, 2),
(3, 'Catherine', 'Johnson', 'catherine.j@example.com', 30, 3);

