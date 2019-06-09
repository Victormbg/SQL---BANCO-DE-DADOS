use ecommerce;

SET SQL_SAFE_UPDATES = 0;

show tables;  

drop table tipo;

select * from juridica;
select * from pessoa;
select * from fisica;
select * from telefone;

alter table juridica add isento bit not null;

insert into juridica(cnpj,inscr_estadual,razao_social,fantasia,isento) value ('123456789','93.419.380/0001-84','Datasul','00010001','');
insert into juridica(cnpj,inscr_estadual,razao_social,fantasia,isento) value ('1234567239','93.419.380/0001-14','Datanorte','03120101201','');
insert into juridica(cnpj,inscr_estadual,razao_social,fantasia,isento) value ('1234234789','93.419.320/0001-84','Dataleste','00010003121','');
insert into juridica(cnpj,inscr_estadual,razao_social,fantasia,isento) value ('1234231123','93.419.380/0201-84','Dataoeste','0001231201','');

insert into pessoa(id,usuario,senha,email,ativo) value ('1','paulo','paulo2','paulo@gmail.com','');
insert into pessoa(id,usuario,senha,email,ativo) value ('2','pedro','pedro2','pedro@paulo.com','');
insert into pessoa(id,usuario,senha,email,ativo) value ('3','vania','vania2','vanioa@paulo.com','');
insert into pessoa(id,usuario,senha,email,ativo) value ('4','maria','maria2','maria@paulo.com','');

insert into fisica(cpf,nome,data_nascimento,nome_mae,nome_pai) value ('123456','sonia','1999/10/12','sonia mae','sonia pai');
insert into fisica(cpf,nome,data_nascimento,nome_mae,nome_pai) value ('123123','paulo','1999/10/12','paulo mae','paulo pai');
insert into fisica(cpf,nome,data_nascimento,nome_mae,nome_pai) value ('122312','tania','1999/10/12','tania mae','tania pai');
insert into fisica(cpf,nome,data_nascimento,nome_mae,nome_pai) value ('123213','maria','1999/10/12','maria mae','maria pai');

insert into telefone(id,ddd,numero,ramal) value ('1','21','22222222','0198');
insert into telefone(id,ddd,numero,ramal) value ('2','25','33333333','0123');
insert into telefone(id,ddd,numero,ramal) value ('3','22','23176138','0178');
insert into telefone(id,ddd,numero,ramal) value ('4','28','44444444','0187');




update fisica set cpf='679867',nome='mar',data_nascimento='1998/12/12',nome_mae='maria',nome_pai='paulo' where cpf = '123123';
update fisica set cpf='123233',nome='panha',data_nascimento='1998/07/12',nome_mae='maria2',nome_pai='marcelo' where cpf = '122312';
update fisica set cpf='123123',nome='pinho',data_nascimento='1998/11/12',nome_mae='maria3',nome_pai='marcos' where cpf = '123213';

update pessoa set id = '21', usuario = 'victoria', senha = 'victora2', email = 'victoria@victoria.com' where id = '1';
update pessoa set id = '61', usuario = 'marcia', senha = 'marcia2', email = 'marcia@marcia.com' where id = '61';
update pessoa set id = '31', usuario = 'marcelo', senha = 'marcelo2', email = 'marcelo@marcelo.com' where id = '3';

update telefone set id = '21', ddd = '31' ,numero='11111111', ramal='123' where id = '1';
update telefone set id = '61', ddd = '65' ,numero='88888888', ramal='983' where id = '2';
update telefone set id = '91', ddd = '98' ,numero='99990000', ramal='243' where id = '3';

delete from pessoa where id='21';
delete from pessoa where id='4';

delete from telefone where id='21';
delete from telefone where id='91';

SELECT * FROM fisica WHERE nome='pinho' limit 3;


