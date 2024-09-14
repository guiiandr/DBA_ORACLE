REM   Script: 2-Exercicio_5
REM   2-Exercicio_5

CREATE VIEW Exercicio_5_Tabela_2 AS 
 
SELECT 
 
	EMPLOYEE_ID AS Matricula, 
	FIRST_NAME AS NOME 
 
FROM 
 
	HR.EMPLOYEES E 
 
WHERE 
 
	E.DEPARTMENT_ID IN( 
 
    SELECT E2.DEPARTMENT_ID 
    FROM HR.EMPLOYEES E2 
    WHERE E2.FIRST_NAME LIKE '%T%' 
     
    );

