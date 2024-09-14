REM   Script: 2-Exercicio_3
REM   2-Exercicio_3

create view Exercicio_3_Lista_2 AS 
 
SELECT  
	 e.employee_id AS Id_Funcionario, 
	 e.first_name AS Nome, 
	 e.last_name AS Sobrenome, 
 	 e.salary AS Salario 
FROM  
	 HR.EMPLOYEES e 
WHERE  
	 e.salary > ( 
 SELECT MAX(avg_salary) 
 FROM ( 
 SELECT AVG(salary) AS avg_salary 
 FROM HR.EMPLOYEES 
 GROUP BY department_id 
 )  
 );

