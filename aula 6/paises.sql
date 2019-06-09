CREATE database IF NOT exists paises;

show databases;

use paises;

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
