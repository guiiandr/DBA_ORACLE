REM   Script: 2-Exercicio_7
REM   2-Exercicio_7

CREATE VIEW Exercicio_7_Tabela_2 AS 
     
SELECT  
 
    E.MANAGER_ID AS MANAGER, 
	E.FIRST_NAME AS NOME, 
	J.JOB_TITLE AS Funcao, 
	E.SALARY AS Salario 
     
 
FROM 
 
	HR.EMPLOYEES E 
 
JOIN  
 
	HR.JOBS J ON E.JOB_ID = J.JOB_ID 
 
WHERE 
 
	E.MANAGER_ID = ( 
 
    SELECT EMPLOYEE_ID 
    FROM HR.EMPLOYEES 
    WHERE FIRST_NAME = 'Nancy' 
 
    );

