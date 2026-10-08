-- Create Employee table
CREATE TABLE Employee (
    EmployeeID NUMBER(5),
    EmployeeName VARCHAR2(30),
    Department VARCHAR2(20),
    Salary NUMBER(10,2)
);

-- Insert sample records
INSERT INTO Employee VALUES (101, 'Ravi', 'HR', 25000);
INSERT INTO Employee VALUES (102, 'Meena', 'IT', 40000);
INSERT INTO Employee VALUES (103, 'Kumar', 'Finance', 35000);
INSERT INTO Employee VALUES (104, 'Suresh', 'IT', 45000);
INSERT INTO Employee VALUES (105, 'Latha', 'HR', 30000);

-- COUNT: Number of employees
SELECT COUNT(Salary) AS Total_Employees
FROM Employee;

-- MAX: Highest salary
SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

-- MIN: Lowest salary
SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

-- AVG: Average salary
SELECT AVG(Salary) AS Average_Salary
FROM Employee;
