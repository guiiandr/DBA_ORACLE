REM   Script: Exercicio_13
REM   Exercicio_13

create view Exercicio_13 AS 
     
SELECT  
 
   
    emp.first_name AS "Nome do gerente",  
    e.DEPARTMENT_NAME AS "Departamento", 
    e.city as Cidade 
     
    FROM HR.EMP_DETAILS_VIEW e 
 
    INNER JOIN HR.EMP_DETAILS_VIEW m ON e.employee_id = m.manager_id  
    INNER JOIN HR.EMPLOYEES emp on emp.employee_id = e.employee_id 
 
    GROUP BY emp.first_name, e.DEPARTMENT_NAME, e.city 
    order by emp.first_name;

