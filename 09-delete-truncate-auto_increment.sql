-- DELETE, TRUNCATE, AUTO_INCREMENT

use db_socios;

-- ATENÇÃO - NUNCA FAÇA DELETE SEM WHERE  - TENHA SEMPRE UM BACKUP

-- no heidisql, o  backup é feito clicando com botao direito sobre a tabela
-- e escolhando aopção export database as sql

-- Apagando todos registros de uma tabela: -- delete from socios

-- Seletando alguns registros pelo id
delete from socios where id_socio in (2, 3, 4, 5, 6);
select id_socio, nome, cidade from socios where id_socio < 10;

-- Ao apagar todos elementos da tabela, o auto increment não é zerado
-- para zerar o auto increment é necessário usar o comando truncate
-- Ou então fazer o reset do auto increment com alter table

-- delete from socios;
-- alter table socios AUTO_INCREMENT = 1;
-- truncate socios
