-- LEFT, RIGHT, LOCATE, LPAD, RPAD

use db_socios;












-- Padding Center
set @separador = ' '; -- separador no terminal
set @separador = '-'; -- separador no vscode
set @comprimento_maximo = (select max(length(nome)) from socios);
select rpad(
    lpad(
        nome,
        length(nome) + ((@comprimento_maximo - length(nome)) / 2), -- length do nome + metade do (maior length da coluna - length do nome)
        @separador),
    @comprimento_maximo, 
    @separador) as padding_center
from socios;
