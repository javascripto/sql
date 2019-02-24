-- SELECT LIKE, NOT LIME, LIMIT, TOP, NUMROW
use db_socios;

-- Buscar pessoas que o nome começe com 'a'
select * from socios where nome like 'a%';

-- Buscar pessoas que o nome NÃO começe com 'a'
select * from socios where nome not like 'a%';

-- Buscar pessoas que o nome começe com tenham
-- o nome 'garcia' em qualquer parte do cmapo nome
select * from socios where nome like '%garcia%';

-- Buscar pessoas que tenham o telefone começando em 93 e terminando em 98
select * from socios where telefone like '93%98';

-- Buscar registros em que o telefone comece com 93 e o quarto digito seja um 6
select * from socios where telefone like '93_6%';

-- Selecionar todos registros onde o nome começe
-- com 'ana', ordenados pelo id_socio de forma
-- descendente e limitando a 3 resultados
select * from socios where nome like 'ana %' order by id_socio desc limit 3;
-- Alguns SGBD's não utilizam o comando limit mas sim os comandos TOP ou NUMROW

-- Fazendo paginação com limit
select * from socios limit 5;
select * from socios limit 0,5;
select * from socios limit 5,5;
select * from socios limit 10,5;
select * from socios limit 15,5;
