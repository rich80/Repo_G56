CREATE SCHEMA IF NOT EXISTS `INVENTARIO` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `INVENTARIO` ;

CREATE TABLE IF NOT EXISTS `Inventario`.`Producto` (
  `IdProd` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Peso` INT NOT NULL,
  `UnidPeso` VARCHAR(45) NULL,
  `UnidadesExist` INT NOT NULL,
  `PrecioUnid` INT NOT NULL,
  PRIMARY KEY (`IdProd`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Inventario`.`Proveedores` (
  `IdProv` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdProv`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Inventario`.`Marcas` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Inventario`.`Contacto` (
  `IdContacto` INT NOT NULL AUTO_INCREMENT,
  `Telefono` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `Active` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdContacto`))
ENGINE = InnoDB;