REM   Script: Exercicio_25
REM   Exercicio_25

CREATE VIEW Exercicio_25 AS 
 
SELECT 
 
	DEPARTMENT_NAME AS DEPARTAMENTO, 
	COUNT (manager_id) as Qtd_gerente --realiza a contagem de qts id manager está presente dentro do agrupamento de cada departamento. 
 
FROM 
 
	HR.EMP_DETAILS_VIEW 
 
WHERE  
 
	JOB_TITLE LIKE '%Manager' 
 
GROUP BY 
 
	Department_name 
 
Having 
 
	count(manager_id) > 1;

