CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    job_category VARCHAR(10)
);

INSERT INTO employees (employee_id, first_name, last_name, salary, job_category) VALUES
(101, 'John', 'Doe', 50000, 'DEV'),
(102, 'Jane', 'Smith', 60000, 'DEV'),
(104, 'Charlie', 'Davis', 58000, 'DEV'),
(108, 'Ivan', 'Hall', 62000, 'DEV'),
(103, 'Alice', 'Johnson', 61000, 'HR'),
(105, 'Eve', 'Miller', 61000, 'HR'),
(107, 'Heidi', 'Clark', 57000, 'HR'),
(109, 'Judy', 'Lewis', 53000, 'HR'),
(110, 'Paul', 'Allen', 70000, 'FIN'),
(113, 'Olivia', 'Scott', 65000, 'FIN'),
(115, 'Nora', 'Adams', 72000, 'FIN'),
(106, 'Grace', 'Wilson', 66000, 'PDT'),
(111, 'Rose', 'Baker', 68000, 'PDT'),
(112, 'Max', 'Carter', 66000, 'PDT'),
(114, 'Lucas', 'Turner', 64000, 'PDT');

select * from employees;

SELECT employee_id, first_name, job_category
FROM (SELECT employee_id,
first_name,
job_category, 
DENSE_RANK() OVER(PARTITION BY job_category ORDER BY salary DESC) as rn FROM employees) as a
WHERE rn=3;


