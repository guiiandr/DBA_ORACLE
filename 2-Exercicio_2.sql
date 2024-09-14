REM   Script: 2-Exercicio_2
REM   2-Exercicio_2

CREATE VIEW Exercicio_2_Tabela_2 AS 
 
SELECT  
     
    EMPLOYEE_ID AS Id_Funcionario,  
    first_name AS Nome, 
    last_name AS Sobrenome, 
    Salary AS Salario 
 
FROM 
 
	HR.Employees 
 
WHERE 
 
	Salary > (SELECT AVG(SALARY) FROM HR.Employees);

