REM   Script: Exercicio_2
REM   Exercicio_2

create view Exercicio_02 AS 
 
select c.cust_id AS ID, c.cust_first_name AS NOME, round(avg(amount_sold),2) AS "ACIMA DA MÉDIA", (select round(avg(amount_sold),2) from sh.sales) AS "VALOR BASE" from sh.customers c inner join sh.sales s on c.cust_id = s.cust_id 
 
    where time_id between '01-JAN-1998' and '31-DEC-1998'  
         
    group by c.cust_id, c.cust_first_name having avg(s.amount_sold) > (select avg(amount_sold) from sh.sales) 
 
    order by cust_first_name;

