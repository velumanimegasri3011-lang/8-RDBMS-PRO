-- ============================================================
-- SQL AUTO GRADING TEST
-- EMPLOYEE AGGREGATE FUNCTIONS
-- ============================================================

USE CollegeDB;


-- ============================================================
-- TEST 1: Employee table exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Employee table exists'
    ELSE 'FAIL - Employee table does not exist'
END AS Result
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee';


-- ============================================================
-- TEST 2: Employee table has exactly 4 columns
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 4
    THEN 'PASS - Employee table has exactly 4 columns'
    ELSE 'FAIL - Employee table must have exactly 4 columns'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee';


-- ============================================================
-- TEST 3: EmployeeID column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - EmployeeID column exists'
    ELSE 'FAIL - EmployeeID column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee'
AND COLUMN_NAME = 'EmployeeID';


-- ============================================================
-- TEST 4: EmployeeID is PRIMARY KEY
-- ============================================================

SELECT
CASE
    WHEN COLUMN_KEY = 'PRI'
    THEN 'PASS - EmployeeID is PRIMARY KEY'
    ELSE 'FAIL - EmployeeID must be PRIMARY KEY'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee'
AND COLUMN_NAME = 'EmployeeID';


-- ============================================================
-- TEST 5: EmployeeName column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - EmployeeName column exists'
    ELSE 'FAIL - EmployeeName column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee'
AND COLUMN_NAME = 'EmployeeName';


-- ============================================================
-- TEST 6: Department column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Department column exists'
    ELSE 'FAIL - Department column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee'
AND COLUMN_NAME = 'Department';


-- ============================================================
-- TEST 7: Salary column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Salary column exists'
    ELSE 'FAIL - Salary column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Employee'
AND COLUMN_NAME = 'Salary';


-- ============================================================
-- TEST 8: Exactly 5 employee records
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 5
    THEN 'PASS - 5 employee records inserted'
    ELSE 'FAIL - Exactly 5 employee records are required'
END AS Result
FROM Employee;


-- ============================================================
-- TEST 9: COUNT(Salary)
-- ============================================================

SELECT
CASE
    WHEN COUNT(Salary) = 5
    THEN 'PASS - COUNT(Salary) = 5'
    ELSE 'FAIL - COUNT(Salary) should be 5'
END AS Result
FROM Employee;


-- ============================================================
-- TEST 10: MAX(Salary)
-- ============================================================

SELECT
CASE
    WHEN MAX(Salary) = 45000
    THEN 'PASS - MAX(Salary) = 45000'
    ELSE 'FAIL - MAX(Salary) should be 45000'
END AS Result
FROM Employee;


-- ============================================================
-- TEST 11: MIN(Salary)
-- ============================================================

SELECT
CASE
    WHEN MIN(Salary) = 25000
    THEN 'PASS - MIN(Salary) = 25000'
    ELSE 'FAIL - MIN(Salary) should be 25000'
END AS Result
FROM Employee;


-- ============================================================
-- TEST 12: AVG(Salary)
-- ============================================================

SELECT
CASE
    WHEN AVG(Salary) = 35000
    THEN 'PASS - AVG(Salary) = 35000'
    ELSE 'FAIL - AVG(Salary) should be 35000'
END AS Result
FROM Employee;


-- ============================================================
-- TEST 13: Ravi record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Ravi record is correct'
    ELSE 'FAIL - Ravi record is missing or incorrect'
END AS Result
FROM Employee
WHERE EmployeeID = 101
AND EmployeeName = 'Ravi'
AND Department = 'HR'
AND Salary = 25000;


-- ============================================================
-- TEST 14: Meena record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Meena record is correct'
    ELSE 'FAIL - Meena record is missing or incorrect'
END AS Result
FROM Employee
WHERE EmployeeID = 102
AND EmployeeName = 'Meena'
AND Department = 'IT'
AND Salary = 40000;


-- ============================================================
-- TEST 15: Kumar record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Kumar record is correct'
    ELSE 'FAIL - Kumar record is missing or incorrect'
END AS Result
FROM Employee
WHERE EmployeeID = 103
AND EmployeeName = 'Kumar'
AND Department = 'Finance'
AND Salary = 35000;


-- ============================================================
-- TEST 16: Suresh record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Suresh record is correct'
    ELSE 'FAIL - Suresh record is missing or incorrect'
END AS Result
FROM Employee
WHERE EmployeeID = 104
AND EmployeeName = 'Suresh'
AND Department = 'IT'
AND Salary = 45000;


-- ============================================================
-- TEST 17: Latha record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Latha record is correct'
    ELSE 'FAIL - Latha record is missing or incorrect'
END AS Result
FROM Employee
WHERE EmployeeID = 105
AND EmployeeName = 'Latha'
AND Department = 'HR'
AND Salary = 30000;


-- ============================================================
-- FINAL AGGREGATE RESULTS
-- ============================================================

SELECT COUNT(Salary) AS Total_Employees
FROM Employee;

SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

SELECT AVG(Salary) AS Average_Salary
FROM Employee;
