-- LIMIT and ALIASING

SELECT *
FROM employee_demographics
LIMIT 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;
# SELECT 2 ROWS AND CHOOSE 1 ROW AFTER

-- ALIASING

SELECT gender, AVG(age) AS avg_age #'AS' NOT NECESSARILY NEEDED
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;