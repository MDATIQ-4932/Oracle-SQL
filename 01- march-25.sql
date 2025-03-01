-- used round key word
 
 select round (45.9235,2),round(45.923,0),
 round(45.92,-1)
 from dual;
 
-- ctrl enter diye run kora jay

--used trunc

select trunc(45.9235,2),trunc(45.923,0),
 trunc(45.92,-1)
 from dual;
 
 
 
        
 
--used mod

SELECT mod(1600,300)
from dual;

select last_name,hire_date
from employees
where hire_date<'17-feb-2008';

--used sysdate
SELECT sysdate
from dual;

--used current_timestamp
SELECT current_timestamp
from dual;

-- usedSESSIONTIMEZONE,current_timestamp

SELECT SESSIONTIMEZONE,current_timestamp
from dual;

--Used different key words about day and months

SELECT ROUND( MONTHS_BETWEEN('01-sep-05','11-jan-04')),' ',
 Add_MONTHS('31-JAN-04',1),
 NEXT_DAY ('01-SEP-05','FRIDAY'),
 LAST_DAY ('01-JAN-05')
 FROM DUAL;
 
 

 