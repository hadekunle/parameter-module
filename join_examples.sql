-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT
);

-- Create departments table
CREATE TABLE IF NOT EXISTS departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Insert into employees
TRUNCATE TABLE employees;
INSERT INTO employees VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 30),
(4, 'Dana', 40);

-- Insert into departments
TRUNCATE TABLE departments;
INSERT INTO departments VALUES
(10, 'HR'),
(20, 'Engineering'),
(30, 'Marketing'),
(50, 'Finance'); 

-- Analyze each table 
SELECT * FROM employees; 
SELECT * FROM departments;

-- LEFT JOIN 
SELECT e.name, d.department_name, e.department_id
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id; 

-- RIGHT JOIN 
SELECT e.name, d.department_name, e.department_id
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id; 

-- INNER JOIN 
SELECT e.name, d.department_name, e.department_id
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id; 

-- OUTER JOIN 
SELECT e.name, d.department_name, e.department_id
FROM employees e
FULL OUTER JOIN departments d ON e.department_id = d.department_id; 