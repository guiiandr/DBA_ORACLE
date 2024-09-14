REM   Script: Exercicio_8
REM   Exercicio_8

select edv.first_name AS Nome, jb.START_DATE AS "Data início", jb.END_DATE as "Data de término", edv.JOB_TITLE AS Cargo 
     
    from HR.EMP_DETAILS_VIEW edv  
		inner join HR.JOB_HISTORY jb on edv.employee_id = jb.employee_id;

create view Exercicio_8 AS 
     
select edv.first_name AS Nome, jb.START_DATE AS "Data início", jb.END_DATE as "Data de término", edv.JOB_TITLE AS Cargo 
     
    from HR.EMP_DETAILS_VIEW edv  
		inner join HR.JOB_HISTORY jb  
    			on edv.employee_id = jb.employee_id;

