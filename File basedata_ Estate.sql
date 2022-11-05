-- MySQL Workbench Synchronization
-- Generated: 2022-11-04 17:35
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Pc

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `base_de_datos_esquema`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `base_de_datos_esquema`.`Inmuebles` 
DROP FOREIGN KEY `fk_Inmuebles_Agentes_Bienes_Raices`,
DROP FOREIGN KEY `fk_Inmuebles_Cliente1`;

ALTER TABLE `base_de_datos_esquema`.`Tipo_Operacion` 
DROP FOREIGN KEY `fk_Tipo_Operacion_Cliente1`;

ALTER TABLE `base_de_datos_esquema`.`Agentes_Bienes_Raices` 
DROP FOREIGN KEY `fk_Agentes_Bienes_Raices_Cliente1`;

ALTER TABLE `base_de_datos_esquema`.`Inmuebles_has_Tipo_Operacion` 
DROP FOREIGN KEY `fk_Inmuebles_has_Tipo_Operacion_Inmuebles1`,
DROP FOREIGN KEY `fk_Inmuebles_has_Tipo_Operacion_Tipo_Operacion1`;

ALTER TABLE `base_de_datos_esquema`.`Inmuebles` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `Tipo_superficie` `Tipo_superficie` DECIMAL NOT NULL ,
CHANGE COLUMN `Precio` `Precio` DECIMAL NOT NULL ,
ADD INDEX `fk_Inmuebles_Agentes_Bienes_Raices_idx` (`Agentes_Bienes_Raices_id_Agentes_Bienes_Raices` ASC) VISIBLE,
ADD INDEX `fk_Inmuebles_Cliente1_idx` (`Cliente_id_Cliente` ASC) VISIBLE,
DROP INDEX `fk_Inmuebles_Cliente1_idx` ,
DROP INDEX `fk_Inmuebles_Agentes_Bienes_Raices_idx` ;
;

ALTER TABLE `base_de_datos_esquema`.`Cliente` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `Direccion` `Direccion` DECIMAL NOT NULL ;

ALTER TABLE `base_de_datos_esquema`.`Tipo_Operacion` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
ADD INDEX `fk_Tipo_Operacion_Cliente1_idx` (`Cliente_id_Cliente` ASC) VISIBLE,
DROP INDEX `fk_Tipo_Operacion_Cliente1_idx` ;
;

ALTER TABLE `base_de_datos_esquema`.`Agentes_Bienes_Raices` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `Direccion` `Direccion` DECIMAL NOT NULL ,
ADD INDEX `fk_Agentes_Bienes_Raices_Cliente1_idx` (`Cliente_id_Cliente` ASC) VISIBLE,
DROP INDEX `fk_Agentes_Bienes_Raices_Cliente1_idx` ;
;

ALTER TABLE `base_de_datos_esquema`.`Inmuebles_has_Tipo_Operacion` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
ADD INDEX `fk_Inmuebles_has_Tipo_Operacion_Tipo_Operacion1_idx` (`Tipo_Operacion_id_Tipo_Operacion` ASC) VISIBLE,
ADD INDEX `fk_Inmuebles_has_Tipo_Operacion_Inmuebles1_idx` (`Inmuebles_id_Inmuebles` ASC) VISIBLE,
DROP INDEX `fk_Inmuebles_has_Tipo_Operacion_Inmuebles1_idx` ,
DROP INDEX `fk_Inmuebles_has_Tipo_Operacion_Tipo_Operacion1_idx` ;
;

ALTER TABLE `base_de_datos_esquema`.`Inmuebles` 
ADD CONSTRAINT `fk_Inmuebles_Agentes_Bienes_Raices`
  FOREIGN KEY (`Agentes_Bienes_Raices_id_Agentes_Bienes_Raices`)
  REFERENCES `base_de_datos_esquema`.`Agentes_Bienes_Raices` (`id_Agentes_Bienes_Raices`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Inmuebles_Cliente1`
  FOREIGN KEY (`Cliente_id_Cliente`)
  REFERENCES `base_de_datos_esquema`.`Cliente` (`id_Cliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `base_de_datos_esquema`.`Tipo_Operacion` 
ADD CONSTRAINT `fk_Tipo_Operacion_Cliente1`
  FOREIGN KEY (`Cliente_id_Cliente`)
  REFERENCES `base_de_datos_esquema`.`Cliente` (`id_Cliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `base_de_datos_esquema`.`Agentes_Bienes_Raices` 
ADD CONSTRAINT `fk_Agentes_Bienes_Raices_Cliente1`
  FOREIGN KEY (`Cliente_id_Cliente`)
  REFERENCES `base_de_datos_esquema`.`Cliente` (`id_Cliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `base_de_datos_esquema`.`Inmuebles_has_Tipo_Operacion` 
ADD CONSTRAINT `fk_Inmuebles_has_Tipo_Operacion_Inmuebles1`
  FOREIGN KEY (`Inmuebles_id_Inmuebles`)
  REFERENCES `base_de_datos_esquema`.`Inmuebles` (`id_Inmuebles`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Inmuebles_has_Tipo_Operacion_Tipo_Operacion1`
  FOREIGN KEY (`Tipo_Operacion_id_Tipo_Operacion`)
  REFERENCES `base_de_datos_esquema`.`Tipo_Operacion` (`id_Tipo_Operacion`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
