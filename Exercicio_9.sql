REM   Script: Exercicio_9
REM   Exercicio_9

create view Exercicio_9 AS 
 
SELECT  
 
    m.first_name AS "Nome do funcionário",  
    m.salary AS "Salário do funcionário", 
    emp.first_name AS "Nome do gerente",  
    emp.salary AS "Salário do gerente" 
     
    FROM HR.EMP_DETAILS_VIEW e 
 
    INNER JOIN HR.EMP_DETAILS_VIEW m ON e.employee_id = m.manager_id  
    INNER JOIN HR.EMPLOYEES emp on emp.employee_id = e.employee_id 
 
    order by emp.first_name DESC;

select * from Exercicio_9;

