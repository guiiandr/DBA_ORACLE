REM   Script: Exercicio_17
REM   Exercicio_17

create view Exercicio_17 AS 
 
select first_name as nome, last_name as sobrenome, job_title as Funcao from HR.EMP_DETAILS_VIEW 
     
    where manager_id is NULL;

