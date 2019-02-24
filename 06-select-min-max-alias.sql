-- SELECT MIN, MAX, ALIAS
use db_socios;

-- Seleciona a menor  e a maior data de nascimento da tabela socios
select min(data_nascimento) from socios;
select max(data_nascimento) from socios;

select min(quantia) from donativos;

select * from donativos where quantia = (select max(quantia) from donativos);

select min(quantia), max(quantia) from donativos;

select min(quantia) as minimo, max(quantia) as maximo from donativos;

select
    min(data_nascimento) as 'mais velho',
    max(data_nascimento) as 'mais novo'
from socios;

-- Alias para nome da tabela
select s.nome, s.morada, s.cidade from socios s;

