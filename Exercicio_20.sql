REM   Script: Exercicio_20
REM   Exercicio_20

CREATE VIEW EXERCICIO_20 AS 
 
SELECT  
 
	first_name AS Nome, 
	job_title AS Funcao, 
	salary AS Salario 
 
FROM	 
 
	HR.EMP_DETAILS_VIEW 
 
WHERE  
 
	job_title IN ('Programmer', 'Marketing Manager', 'Marketing Representative') 
	AND salary NOT IN ('1000', '3000', '5000') ;

