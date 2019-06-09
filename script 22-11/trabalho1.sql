CREATE database IF NOT exists Paises_sql;
show databases;
use Paises_sql;

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

show tables;