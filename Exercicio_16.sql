REM   Script: Exercicio_16
REM   Exercicio_16

create view Exercicio_16 AS 
 
select first_name as Funcionario, salary "Salário Mensal"  
 
	from HR.EMP_DETAILS_VIEW  
 
	where salary > '1500' and department_id between '10' and '30' 
     
    order by salary;

