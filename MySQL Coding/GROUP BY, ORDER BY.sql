-- Group By

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM employee_demographics
group by gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender
;

-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY gender, age
;

SELECT *
FROM employee_demographics
ORDER BY 5, 4
;