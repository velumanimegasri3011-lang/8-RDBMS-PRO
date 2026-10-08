# SQL Auto Grading – Employee Aggregate Functions

## Question

Create an Employee table with the following fields:

- EmployeeID
- EmployeeName
- Department
- Salary

Insert the following sample records:

| EmployeeID | EmployeeName | Department | Salary |
|---:|---|---|---:|
| 101 | Ravi   | HR      | 25000 |
| 102 | Meena  | IT      | 40000 |
| 103 | Kumar  | Finance | 35000 |
| 104 | Suresh | IT      | 45000 |
| 105 | Latha  | HR      | 30000 |

Write SQL queries using the following aggregate functions on the Salary field:

1. COUNT()
2. MAX()
3. MIN()
4. AVG()

## Database

CollegeDB

## Requirements

1. Create the Employee table.
2. Insert all 5 employee records.
3. Use COUNT() on Salary.
4. Use MAX() on Salary.
5. Use MIN() on Salary.
6. Use AVG() on Salary.
7. Display the results of all aggregate functions.

## Expected Results

| Function | Expected Result |
|---|---:|
| COUNT(Salary) | 5 |
| MAX(Salary) | 45000 |
| MIN(Salary) | 25000 |
| AVG(Salary) | 35000 |

## Student Instructions

Write your SQL program in:

solution.sql
