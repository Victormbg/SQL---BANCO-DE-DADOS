CREATE database IF NOT exists ecommerce;

show databases;

use ecommerce;

create table if not exists pessoa(
	id int,
	usuario varchar(150) not null,
	senha varchar(8) not null,
	email varchar(150) not null,
	ativo bit not null,
	primary key (id)
)engine=innodb;

create table if not exists tipo(
	id int,
	nome varchar(45) not null,
	primary key (id)
)engine=innodb;

create table if not exists juridica(
	cnpj varchar(11),
	inscr_estadual varchar(22) null,
	razao_social varchar(150) not null,
	fantasia varchar(150) null,
	pessoa_id int,
	primary key (cnpj),
	foreign key(pessoa_id) references pessoa(id)
)engine=innodb;

create table if not exists fisica(
	cpf varchar(8),
	nome varchar(200) not null,
	data_nascimento datetime not null,
	nome_mae varchar(200) not null,
	nome_pai varchar(200) null,
	pessoa_id int,
	primary key (cpf),
	foreign key(pessoa_id) references pessoa(id)
)engine=innodb;

create table if not exists telefone(
	id int,
	ddd char(3) not null,
	numero varchar(10) not null,
	ramal varchar(20) null,
	tipo_id int,
	pessoa_id int,
	primary key (id),
	foreign key(pessoa_id) references pessoa(id),
	foreign key(tipo_id) references tipo(id)
)engine=innodb;
