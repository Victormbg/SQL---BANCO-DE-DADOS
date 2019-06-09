use Paises_sql;

INSERT INTO pais (sigla,descricao) value ('ARG','Argentina');

INSERT INTO pais (sigla,descricao) value ('BRA','Brasil');

INSERT INTO pais (sigla,descricao) value ('USA','Estados Unidos');

INSERT INTO pais (sigla,descricao) value ('AFR','Africa');

INSERT INTO pais (sigla,descricao) value ('ENG','Inglaterra');

SELECT * FROM pais;

SET SQL_SAFE_UPDATES = 0;

UPDATE pais SET sigla = 'MEX', descricao = 'México' WHERE sigla = 'ARG';

UPDATE pais SET sigla = 'CHN', descricao = 'China' WHERE sigla = 'AFR';

DELETE FROM pais WHERE sigla = 'MEX';

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('RJ', 'Rio de Janeiro', 'BRA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('SP', 'São Paulo', 'BRA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('BH', 'Bahia', 'BRA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('AM', 'Amazonia', 'BRA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('RS', 'Rio Grande do Sul', 'BRA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('AK', 'Alasca', 'USA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('AL', 'Alabama', 'USA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('AZ', 'Arizona', 'USA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('CA', 'Califórnia', 'USA');

INSERT INTO estado (sigla, descricao, Pais_sigla) VALUE ('KS', 'Kansas', 'USA');

SELECT * FROM estado;

UPDATE estado SET sigla = 'CO', descricao = 'Colorado', Pais_sigla = 'USA' WHERE sigla = 'BH';

UPDATE estado SET sigla = 'OH', descricao = 'Ohio', Pais_sigla = 'USA' WHERE sigla = 'AM';

UPDATE estado SET sigla = 'UT', descricao = 'Utah', Pais_sigla = 'USA' WHERE sigla = 'AK';

UPDATE estado SET sigla = 'OR', descricao = 'Oregon', Pais_sigla = 'USA' WHERE sigla = 'AL';

DELETE FROM estado WHERE sigla = 'RJ';

SELECT * FROM estado WHERE Pais_sigla = 'USA' LIMIT 3;

SELECT sigla FROM pais ORDER BY sigla DESC;


