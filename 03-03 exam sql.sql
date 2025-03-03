--question=1
SELECT first_name, last_name, hire_date  
FROM employees 
where hire_date between '01-jan-2002' and '31-dec-2005';

--question2
SELECT first_name, last_name, hire_date,job_id
FROM employees 
WHERE job_id IN ('IT_PROG', 'SA_MAN');

--question3
Select hire_date
from Employees
where Hire_Date>'1/jan/2008';

--question4
Select* 
from Employees
where employee_id in(150,160);

--question5
Select First_name,Salary,commission_pct,Hire_date
from  employees
where salary<10000;