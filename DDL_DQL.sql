--DDL(DATA DEFINITION LANGUAGE COMMANDS):
-- CREATE

CREATE TABLE FORM(
    ID INT NOT NULL ,  -- Unique identifier for each registration
    Name VARCHAR(50) NOT NULL,        -- Name of the registrant
    Email VARCHAR(100) NOT NULL,      -- Email address of the registrant
    Phone VARCHAR(15),                 -- Phone number of the registrant
    Dt DATE ,  -- Date of registration
    Status VARCHAR(20),Dt_FORMATTED AS 
(convert(VARCHAR(255), dt, 104)), -- Status of the registration
    PRIMARY KEY (ID)                  -- Set ID as the primary key
);
SET DATEFORMAT dmy
INSERT INTO FORM(ID, Name, Email, Phone, Dt, Status)
VALUES
     (1,'Hammy Hudson', 'Hudson23@gmail.com',7899543267, '23-09-2024','Pending'),
     (2,'Olivia Hudson', 'Olivia00@gmail.com',9877654387,'24-09-2024','Pending'),
     (3,'John Simson', 'John56@gmail.com',7899546544,'10-09-2024','Confirmed'),
     (4,'Harris Smith', 'Harris90@gmail.com',9088765432,'09-09-2024','Confirmed'),
     (5,'Louis Perry', 'Perry245@gmail.com',7899543265,'10-09-2024','Confirmed'),
     (6,'Kim Gamza', 'Kimg5644@gmail.com',6754438973,'15-09-2024','Confirmed'),
     (7,'Jane Smith', 'Jane523@gmail.com',7899543111,'25-09-2024','Cancelled'),
     (8,'Dexter Doe', 'Doed623@gmail.com',78995435647,'20-09-2024','Pending'),
     (9,'Sophia Brown', 'Sophiab723@gmail.com',7899511117,'29-09-2024','Cancelled'),
     (10,'Park Joule', 'Jouleer23@gmail.com',7899003267,'21-09-2024','Pending')

--DQL(DATA QUERY LANGUAGE)
--SELECT
SELECT *FROM FORM;

--DDL (DATA DEFINITION LANGUAGE COMMANDS)
-- DROP
DROP TABLE FORM; 
-- ALTER
--1. ADD
ALTER TABLE FORM
ADD Age INT,             
    Course VARCHAR(40);  

-- TRUNCATE

TRUNCATE TABLE FirstRegistration;

-- RENAME

EXEC sp_rename 'FORM', 'Student_FORM';




