-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema secao03
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema secao03
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `secao03` DEFAULT CHARACTER SET utf8 ;
USE `secao03` ;

-- -----------------------------------------------------
-- Table `secao03`.`tipos_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao03`.`tipos_produto` (
  `idtipos_produto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipos_produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao03`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao03`.`produtos` (
  `idproduto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  PRIMARY KEY (`idproduto`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produto` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `secao03`.`tipos_produto` (`idtipos_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao03`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao03`.`pacientes` (
  `idpacientes` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `enderenco` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`idpacientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao03`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao03`.`professores` (
  `idprofessores` INT NOT NULL AUTO_INCREMENT,
  `telefone` INT NOT NULL,
  `nome` VARCHAR(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`idprofessores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secao03`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `secao03`.`turmas` (
  `idturmas` INT NOT NULL AUTO_INCREMENT,
  `capacidade` INT NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`idturmas`),
  INDEX `fk_turmas_1_idx` (`id_professor` ASC) VISIBLE,
  CONSTRAINT `fk_turmas_1`
    FOREIGN KEY (`id_professor`)
    REFERENCES `secao03`.`professores` (`idprofessores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
