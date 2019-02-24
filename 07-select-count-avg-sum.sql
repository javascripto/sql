-- SELECT COUNT, AVG, SUM

use db_socios;

-- Contando quantidade de registros retornados
select count(nome) from socios;

select count(nome) as total from socios where data_nascimento < '1980-01-01';

-- Calculando média dos valores de uma coluna
select avg(quantia) from donativos;

-- Somando registros de uma coluna
select sum(quantia) from donativos;
