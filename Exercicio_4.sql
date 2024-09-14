REM   Script: Exercicio_4
REM   Exercicio_4

create view Exercicio_4 AS 
     
select *  
    from HR.EMPLOYEES  
 
	where salary > '5000' and salary < '7000' and COMMISSION_PCT is not NULL;

