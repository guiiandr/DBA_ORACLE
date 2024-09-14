REM   Script: Exercicio_3
REM   Exercicio_3

create view Exercicio_3 AS 
 
SELECT  
 e.ename AS Nome,  
 e.job AS "Função",  
 d.dname AS "Nome do DP",  
 e.sal AS Salario,  
 e.comm AS Comissao,  
 d.loc AS Localizacao, 
 (e.sal + NVL(e.comm, 0)) AS "Salario Total" 
FROM  
 scott.dept d 
INNER JOIN  
 scott.emp e ON e.deptno = d.deptno 
WHERE  
 d.loc = 'DALLAS' OR d.loc = 'CHICAGO' 
 
ORDER BY  
 "Salario Total" DESC;

