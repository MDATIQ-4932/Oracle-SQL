select last_name,salary,department_name
from employees natural join departments;

--using natural clause
select first_name,department_name,street_address,city,country_name 
from employees
natural join departments
natural join locations
natural join countries;
--using clause
select first_name,department_name,street_address,city,country_name,department_id 
from employees
join departments
using department_id;
--using on clause
select e.first_name, d.department_name, l.street_address, l.city,c.country_name
from employees e
join departments d on e.department_id=d.department_id
join locations l on l.location_id=d.location_id
join countries c on l.country_id=c.country_id;

