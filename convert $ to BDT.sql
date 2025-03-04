SELECT 
 last_name, 
 salary, TO_CHAR(salary*40, '$9,999,999.00'),
 concat('BDT', 
    substr(
        TO_CHAR(salary*40, '$9,999,999.00'),
            instr(
                TO_CHAR(salary*40, '$9,999,999.00'),'$')+1))  SALARY
 FROM   employees;