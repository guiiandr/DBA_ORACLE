REM   Script: 2-Exercicio_8
REM   2-Exercicio_8

CREATE VIEW Exercicio_8_Tabela_2 AS 
 
SELECT  
	 e.first_name AS Nome, 
	 j.job_title AS Funcao, 
	 d.department_name AS Departamento, 
 	 l.city AS Cidade 
     
FROM  
	 HR.EMPLOYEES e 
JOIN  
	 HR.JOBS j ON e.job_id = j.job_id 
JOIN  
	 HR.DEPARTMENTS d ON e.department_id = d.department_id 
JOIN  
	 HR.LOCATIONS l ON d.location_id = l.location_id 
WHERE  
 
    l.city = ( 
     
		 SELECT l2.city 
		 FROM HR.EMPLOYEES e2 
		 JOIN HR.DEPARTMENTS d2 ON e2.department_id = d2.department_id 
		 JOIN HR.LOCATIONS l2 ON d2.location_id = l2.location_id 
		 WHERE e2.job_id = ( 
		 SELECT job_id 
		 FROM HR.JOBS 
 		 WHERE job_title = 'President' ) 
    		);

