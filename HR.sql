select department_name || q'[Department's Manager Id: ]' ||manager_id from departments;
select DISTINCT department_name "Name" from departments;

select last_name, first_name, salary from employees;

select last_name, first_name,job_id, department_id
from employees
where salary>5000;

select last_name, first_name,job_id, department_id,salary
from employees
where salary=17000;

select last_name, first_name,job_id, department_id,salary
from employees
where first_name like 'A%';

select last_name, first_name,job_id, department_id,salary
from employees
where first_name like 'N%' or first_name like '%a';

select last_name, first_name,job_id, department_id,salary
from employees
where first_name like 'N%' and first_name like '%a';


select last_name, first_name,job_id, department_id,salary
from employees
where first_name like 'N%' and not first_name like '%e';

select last_name, first_name,job_id, department_id,salary
from employees
where first_name like 'N%' or not first_name like '%e';

select last_name, first_name,job_id, department_id,salary
from employees

where  first_name like 'N%' or not first_name like '%e';

select last_name, first_name,job_id, department_id,salary
from employees

where  department_id=80 or department_id=50;

select last_name, first_name,job_id, department_id,salary
from employees

where  department_id=50 and job_id='ST_MAN';

