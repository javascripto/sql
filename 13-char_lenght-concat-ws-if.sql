-- CHAR_LENGTH, CONCAT, CONCAT WS

use db_socios;

select * from socios where char_length(nome) < 25;

-- CONCAT
select nome, concat(morada, ' - ', cidade) as morada_completa from socios;
select concat('Nome: ', nome) as nome from socios;

-- CONCAT_WS é como um join de um array no javascript passando um caractere separador
select concat_ws(' > ', nome, morada, cidade) as valor from socios;
select concat_ws(';', nome, if(genero=0, 'Masculino', 'Feminino')) as CSV from socios limit 0,10;
select concat_ws(' > ', rpad(nome, (select max(char_length(nome)) from socios), ' '), if(genero=0, 'Masculino', 'Feminino')) as padding from socios limit 0,10;
