REM   Script: Exercicio_22
REM   Exercicio_22

CREATE VIEW EXERCICIO_22 AS 
 
SELECT 
 
	JOB_TITLE AS Funcao, 
	MAX(Salary) as Salario 
 
FROM 
 
	HR.EMP_DETAILS_VIEW 
 
GROUP BY  
 
	JOB_TITLE 
 
HAVING 
 
	MAX(SALARY) <= '10000' 
     
ORDER BY 
     
    MAX(SALARY) 
     ;

