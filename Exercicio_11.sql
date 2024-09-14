REM   Script: Exercicio_11
REM   Exercicio_11

create view Exercicio_11 AS 
     
select  
     
    edv.first_name AS Funcionario,  
    edv.DEPARTMENT_ID AS ID_Dep,  
    edv.DEPARTMENT_NAME AS Departamento,  
    loc.CITY AS Cidade 
   
 
	from  
     
    hr.emp_details_view edv 
		 
    	inner join  
    			 
    		hr.locations loc on edv.location_id = loc.location_id 
 
    where  
    		loc.CITY  = 'Tokyo' or loc.CITY  = 'Munich' or loc.CITY  = 'Oxford'	or loc.CITY  = 'Roma' 	 
     
    order by Funcionario;

