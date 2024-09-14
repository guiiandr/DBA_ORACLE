REM   Script: Exercicio_18
REM   Exercicio_18

CREATE VIEW Exercicio_18  AS 
 
    select  
 
    	first_name as nome, 
    	salary as salario, 
    	COALESCE(TO_CHAR(COMMISSION_PCT), 'nao comissionado') as Comissao 
    		 
    from  
     
    	HR.employees 
 
   ;

