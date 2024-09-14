REM   Script: 2-Exercicio_1
REM   2-Exercicio_1

create view Exercicio_1_Tabela_2 AS 
 
SELECT 
 
	edv.first_name AS Nome, 
	edv.last_name As Sobrenome, 
	edv.job_title AS Funcao, 
	e.hire_date AS "Data de contratação" 
 
FROM 
 
	HR.EMP_DETAILS_VIEW edv 
 
INNER JOIN 
     
    HR.EMPLOYEES e ON EDV.EMPLOYEE_ID = e.EMPLOYEE_ID 
 
WHERE 
 
	edv.department_id = (select department_id from HR.EMP_DETAILS_VIEW WHERE first_name = 'Nancy') 
	AND edv.first_name != 'Nancy' 
 
ORDER BY  
 
    edv.first_name ;

