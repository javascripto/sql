-- GROUP BY, HAVING

use db_socios;

-- Agrupando registros por cidade e contando quantidade de ocorrencia de cada uma
select count(*) total, cidade 
from socios 
group by cidade;

-- Selecionando o id do socio e a quantidade de doações agrupadas pelo id do socio
select id_socio, count(id_donativo) as doações 
from donativos 
group by id_socio;


-- Select mais complexo mostrando o nome do socio de uma tabela e relacionando a quantidade de doações 
-- que ela fez em outra tabela ordenando pelo numero de doações de forma descendente
select socios.nome, count(id_donativo) as doações
from donativos, socios
where socios.id_socio = donativos.id_socio
group by socios.id_socio
order by doações desc;

-- Top 10 pessoas que mais doaram por quantia total
select socios.nome, sum(quantia) as total_doado
from donativos, socios
where socios.id_socio = donativos.id_socio
group by socios.id_socio
order by total_doado desc
limit 10;

-- HAVING - Usando having no lugar de where em queries complexas que já usam where
-- Selecionando pessoas q no total doaram mais de 3000
select s.nome, sum(quantia) as total_doado
from donativos d, socios s
where s.id_socio = d.id_socio
group by s.id_socio
having total_doado >= 3000 -- and s.nome like 'h%'
order by total_doado

