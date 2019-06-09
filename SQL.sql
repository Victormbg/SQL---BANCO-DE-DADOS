CREATE DATABASE IF NOT exists TreinamentoSQL;
SHOW DATABASES;
USE TreinamentoSQL;
ALTER DATABASE TreinamentoSQL CHARACTER SET = `latin1`;
DROP database  IF exists  treinamentosql;
DROP database treinamentosql;



CREATE DATABASE IF NOT exists TreinamentoSQL; -- cria banco de dados
USE TreinamentoSQL; -- seleciona o banco 
CREATE TABLE IF NOT EXISTS estado (
		sigla CHAR(2) NOT NULL,
		descricao varchar(100) NOT NULL,
		PRIMARY KEY (sigla)
	) engine=innodb;

CREATE TABLE IF NOT EXISTS cidade (
		codigo INT NOT NULL auto_increment,
		descricao varchar(100) NOT NULL,
		estado_sigla CHAR(2) NOT NULL,
		PRIMARY KEY (codigo), -- chave primaria
		FOREIGN KEY(estado_sigla) references estado(sigla) -- chave estrangeira
	) engine=innodb;

SHOW TABLES; -- exibi tabelas 

ALTER TABLE cidade ADD area VARCHAR(30) NULL; -- adiciona uma coluna a tabela

ALTER TABLE cidade CHANGE area regiao VARCHAR(2) NOT NULL; -- altera uma coluna da tabela

DESC cidade; -- Exisbe descrição da tabela 

ALTER TABLE cidade DROP regiao; -- apaga uma coluna

ALTER TABLE estado RENAME uf; -- altera o nome da tabela 

ALTER TABLE uf RENAME estado;

DROP TABLE cidade; -- excluir uma tabela






