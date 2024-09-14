REM   Script: Exercicio_14
REM   Exercicio_14

create view Exercicio_14 AS 
     
select first_name as nome, JOB_TITLE as Funcao, salary AS Salario  
		 
    	from hr.EMP_DETAILS_VIEW 
 
	where salary > '3850'  
 
	order by salary;

