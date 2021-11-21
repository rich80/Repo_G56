CREATE DATABASE IF NOT EXISTS `inventario`;
USE `inventario`;

CREATE TABLE IF NOT EXISTS `contacto` (
  `IdContacto` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Telefono` varchar(45) COLLATE utf8_bin NOT NULL,
  `Celular` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CorreoE` varchar(50) COLLATE utf8_bin NOT NULL,
  `Direccion` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Activo` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IdContacto`)) 
ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `marcas` (
  `IdMarca` int NOT NULL AUTO_INCREMENT,
  `Marca` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdMarca`)) 
ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `producto` (
  `IdProd` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `UnidadesExist` int NOT NULL,
  `PrecioUnid` int NOT NULL,
  `FKUMed` int NOT NULL DEFAULT '0',
  `FKProveedr` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdProd`),
  KEY `UMed` (`FKUMed`),
  KEY `Proveedor` (`FKProveedr`),
  CONSTRAINT `Proveedor` FOREIGN KEY (`FKProveedr`) REFERENCES `proveedores` (`IdProv`),
  CONSTRAINT `UMEd` FOREIGN KEY (`FKUMed`) REFERENCES `unidmedida` (`IdUMed`)) 
ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `proveedores` (
  `IdProv` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `Apellido` varchar(45) COLLATE utf8_bin NOT NULL,
  `FKContacto` int NOT NULL DEFAULT '0',
  `FKMarca` int NOT NULL,
  PRIMARY KEY (`IdProv`),
  KEY `FKContac` (`FKContacto`),
  KEY `FKMarca` (`FKMarca`),
  CONSTRAINT `FKContac` FOREIGN KEY (`FKContacto`) REFERENCES `contacto` (`IdContacto`),
  CONSTRAINT `FKMarca` FOREIGN KEY (`FKMarca`) REFERENCES `marcas` (`IdMarca`)) 
ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `unidmedida` (
  `IdUMed` int NOT NULL AUTO_INCREMENT,
  `UnidadM` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdUMed`)) 
ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
