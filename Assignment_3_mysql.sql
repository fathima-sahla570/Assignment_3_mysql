-- 1. Create the Managers table
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 0),
    Last_Update TIMESTAMP,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Department VARCHAR(50) NOT NULL,
    salary int check (salary between 20000 and 50000));
    -- 2. Insert 10 rows
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Last_Update, Gender, Department, Salary) VALUES
(1, 'John', 'Doe', '1980-05-15', 44, CURRENT_TIMESTAMP, 'M', 'IT', 30000.00),
(2, 'Aaliya', 'Khan', '1992-08-20', 32, CURRENT_TIMESTAMP, 'F', 'HR', 28000.00),
(3, 'Mike', 'Brown', '1985-12-12', 39, CURRENT_TIMESTAMP, 'M', 'Finance', 34000.00),
(4, 'Emily', 'Davis', '1990-03-18', 34, CURRENT_TIMESTAMP, 'F', 'IT', 27000.00),
(5, 'Raj', 'Sharma', '1983-09-25', 41, CURRENT_TIMESTAMP, 'M', 'Marketing', 32000.00),
(6, 'Sophia', 'Lee', '1995-07-07', 29, CURRENT_TIMESTAMP, 'F', 'HR', 29000.00),
(7, 'David', 'Smith', '1988-11-01', 36, CURRENT_TIMESTAMP, 'M', 'IT', 35000.00),
(8, 'Sara', 'Williams', '1993-02-15', 31, CURRENT_TIMESTAMP, 'F', 'Finance', 26000.00),
(9, 'Mohammed', 'Ali', '1986-04-10', 38, CURRENT_TIMESTAMP, 'M', 'IT', 24000.00),
(10, 'Linda', 'Taylor', '1981-06-22', 43, CURRENT_TIMESTAMP, 'F', 'Marketing', 33000.00);
-- 3. Query to retrieve the name and date of birth of the manager with Manager_Id 1
SELECT First_Name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;
-- 3. Write a query to display the annual income of all managers
select Manager_Id,First_Name,Last_Name,(12*salary) as Anual_income from managers;
-- Write a query to display records of all managers except ‘Aaliya’
SELECT * FROM Managers WHERE First_name != 'Aaliya';
-- 5. Write a query to display details of managers whose department is IT and earns more than 25000 per month.   
 SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000; 
 -- 6. Write a query to display details of managers whose salary is between 10000 and 35000.
SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;







