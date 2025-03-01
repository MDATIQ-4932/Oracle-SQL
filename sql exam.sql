SELECT last_name, salary
FROM employees
WHERE salary not BETWEEN 5000 AND 12000;

SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY department_id ASC;

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct = 0.20;

SELECT last_name as "Employee", salary as "Monthly Salary",department_id 
FROM employees
WHERE salary BETWEEN 5000 AND 12000 
AND department_id =20 or department_id= 50;

--
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct>0
ORDER BY salary desc;

select last_name, salary, (salary*15.5)/100,salary+((salary*15.5)/100) as "new_salary"
FROM employees;


