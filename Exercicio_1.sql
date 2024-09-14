REM   Script: Exercicio_1
REM   Exercicio_1

create view Exercicio_1 AS --criação de viewer com definição de nome, puxando os atributos com AS do select
 
select prod_subcategory AS Subcategoria,  --selecionando a coluna subcategory e nomeando
  max(prod_List_price) AS "Lista de preços" from sh.PRODUCTS --selecionando o máximo da colunada prod_list_price e nomeando, e puxando ambos da tabela SH,Products
     group by prod_subcategory; -- agrupando por subcategory.;

