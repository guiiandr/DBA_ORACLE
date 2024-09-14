REM   Script: Exercicio_19
REM   Exercicio_19

create view Exercicio_19 AS 
 
select  
     
    first_name as "Nomes que possuem 'ss'" ,  
    department_id as "Departamento = 30",  
    MANAGER_ID as "Management ID" 
 
from 
 
	hr.employees 
 
where  
 
 
	first_name LIKE '%s%s%' OR department_id = '30' 
   	OR manager_id = '103' 
 ;

