--subquery to solve quries
select last_name, hire_date
from employees
where hire_date>(
select hire_date
from employees
where last_date='davis'
);



select last_name,employee_id
from employees
where department_id in (
select department_id 
from employees
where last_name like '%u%'
);

SELECT last_name, department_id, job_id
	FROM employees
	WHERE department_id IN (SELECT department_id
	FROM departments
    WHERE location_id = 1700);
    
    select last_name,salary
    from employees
    where manager_id in (
    select employee_id
    from employees
    where  last_name='King'    
    );
    




