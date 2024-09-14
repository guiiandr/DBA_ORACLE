REM   Script: 2-Exercicio_9
REM   2-Exercicio_9

CREATE VIEW Exercicio_9_Tabela_2 AS 
 
SELECT  
     
 	 e.employee_id AS Matrícula, 
	 e.first_name AS Nome, 
	 e.salary AS Salario 
     
FROM  
     
	 HR.EMPLOYEES e 
     
WHERE  
     
	 e.salary > ( 
     
 		SELECT AVG(salary) 
 		FROM HR.EMPLOYEES 
 ) 
 	AND e.department_id IN ( 
     
 		SELECT DISTINCT d.department_id 
 		FROM HR.EMPLOYEES e2 
 		JOIN HR.JOBS j ON e2.job_id = j.job_id 
 		JOIN HR.DEPARTMENTS d ON e2.department_id = d.department_id 
 		WHERE j.job_title = 'Programmer' 
 		OR j.job_title LIKE '%Manager%' 
 );

