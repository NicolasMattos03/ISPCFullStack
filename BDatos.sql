-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Base_De_Datos_Esquema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Base_De_Datos_Esquema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Base_De_Datos_Esquema` DEFAULT CHARACTER SET utf8 ;
USE `Base_De_Datos_Esquema` ;

-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Contratos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Contratos` (
  `id_Contratos` INT NOT NULL,
  `id_inmueble` INT NOT NULL,
  `id_venta` INT NOT NULL,
  `id_alquiler` INT NOT NULL,
  `DNI_cliente` INT NOT NULL,
  `fecha_inicio` DATETIME NULL,
  `fecha_fin` DATETIME NULL,
  `fecha_revision` DATETIME NULL,
  PRIMARY KEY (`id_Contratos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Cliente` (
  `id_Cliente` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Telefono` INT NOT NULL,
  `Direccion` DECIMAL NOT NULL,
  `Contratos_id_Contratos` INT NOT NULL,
  PRIMARY KEY (`id_Cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Agentes_Bienes_Raices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Agentes_Bienes_Raices` (
  `id_Agentes_Bienes_Raices` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `Telefono` INT NOT NULL,
  `Direccion` DECIMAL NOT NULL,
  `Cliente_id_Cliente` INT NOT NULL,
  PRIMARY KEY (`id_Agentes_Bienes_Raices`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Inmuebles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Inmuebles` (
  `id_Inmuebles` INT NOT NULL AUTO_INCREMENT,
  `Tipo_inmuebles` INT NOT NULL,
  `Dormitorios` INT NOT NULL,
  `m2` DECIMAL NOT NULL,
  `Zona_Ubicacion` VARCHAR(45) NOT NULL,
  `Precio` DECIMAL NOT NULL,
  `Agentes_Bienes_Raices_id_Agentes_Bienes_Raices` INT NOT NULL,
  `Cliente_id_Cliente` INT NOT NULL,
  PRIMARY KEY (`id_Inmuebles`, `Cliente_id_Cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Tipo_Operacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Tipo_Operacion` (
  `id_Tipo_Operacion` INT NOT NULL AUTO_INCREMENT,
  `Tipo_venta` VARCHAR(45) NOT NULL,
  `Tipo_compra` VARCHAR(45) NOT NULL,
  `Tipo_alquiler` VARCHAR(45) NOT NULL,
  `Cliente_id_Cliente` INT NOT NULL,
  PRIMARY KEY (`id_Tipo_Operacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Inmuebles_has_Tipo_Operacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Inmuebles_has_Tipo_Operacion` (
  `Inmuebles_id_Inmuebles` INT NOT NULL,
  `Tipo_Operacion_id_Tipo_Operacion` INT NOT NULL,
  PRIMARY KEY (`Inmuebles_id_Inmuebles`, `Tipo_Operacion_id_Tipo_Operacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Venta` (
  `id_Venta` INT NOT NULL,
  `id_inmueble` INT NOT NULL,
  `precio` INT NULL,
  `Tipo_Operacion_id_Tipo_Operacion` INT NOT NULL,
  PRIMARY KEY (`id_Venta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`Alquiler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`Alquiler` (
  `id_alquiler` INT NOT NULL,
  `id_inmueble` INT NOT NULL,
  `precio` INT NULL,
  `Tipo_Operacion_id_Tipo_Operacion` INT NOT NULL,
  PRIMARY KEY (`id_alquiler`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `Base_De_Datos_Esquema`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Base_De_Datos_Esquema`.`category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
