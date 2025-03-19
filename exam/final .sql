--question no:1
CREATE TABLE atiq001(
eid number(10) constraint atiq001_eid_PK primary key,
ename varchar2(20) not null,
salary number(6)not null,
hire_date date,
address varchar2(30)
);
--question :2
alter table atiq001 add(
department_id number(6),
department_name varchar2(30)
);
--question:3
insert into atiq001 values(1,'shimul',30000,'01-jan-2008','dhaka',100,'dd');
insert into atiq001 values(2,'ayaz',30000,'01-jan-2008','dhaka',70,'sd');
insert into atiq001 values(3,'sadik',30000,'01-jan-2008','dhaka',90,'sa');
insert into atiq001 values(4,'islam',30000,'01-jan-2008','dhaka',80,'ac');
--question :4
CREATE VIEW atiq001_view as
select first_name||' '||last_name as ename,department_name,salary
from employees natural join departments
where department_id =80;
--question 5:
CREATE SEQUENCE atiq001_EID_SEq
start with 1
increment by 1
maxvalue 9999
nocache
nocycle;
select atiq001_eid_sec.nextval
from dual

--question6;
insert into atiq001(eid,ename,salary,hire_date,address,department_id,department_name)
select employee_id,last_name,salary,hire_date,country_name,department_id,department_name
from employees natural join departments natural join locations natural join countries
where department_id =80;


select*
from atiq001;
