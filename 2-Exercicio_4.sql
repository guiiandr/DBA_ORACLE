REM   Script: 2-Exercicio_4
REM   2-Exercicio_4

CREATE VIEW Exercicio_4_Tabela_2 AS 
     
SELECT 
 
	E.FIRST_NAME AS NOME, 
	J.JOB_TITLE AS FUNCAO, 
    D.DEPARTMENT_NAME AS DEPARTAMENTO 
 
FROM 
 
	HR.EMPLOYEES E 
 
JOIN 
 
	HR.JOBS J ON J.JOB_ID = E.JOB_ID  
 
JOIN  
 
    HR.DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID 
 
WHERE  
 
    D.DEPARTMENT_NAME = 'Sales' 
    AND j.job_title != ( 
 
    	SELECT j2.job_title 
    	FROM hr.employees e2 
    	JOIN hr.jobs j2 on e2.job_id = j2.job_id 
    	WHERE e2.first_name = 'Eleni' 
    );

