-- Importanto base de dados baixada pelo terminal:
-- mysql -uroot -proot < db_socios.sql

-- Importando via heidiSQL:
-- Menu File > Run SQL File > Selecione o arquivo e execute

use db_socios;
desc socios;
describe socios;

select * from socios;
select * from socios limit 5;
select id_socio, nome, telefone from socios; 
select nome, nome as 'nome completo' from socios;
select nome, md5(nome) as hash from socios;
select 'yuri' as nome, 25 as idade;

select now();
select now() as 'Agora';
select md5('Çenha');


-- Ver referencias aqui depois do curso:
-- https://www.w3schools.com/sql