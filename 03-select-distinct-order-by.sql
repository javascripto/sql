-- SELECT, DISTINCT, ORDER BY

use db_socios;

-- Número de registros únicos de uma coluna
select distinct cidade from socios;
select distinct cidade from socios order by cidade;

-- Nome da cidade e quantidade de vezes q aparece nos registros
select cidade, count(cidade) as ocorrencias from socios group by cidade order by ocorrencias desc;
select count(*) from socios where cidade = 'Elvas'; -- 11 como mostrado na query anterior


select distinct cidade from socios order by cidade;
select distinct quantia from donativos order by quantia;

-- Registros ordenados pelo nome de forma ascendente e descendente
select id_socio, nome from socios order by nome;
select id_socio, nome from socios order by nome asc;
select id_socio, nome from socios order by nome desc;

-- Ordenando baseado em dois campos
-- Primeiro todos os homens em ordem alfabetica ascendente, depois mulheres
select nome, genero from socios order by genero asc, nome asc;
