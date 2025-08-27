-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id # based on
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id # based on
;

-- Outer Joins

SELECT *
FROM employee_demographics dem
RIGHT OUTER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id # based on
;

-- Self Join

SELECT emp1.employee_id AS emp_santa, 
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id emp_santa, 
emp2.first_name AS first_name_santa,
emp2.last_name AS last_name_santa
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining Multiple Tables Together

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id 
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments
;