use paises;

insert into pais (descricao,sigla) value ('Inglaterra','ENG');

insert into pais (descricao,sigla) value ('Africa','AFR');

insert into pais (sigla,descricao) value ('ARG','Argentina');

insert into pais (descricao,sigla) value ('Brasil','BRA');

insert into pais (descricao,sigla) value ('Estados Unidos','USA');

insert into estado(sigla,descricao,Pais_sigla) value ('RJ','Rio de Janeiro','BRA');

insert into estado(sigla,descricao,Pais_sigla) value ('SP','São Paulo','BRA');

insert into estado(sigla,descricao,Pais_sigla) value ('MG','Minas Gerais','BRA');

insert into estado(sigla,descricao,Pais_sigla) value ('NY','New York','USA');

insert into estado(sigla,descricao,Pais_sigla) value ('NV','Nevada','USA');

insert into estado(sigla,descricao,Pais_sigla) value ('CF','California','USA');

insert into estado(sigla,descricao,Pais_sigla) value ('LO','Londres','ENG');

insert into estado(sigla,descricao,Pais_sigla) value ('YK','York','ENG');

insert into estado(sigla,descricao,Pais_sigla) value ('AL','Angola','AFR');

insert into estado(sigla,descricao,Pais_sigla) value ('AN','Africa Do Norte','AFR');

select last_insert_id();

update pais set sigla = 'AUS', descricao= 'Sidney' where sigla= '';

update pais set sigla = 'MEX', descricao= 'Mexico' where sigla= 'ARG';

delete from pais where sigla='MEX';

update estado set sigla = 'NJ', descricao = 'Nova Jérsei',Pais_sigla ='USA' where sigla = 'NV';

update estado set sigla = 'NH', descricao = 'Nova Hampshire',Pais_sigla ='USA' where sigla = 'CF';

update estado set sigla = 'LP', descricao = 'Liverpool',Pais_sigla ='ENG' where sigla = 'CM';

update estado set sigla = 'BH', descricao = 'Birmingham',Pais_sigla ='ENG' where sigla = 'CL';

delete from estado where sigla='AL';

SELECT * FROM estado WHERE Pais_sigla = 'USA' LIMIT 3;

SELECT sigla FROM pais ORDER BY sigla DESC;

select * from pais;

select * from estado;