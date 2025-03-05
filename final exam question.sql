CREATE TABLE  emp1287039(
eid number(6) constraint emp_1287039_pk primary key,
ename varchar2(25) not null,
salary number(8,2) not null,
hire_date date not null,
address varchar2(25) not null
);
ALTER table emp1287039 add(
department_id number(6),
dept_name varchar2(30)
);

insert into emp1287039 values(1, 'atiq' ,30000, '02-JAN-07', 'Dhaka', 101, 'java');
insert into emp1287039 values(2, 'emran' ,30000, '03-JAN-07', 'Dhaka', 102, 'java');
insert into emp1287039 values(3, 'reza' ,30000, '04-JAN-07', 'Dhaka', 104, 'java');
insert into emp1287039 values(4, 'arif' ,30000, '05-JAN-07', 'Dhaka', 105, 'java');
insert into emp1287039 values(5, 'parvej' ,30000, '06-JAN-07', 'Dhaka', 106, 'java');

select*
from emp1287039;

--question 3 
SELECT first_name, last_name
FROM employees
WHERE  first_name LIKE 'S%';

--question no 4
SELECT AVG(salary)
FROM employees
GROUP by salary;

--question 5

SELECT first_name,hire_date
FROM employees
ORDER BY 2 ASC;

--question2
SELECT department_id,round(avg(salary)),count(department_id),salary
from employees
GROUP BY department_id
having max(salary)>12000;







