REM   Script: Exercicio_23
REM   Exercicio_23

CREATE VIEW Exercicio_23 AS 
 
SELECT 
 
	JOB_TITLE AS Funcao, 
	AVG(Salary) as "Media de salário por função" 
 
FROM 
 
	HR.EMP_DETAILS_VIEW 
 
WHERE 
 
	JOB_TITLE LIKE '%Manager' 
 
GROUP BY  
 
	JOB_TITLE 
     
ORDER BY 
 
   JOB_TITLE ;

