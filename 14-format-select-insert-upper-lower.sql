-- FORMAT, SLECET INSERT UCASE, LCASE, UPPER, LOWER

use db_socios;

-- FORMAT
select format(quantia, 1) as quantia from donativos limit 10;
select format(123.456, 2); -- 123.46 com arredondamento

-- SELECT INSERT
select insert(nome, 10, 3, '(...)') as nome from socios;
select insert(nome, 3, length(nome) -4, '*****') as nome_ofuscado from socios;

-- UPPER, LOWER
select upper(nome) from socios;
select lower(nome) from socios;
select ucase(nome) from socios;
select lcase(nome) from socios;


-- Variavel
-- SET @id = (SELECT id_socio FROM socios WHERE nome LIKE '%yuri%');
-- SELECT @id;
-- SELECT * FROM socios WHERE id_socio = @id;

-- set @ids = '1,2,3,4';
-- select * from socios where FIND_IN_SET(id_socio, @ids)