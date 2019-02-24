-- UPDATE, INSERT

use db_socios;

-- UPDATE
select * from socios where id_socio = 1;
update socios set nome='Nome Alterado' where id_socio = 1;
select * from socios where id_socio = 1;

-- INSERT
select now();
insert into donativos (id_socio, quantia, data_hora) values (400, 20, now());
insert into donativos values (400, 20, now());
select * from donativos where id_donativo > 50000;
