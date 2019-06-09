-- MySQL Script generated by MySQL Workbench
-- 11/22/17 19:43:01
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Treinamento_SQL
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Treinamento_SQL` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Treinamento_SQL` ;

-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Pais` (
  `sigla` CHAR(3) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sigla`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Estado` (
  `sigle` CHAR(2) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `Pais_sigla` CHAR(3) NOT NULL,
  PRIMARY KEY (`sigle`),
  INDEX `fk_Estado_Pais_idx` (`Pais_sigla` ASC),
  CONSTRAINT `fk_Estado_Pais`
    FOREIGN KEY (`Pais_sigla`)
    REFERENCES `Treinamento_SQL`.`Pais` (`sigla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Cidade` (
  `codigo` INT NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `Estado_sigle` CHAR(2) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_Cidade_Estado1_idx` (`Estado_sigle` ASC),
  CONSTRAINT `fk_Cidade_Estado1`
    FOREIGN KEY (`Estado_sigle`)
    REFERENCES `Treinamento_SQL`.`Estado` (`sigle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Bairro` (
  `codigo` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  `Cidade_codigo` INT NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_Bairro_Cidade1_idx` (`Cidade_codigo` ASC),
  CONSTRAINT `fk_Bairro_Cidade1`
    FOREIGN KEY (`Cidade_codigo`)
    REFERENCES `Treinamento_SQL`.`Cidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Endereco` (
  `cep` INT NOT NULL,
  `logradouro` VARCHAR(45) NOT NULL,
  `total_residencias` INT NULL,
  `total_pessoas` INT NULL,
  `Cidade_codigo` INT NOT NULL,
  `Bairro_codigo` INT NULL,
  PRIMARY KEY (`cep`),
  INDEX `fk_Endereco_Bairro1_idx` (`Bairro_codigo` ASC),
  INDEX `fk_Endereco_Cidade1_idx` (`Cidade_codigo` ASC),
  CONSTRAINT `fk_Endereco_Bairro1`
    FOREIGN KEY (`Bairro_codigo`)
    REFERENCES `Treinamento_SQL`.`Bairro` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Endereco_Cidade1`
    FOREIGN KEY (`Cidade_codigo`)
    REFERENCES `Treinamento_SQL`.`Cidade` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Pessoa` (
  `CPF` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Treinamento_SQL`.`Pessoa_has_Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Treinamento_SQL`.`Pessoa_has_Endereco` (
  `Pessoa_CPF` INT NOT NULL,
  `Endereco_cep` INT NOT NULL,
  PRIMARY KEY (`Pessoa_CPF`, `Endereco_cep`),
  INDEX `fk_Pessoa_has_Endereco_Endereco1_idx` (`Endereco_cep` ASC),
  INDEX `fk_Pessoa_has_Endereco_Pessoa1_idx` (`Pessoa_CPF` ASC),
  CONSTRAINT `fk_Pessoa_has_Endereco_Pessoa1`
    FOREIGN KEY (`Pessoa_CPF`)
    REFERENCES `Treinamento_SQL`.`Pessoa` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_has_Endereco_Endereco1`
    FOREIGN KEY (`Endereco_cep`)
    REFERENCES `Treinamento_SQL`.`Endereco` (`cep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
