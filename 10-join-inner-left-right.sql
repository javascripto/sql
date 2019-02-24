-- INER JOIN, LEFT JOIN, RIGHT JOIN

use db_socios;

--  INNER JOIN
-- fazendo um select na tabela socios juntando com a tabela donativos,
-- selecionando cada donativo e apresentando dados de ambas tabelas
-- Monstrando ultimos 5 donativos e quem doou
select * 
from socios s
inner join donativos d on s.id_socio = d.id_socio
order by d.data_hora desc
limit 5;

-- LEFT JOIN
-- todas linhas da tabela da esquerda e todos 
-- registros que correspondem na tabela da direita
select *
from socios s -- tabela da esquerda
left join donativos d on s.id_socio = d.id_socio -- tabela da direita
where s.id_socio <= 10
order by s.id_socio;
-- caso eu apague as informações de doações do socio com id 10,
-- ainda terei uma linha correspondente a este socio, porem com valores
-- nulos que representem as doações. ja se eu apagar o socio de id 10
-- mas nao apagar as doações, nenhuma informação deste socio é apresentada


-- RIGHT JOIN
-- todas linhas da tabela da direita e todos 
-- registros q correspondam na tabela da esquerda
select s.id_socio, s.nome, d.*
from socios s
left join donativos d on s.id_socio = d.id_socio
where s.id_socio = 20;


-- Alternativa a joins:
select s.*, d.*
from socios s, donativos d
where s.id_socio = d.id_socio
limit 10;