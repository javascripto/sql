-- UNION

use db_socios;

-- Uniões só podem ser feitas em tabelas que tenham
-- as mesmas colunas e que tenham o memso tipo de dados

select id_socio, nome from socios where id_socio <= 10
UNION
select id_socio, nome from socios where id_socio >= 20 and id_socio <= 30;


select id_socio,   sum(quantia) as valor from donativos where id_socio = 1
UNION
select id_socio, count(quantia) as valor from donativos where id_socio = 1;

-- Uniões desconsideram valores duplicados
select id_socio, nome from socios where id_socio <= 10
UNION
select id_socio, nome from socios where id_socio > 5 and id_socio <= 20;

-- para considerarm valores duplicados é necessario usar union all
select id_socio, nome from socios where id_socio <= 10
UNION all
select id_socio, nome from socios where id_socio > 5 and id_socio <= 20;
