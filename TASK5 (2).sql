CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    DOB DATE,
    Gender CHAR(1)
);

-- Insert sample data into the Employee table
INSERT INTO Employee (EmployeeID, Name, Department, Salary, DOB, Gender) VALUES
(1, 'aboli suryawanshi', 'HR', 9500, '1965-05-20', 'F'),
(2, 'balaji kumar', 'IT', 10500, '1970-07-15', 'M'),
(3, 'chetan agrawal', 'IT', 12000, '1980-03-30', 'M'),
(4, 'dipak karpe', 'Finance', 8500, '1968-12-25', 'M'),
(5, 'eva patil', 'HR', 13000, '1975-11-05', 'F'),
(6, 'firoz luthra', 'Finance', 9500, '1962-09-10', 'M'),
(7, 'Gaytri sharma', 'IT', 11500, '1972-01-30', 'F'),
(8, 'Heera gupta', 'Marketing', 9600, '1977-04-22', 'F'),
(9, 'Joe buttler', 'Finance', 11000, '1969-08-14', 'M'),
(10, 'Marisha sharma', 'IT', 9800, '1985-06-25', 'F');

select*from Employee;

--SQL Query to find the second highest salary of Employee.
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

--SQL Query to find Max Salary from each department.
SELECT Department, MAX(Salary) AS MaxSalary
FROM Employee
GROUP BY Department;

--Write SQL Query to display the current date.
SELECT CURRENT_DATE AS CurrentDate;

--Write an SQL Query to check whether the date passed to Query is the
--date of the given format or not?

SELECT 
    CASE 
        WHEN STR_TO_DATE('2024-08-29', '%Y-%m-%d') IS NOT NULL THEN 'Valid Date'
        ELSE 'Invalid Date'
    END AS DateValidation;

    
--Write an SQL Query to print the name of the distinct employee whose
--DOB is between 01/01/1960 to 31/12/1975.

SELECT DISTINCT Name
FROM Employee
WHERE DOB BETWEEN '1960-01-01' AND '1975-12-31';

--Write an SQL Query to find the number of employees according to
--gender whose DOB is between 01/01/1960 to 31/12/1975.

SELECT DISTINCT Name
FROM Employee
WHERE DOB BETWEEN '1960-01-01' AND '1975-12-31';

--Write an SQL Query to find an employee whose salary is equal to or
--greater than 10000.

SELECT *
FROM Employee
WHERE Salary >= 10000;

--Write an SQL Query to find the name of an employee whose name
--Start with ‘M’

SELECT Name
FROM Employee
WHERE Name LIKE 'M%';

--find all Employee records containing the word "Joe", regardless of
--whether it was stored as JOE, Joe, or joe.
SELECT *
FROM Employee
WHERE LOWER(Name) LIKE '%joe%';

--Write an SQL Query to find the year from date.
SELECT (DOB) AS BirthYear
FROM Employee;

