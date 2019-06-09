CREATE database IF NOT exists Treinamento_SQL;
show databases;
use Treinamento_SQL;
alter database TreinamentoSQL character set = `latin1`;

create table if not exists pais(
	sigla char(3) not null,
	descricao varchar(45) not null,
	primary key (sigla)
)engine=innodb;

create table if not exists estado(
	sigla char(3) not null,
	descricao varchar(100) not null,
	Pais_sigla char(3) not null,
	primary key (sigla)
)engine=innodb;

create table if not exists cidade(
	codigo int not null auto_increment,
	descricao varchar(100) not null,
	estado_sigla char(3) not null,
	primary key (codigo),
	foreign key(estado_sigla) references estado(sigla)
)engine=innodb;

show tables;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    

alter table estado add Pais_sigla char(3) not null;

alter table cidade add area varchar(30) null;

alter table cidade change area regiao varchar(2) not null;

desc cidade;

alter table cidade drop regiao;

alter table cidade drop regiao;

alter table estado rename uf;

alter table uf rename estado;

drop table cidade;