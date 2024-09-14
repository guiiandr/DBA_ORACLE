REM   Script: Exercicio_24
REM   Exercicio_24

CREATE VIEW EXERCICIO_24 AS 
 
SELECT 
 
	JOB_TITLE AS Funcao, 
	AVG(Salary) as "Media de salário por função" 
 
FROM 
 
	HR.EMP_DETAILS_VIEW 
 
WHERE 
 
	JOB_TITLE LIKE '%Manager'  
 
GROUP BY  
 
	JOB_TITLE 
     
HAVING  
 
	AVG(SALARY) BETWEEN '10500' AND '12500';

