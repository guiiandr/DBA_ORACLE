REM   Script: Exercicio_15
REM   Exercicio_15

create view Exercicio_14 AS 
     
select first_name as nome, salary as salario 
 
	from HR.EMP_DETAILS_VIEW 
 
	where salary not between '1500' and '2850' 
 
	order by salary;

