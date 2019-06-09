use treinamento_sql;

desc pais;

INSERT INTO pais (sigla,descricao) value ('ARG','Argentina');

INSERT INTO pais (sigla,descricao) value ('BRA','Brasil');

INSERT INTO pais VALUE ('CAS', NULL);

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('RJ', 'Rio de Janeiro', 'BRA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('FL', 'Florida', 'USA');

INSERT INTO cidade (descricao, Estado_sigla) VALUE ('Rio de Janeiro', 'RJ');

INSERT INTO cidade VALUE (NULL, 'Niteroi', 'RJ');

SELECT * FROM cidade;

SELECT * FROM pais;

SET SQL_SAFE_UPDATES = 0;

SELECT last_insert_id();
start transaction;
UPDATE pais SET sigla = 'MEX', descricao = 'México' WHERE sigla = 'ARG';
rollback;

DELETE FROM pais WHERE sigla = 'MEX';

SELECT * FROM pais;

SELECT descricao from pais;

SELECT sigla, descricao from pais;

SELECT descricao FROM cidade;

SELECT DISTINCT descricao, estado_sigla FROM cidade;

SELECT * FROM estado WHERE Pais_sigla <> 'BRA';

SELECT * FROM estado WHERE descricao LIKE '%i%';

SELECT * FROM estado WHERE descricao LIKE '%o%';

SELECT * FROM estado WHERE Pais_sigla in ('i');

SELECT * FROM pais ORDER BY descricao ASC;

SELECT * FROM pais ORDER BY descricao DESC;

SELECT * FROM estado WHERE Pais_sigla = 'BRA' ORDER BY descricao DESC, sigla ASC;

SELECT * FROM cidade LIMIT 3;

SELECT * FROM cidade LIMIT 3,2;
