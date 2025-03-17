--create table
create table emp1287039(
empid number(6) constraint emo_id_pk primary key,
name varchar2(30) not null,
salary number(6,2) not null,
email varchar2(25) not null constraint emp_email_unq unique(email)
)
--add aalter

alter table emp1287039 add(
department_id number(6),
dept_name varchar2(30)
);


--create a sequence
create sequence emp1287039 emp_id-seq
start with 201
increment by 1
maxvalue 99999
nocache
nocycle;

--insert valu to the table

insert into EMP1287039 VALUES( 01,'ATIQ' 30000,'01-JAN-2005','ATIQ@GMAIL.COM',105,'JEE');
insert into EMP1287039 VALUES( 02,'SHIMUL' 30000,'01-JAN-2005','SHIMUL@GMAIL.COM',105,'JEE');
insert into EMP1287039 VALUES( 03,'ISLAM' 30000,'01-JAN-2005','ISLAM@GMAIL.COM',105,'JEE');

--CREATE A VIEW WHICH CONTAINS ENAME dept name and salary
CREATE VIEW EMPVU80
as select first_name,department-id,last-name,salary
from employees
where department_id=80;

--ans to the question no 6
--QUESTION NO.6
INSERT INTO EMP(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;








