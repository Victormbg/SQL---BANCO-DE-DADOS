CREATE DATABASE IF NOT exists BancoDeDados;
show databases;
show tables;
USE BancoDeDados;
ALTER DATABASE BancoDeDados CHARACTER SET = `latin1`;

CREATE TABLE IF NOT EXISTS cadastro (
		cpf varchar(2) NOT NULL,
		nome varchar(100) NOT NULL,
		email varchar(100) NOT NULL,
		senha varchar(100) NOT NULL,
		endereco varchar(100) NOT NULL,
		numero varchar(100) NOT NULL,
		complemento varchar(100) NOT NULL,
		bairro varchar(100) NOT NULL,
		cep varchar(100) NOT NULL,
		referencia varchar(100) NOT NULL,
		telefone varchar(100) NOT NULL,
		PRIMARY KEY (cpf)
	) engine=innodb;	

CREATE TABLE IF NOT EXISTS pagamento (
		id int,
		nome varchar(100) NOT NULL,
		ativo bit,
		PRIMARY KEY (id)
	) engine=innodb;	


CREATE TABLE IF NOT EXISTS funcionario (
		id int,
		matricula varchar(100) NOT NULL,
		nome varchar(100) NOT NULL,
		email varchar(100) NOT NULL,
		senha varchar(100) NOT NULL,
		telefone varchar(100) NOT NULL,
		PRIMARY KEY (id)
	) engine=innodb;


CREATE TABLE IF NOT EXISTS categoria (
		id int,
		nome varchar(100) NOT NULL,
		ativo bit,
		PRIMARY KEY (id)
	) engine=innodb;

CREATE TABLE IF NOT EXISTS pedidos (
		id int,
		data_pedido datetime,
		data_entrega datetime,
		valor_entrega decimal(12,2) NOT NULL,
		observacao text,
		
		cadastro_cpf varchar(100) NOT NULL,
		funcionario_id int,
		pagamento_id int,
		PRIMARY KEY (id),
		FOREIGN KEY(cadastro_cpf) references cadastro(cpf),
		FOREIGN KEY(funcionario_id) references funcionario(id),
		FOREIGN KEY(pagamento_id) references pagamento(id)
	) engine=innodb;

	
CREATE TABLE IF NOT EXISTS produtos (
		id int,
		descricao varchar(100) NOT NULL,
		valor_unitario decimal(12,2) NOT NULL,
		ativo bit,
		
		categoria_id int,
		PRIMARY KEY (id),
		FOREIGN KEY(categoria_id) references categoria(id)
	) engine=innodb;

CREATE TABLE IF NOT EXISTS itens_Pedido (
		id int,
		quantidade tinyint,
		valor_unitario decimal(12,2) NOT NULL,
		valor_toral decimal(12,2) NOT NULL,
		
		pedidos_id int,
		produtos_id int,
		PRIMARY KEY (id),
		FOREIGN KEY(pedidos_id) references pedidos(id),
		FOREIGN KEY(produtos_id) references produtos(id)
	) engine=innodb;