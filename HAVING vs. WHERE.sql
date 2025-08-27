-- HAVING vs. WHERE

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
;
# GROUP not created, use HAVING

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE'%manager%'
GROUP BY occupation
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE'%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;