REM   Script: Exercicio_5
REM   Exercicio_5

create view Exercicio_5 AS 
 
SELECT r.region_name AS Regiao ,c.country_name AS Paises 
    FROM hr.countries c  
    	inner join hr.regions r  
    		on c.region_id = r.region_id 
 
ORDER BY  
	Regiao;

