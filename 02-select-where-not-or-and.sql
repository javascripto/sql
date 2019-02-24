-- SELECT, WHERE, NOT, OR, AND

use db_socios;

-- Quantidade total de registros da tabela socios
select count(*) from socios;

select * from socios where id_socio = 10;
select nome from socios where id_socio = 10;
select nome from socios where id_socio <= 10;

-- pessoas com id diferente de 10, limitando a 1 registro
select nome from socios where id_socio <> 10 limit 1;

-- Pessoas da cidade de Lisboa
select nome, cidade from socios where cidade = 'Lisboa';

-- Dez primeiras pessoas com id de numero par ou impar
select id_socio, nome from socios where (id_socio % 2 = 0) limit 10; -- Pares
select id_socio, nome from socios where (id_socio % 2 <> 0) limit 10; -- Impares

-- Usando AND
select * from socios where cidade = 'Lisboa' and genero = 1;
select nome from socios where id_socio >= 10 and id_socio <= 20; 
select nome from socios where id_socio between 10 and 20;
-- id e nome das pessoas onde o id seja menor ou igual a 10 e seja diferente de 5
select id_socio, nome from socios where id_socio <= 10 and id_socio <> 5;

-- Usando OR
select id_socio, nome from socios where id_socio = 10 or id_socio = 20;
select id_socio, nome from socios where id_socio in (10, 20, 30);
