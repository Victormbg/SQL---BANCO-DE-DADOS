CREATE database IF NOT exists treinamento_sql;
show databases;
use treinamento_sql;
alter database treinamento_sql character set = 'latin1' ;

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

alter table cidade add area varchar(30) not null;

alter table estado add Pais_sigla char(3) not null;