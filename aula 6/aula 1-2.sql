use treinamento_sql;

desc pais;

insert into pais (sigla,descricao) value ('ARG','Argentina');

insert into pais (descricao,sigla) value ('Brasil','BRA');

insert into pais (descricao,sigla) value ('Estados Unidos','USA');

insert into pais (descricao,sigla) value ('Inglaterra','ENG');

insert into pais (descricao,sigla) value ('Estados Unidos','');

insert into pais value ('CAS',NULL);

insert into estado(sigla,descricao,Pais_sigla) value ('RJ','Rio de Janeiro','BRA');

insert into estado(sigla,descricao,Pais_sigla) value ('SP','Sao Paulo','BRA');
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
insert into estado(sigla,descricao,Pais_sigla) value ('FL','Florida','USA');

insert into cidade(descricao, Estado_sigla) value ('Rio de Janeiro', 'RJ');

insert into cidade value (null, 'Niteroi', 'RJ');

select * from estado;

select * from cidade;

select * from pais;

set sql_safe_updates = 0;

select last_insert_id();

update pais set sigla = 'MEX', descricao= 'Mexico' where sigla= 'ARG';

delete from pais where sigla= 'ARG';

select descricao from pais;

select descricao,sigla from pais;

select distinct descricao, estado_sigla from cidade;

select * from estado where Pais_sigla <> 'BRA';

select * from estado where descricao like '%i%';

select * from estado where Pais_sigla in ('i');

select * from pais order by descricao desc;

select * from pais order by descricao asc;

select * from estado where Pais_sigla = 'BRA' order by descricao desc, sigla asc;

select * from cidade limit 3;

select * from cidade limit 3, 2;
