REM   Script: Exercicio_6
REM   Exercicio_6

create view Excercicio_6 AS 
 
SELECT e.DEPARTMENT_NAME AS Departamento,e.JOB_TITLE AS Cargo, e.CITY AS Cidade, m.manager_id AS Manager_ID, e.first_name AS Nome, e.last_name AS Sobrenome, emp.PHONE_NUMBER AS Numero 
 
    FROM HR.EMP_DETAILS_VIEW e 
 
    INNER JOIN HR.EMP_DETAILS_VIEW m ON m.manager_id = e.employee_id 
    INNER JOIN HR.EMPLOYEES emp on emp.employee_id = e.employee_id 
 
 
	group by m.manager_id, e.first_name , e.CITY , emp.PHONE_NUMBER, e.JOB_TITLE,e.DEPARTMENT_NAME, e.last_name 
	order by m.manager_id;

