select* 
from departments
where  department_id in(
select department_id
from employees
group by department_id
having max (salary)>10000
);

SELECT *
FROM DEPARTMENTS 
WHERE MANAGER_ID IN 
(SELECT EMPLOYEE_ID 
FROM EMPLOYEES 
WHERE FIRST_NAME='Smith');

        
SELECT *
FROM  employees
where employee_id not in (select employee_id from job_history)
 SELECT*  FROM EMPLOYEES WHERE EMPLOYEE_ID NOT IN
 (SELECT EMPLOYEE_ID FROM JOB_HISTORY);
 
-- more than 5 employees

  SELECT FIRST_NAME FROM EMPLOYEES
  WHERE EMPLOYEE_ID IN 
  (SELECT MANAGER_ID FROM EMPLOYEES
  GROUP BY MANAGER_ID 
  HAVING COUNT(*)>5);
--  joined in last two years

  SELECT *
  FROM DEPARTMENTS 
  WHERE DEPARTMENT_ID NOT IN 
  (SELECT DEPARTMENT_ID FROM EMPLOYEES 
  WHERE FLOOR((SYSDATE- HIRE_DATE)/365)< 2);
  
--  current job for employee who worked as it programs in the past
select*
from jobs
where job_id in (select job_id from employees
where employee_id in
(select employee_id
from job_history
where job_id='IT_PROG'));


        
