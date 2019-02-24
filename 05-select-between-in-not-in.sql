-- SELECT BETWEEN, IN, NOT IN
use db_socios;

-- Selecionando registros com id entre 1 e 3 ou entre 7 e 9
select * from socios where id_socio between 1 and 3 or id_socio between 7 and 9;

-- Selecionando registros que nasceram na decada de 1960
select * from socios where data_nascimento between '1960-01-01' and '1969-12-31';

-- Selecionado registros com data de nascimento anterior a fevereiro de 1950
select * from socios where data_nascimento < '1950-02' order by data_nascimento;

-- Selecionando todos registros com nomes que vão de carla ate fernanda exceto fernanda.
-- o primeiro nome é inclusivo e o segundo nome é exclusivo neste caso
select * from socios where nome between 'carla' and 'fernanda' order by nome;

-- Fazendo select com comando in no lugar de varias condições para um mesmo campo
select * from socios where id_socio = 1 or id_socio = 6 or id_socio = 8;
select * from socios where id_socio in (1, 6, 8);

-- Select in com base em uma lista de ids de outro select
select * from socios where id_socio in (
    select id_socio from socios where nome like 'ana %'
);

-- Selecionando moradores de Porto ou Lisboa com comando in
select * from socios where cidade in ('Porto', 'Lisboa');

-- Selecionando todos que não moram em Porto ou Lisboa
select * from socios where cidade not in ('Porto', 'Lisboa');
