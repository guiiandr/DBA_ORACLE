REM   Script: Exercicio_12
REM   Exercicio_12

create view Exercicio_12 AS  
SELECT  
 
    m.first_name AS "Funcionário",  
    m.employee_id AS "Nr_funcionário", 
    emp.first_name AS "Gerente",  
    emp.employee_id AS "Nr_gerente" 
     
    FROM HR.EMP_DETAILS_VIEW e 
 
    INNER JOIN HR.EMP_DETAILS_VIEW m ON e.employee_id = m.manager_id  
    INNER JOIN HR.EMPLOYEES emp on emp.employee_id = e.employee_id 
 
    order by m.first_name;

