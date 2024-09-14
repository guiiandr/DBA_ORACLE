REM   Script: Exercicio_10
REM   Exercicio_10

create view Exercicio_10 AS 
     
select edv.first_name AS Funcionário, edv.DEPARTMENT_NAME AS Departamento, loc.CITY AS Cidade 
 
	from hr.emp_details_view edv 
		inner join hr.locations loc on edv.location_id = loc.location_id 
     
    order by Departamento;

