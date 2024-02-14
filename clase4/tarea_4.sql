DROP SCHEMA IF EXISTS `mcd_sistema_2`;
CREATE DATABASE  IF NOT EXISTS `mcd_sistema_2`;
USE `mcd_sistema_2`;
DROP TABLE IF EXISTS `Acceso`;

CREATE TABLE `Acceso` (
  `idAcceso` int(11) NOT NULL AUTO_INCREMENT,
  `idAccesoPadre` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `esMenu` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idAcceso`),
  KEY `Acceso_AccesoPadre_idx` (`idAccesoPadre`),
  CONSTRAINT `Acceso_AccesoPadre` FOREIGN KEY (`idAccesoPadre`) REFERENCES `Acceso` (`idAcceso`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS `Ahorro`;
CREATE TABLE `Ahorro` (
  `idAhorro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `clave` char(5) DEFAULT NULL,
  PRIMARY KEY (`idAhorro`)
);

DROP TABLE IF EXISTS `Cliente`;
CREATE TABLE `Cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `razonSocial` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `RFC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
);
DROP TABLE IF EXISTS `ElementoEstructuraEmpresa`;
CREATE TABLE `ElementoEstructuraEmpresa` (
  `idElementoEstructuraEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `tipoElementoEstructura` varchar(30) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idElementoEstructuraEmpresa`),
  KEY `ElementoEstructuraEmpresa_Cliente_idx` (`idCliente`),
  CONSTRAINT `ElementoEstructuraEmpresa_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
DROP TABLE IF EXISTS `AhorroElementoEstructuraEmpresa`;
CREATE TABLE `AhorroElementoEstructuraEmpresa` (
  `idAhorroElementoEstructuraEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `idAhorro` int(11) DEFAULT NULL,
  `idElementoEstructuraEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAhorroElementoEstructuraEmpresa`),
  KEY `AhorroElementoEstructuraEmpresa_Ahorro_idx` (`idAhorro`),
  KEY `AhorroElementoEstructuraEmpresa_EEE_idx` (`idElementoEstructuraEmpresa`),
  CONSTRAINT `AhorroElementoEstructuraEmpresa_Ahorro` FOREIGN KEY (`idAhorro`) REFERENCES `Ahorro` (`idAhorro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AhorroElementoEstructuraEmpresa_EEE` FOREIGN KEY (`idElementoEstructuraEmpresa`) REFERENCES `ElementoEstructuraEmpresa` (`idElementoEstructuraEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS `CuentaBancaria`;
CREATE TABLE `CuentaBancaria` (
  `idCuentaBancaria` int(11) NOT NULL AUTO_INCREMENT,
  `numeroCuentaBancaria` varchar(20) DEFAULT NULL,
  `razonSocial` varchar(30) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCuentaBancaria`)
);

DROP TABLE IF EXISTS `Usuario`;
CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `RFC` varchar(15) DEFAULT NULL,
  `CURP` varchar(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidoPaterno` varchar(30) DEFAULT NULL,
  `apellidoMaterno` varchar(30) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `passwordTemporal` varchar(15) DEFAULT NULL,
  `idElementoEstructuraEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
);

DROP TABLE IF EXISTS `TipoMovimientoDeposito`;
CREATE TABLE `TipoMovimientoDeposito` (
  `idTipoMovimientoDeposito` int(11) NOT NULL AUTO_INCREMENT,
  `clave` char(5) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idTipoMovimientoDeposito`)
);
DROP TABLE IF EXISTS `DepositoUsuario`;
CREATE TABLE `DepositoUsuario` (
  `idDepositoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoMovimientoDeposito` int(11) DEFAULT NULL,
  `idCuentaBancaria` int(11) DEFAULT NULL,
  `idAhorro` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `folio` varchar(30) DEFAULT NULL,
  `origenDeposito` varchar(20) DEFAULT NULL,
  `estatus` varchar(15) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDepositoUsuario`),
  KEY `DepositoUsuario_TipoMovimientoDeposito_idx` (`idTipoMovimientoDeposito`),
  KEY `DepositoUsuario_CuentaBancaria_idx` (`idCuentaBancaria`),
  KEY `DepositoUsuario_Ahorro_idx` (`idAhorro`),
  KEY `DepositoUsuario_Usuario_idx` (`idUsuario`),
  CONSTRAINT `DepositoUsuario_Ahorro` FOREIGN KEY (`idAhorro`) REFERENCES `Ahorro` (`idAhorro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DepositoUsuario_CuentaBancaria` FOREIGN KEY (`idCuentaBancaria`) REFERENCES `CuentaBancaria` (`idCuentaBancaria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DepositoUsuario_TipoMovimientoDeposito` FOREIGN KEY (`idTipoMovimientoDeposito`) REFERENCES `TipoMovimientoDeposito` (`idTipoMovimientoDeposito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DepositoUsuario_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS `Poliza`;
CREATE TABLE `Poliza` (
  `idPoliza` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idPoliza`)
);

DROP TABLE IF EXISTS `MovimientoPoliza`;
CREATE TABLE `MovimientoPoliza` (
  `idMovimientoPoliza` int(11) NOT NULL AUTO_INCREMENT,
  `cuentaContable` varchar(100) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `idPoliza` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMovimientoPoliza`),
  KEY `MovimientoPoliza_Poliza_idx` (`idPoliza`),
  CONSTRAINT `MovimientoPoliza_Poliza` FOREIGN KEY (`idPoliza`) REFERENCES `Poliza` (`idPoliza`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS `PerfilUsuario`;
CREATE TABLE `PerfilUsuario` (
  `idPerfilUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idPerfilUsuario`)
);

DROP TABLE IF EXISTS `PerfilUsuarioAcceso`;
CREATE TABLE `PerfilUsuarioAcceso` (
  `idPerfilUsuarioAcceso` int(11) NOT NULL AUTO_INCREMENT,
  `idPerfilUsuario` int(11) DEFAULT NULL,
  `idAcceso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPerfilUsuarioAcceso`),
  KEY `PerfilUsuarioAcceso_PerfilUsuario_idx` (`idPerfilUsuario`),
  KEY `PerfilUsuarioAcceso_Acceso_idx` (`idAcceso`),
  CONSTRAINT `PerfilUsuarioAcceso_Acceso` FOREIGN KEY (`idAcceso`) REFERENCES `Acceso` (`idAcceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PerfilUsuarioAcceso_PerfilUsuario` FOREIGN KEY (`idPerfilUsuario`) REFERENCES `PerfilUsuario` (`idPerfilUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS `UsuarioPerfilUsuario`;
CREATE TABLE `UsuarioPerfilUsuario` (
  `idUsuarioPerfilUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idPerfilUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuarioPerfilUsuario`),
  KEY `UsuarioPerfilUsuario_Usuario_idx` (`idUsuario`),
  KEY `UsuarioPerfilUsuario_PerfilUsuario_idx` (`idPerfilUsuario`),
  CONSTRAINT `UsuarioPerfilUsuario_PerfilUsuario` FOREIGN KEY (`idPerfilUsuario`) REFERENCES `PerfilUsuario` (`idPerfilUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `UsuarioPerfilUsuario_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
);



INSERT INTO Acceso (`idAcceso`,`idAccesoPadre`,`nombre`,`URL`,`esMenu`) VALUES (1,NULL,'Operaciones',NULL,b'1');
INSERT INTO Acceso (`idAccesoPadre`,`nombre`,`URL`,`esMenu`) VALUES (1,'Ahorros','/ahorros/',b'1');
INSERT INTO Acceso (`idAccesoPadre`,`nombre`,`URL`,`esMenu`) VALUES (1,'Depositos Usuario','/deposito/usuario',b'1');

INSERT INTO PerfilUsuario (`nombre`) VALUES ('Administrador');
INSERT INTO PerfilUsuario (`nombre`) VALUES ('Empleado');

INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuario`, `idAcceso`) VALUES ((select idPerfilUsuario from PerfilUsuario where nombre = 'Administrador'), (select idAcceso from Acceso where nombre = 'Operaciones'));
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuario`, `idAcceso`) VALUES ((select idPerfilUsuario from PerfilUsuario where nombre = 'Administrador'), (select idAcceso from Acceso where nombre = 'Ahorros'));
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuario`, `idAcceso`) VALUES ((select idPerfilUsuario from PerfilUsuario where nombre = 'Administrador'), (select idAcceso from Acceso where nombre = 'Depositos Usuario'));
INSERT INTO `PerfilUsuarioAcceso` (`idPerfilUsuario`, `idAcceso`) VALUES ((select idPerfilUsuario from PerfilUsuario where nombre = 'Empleado'), (select idAcceso from Acceso where nombre = 'Operaciones'));
INSERT INTO `PerfilUsuarioAcceso` ( `idPerfilUsuario`, `idAcceso`) VALUES ((select idPerfilUsuario from PerfilUsuario where nombre = 'Empleado'), (select idAcceso from Acceso where nombre = 'Depositos Usuario'));


INSERT INTO `Cliente` (`nombre`,`razonSocial`,`direccion`,`RFC`) VALUES ('OXXO','OXXO S.A. de C.V.','Av. Revolucion 345','OXXO236738UO1');
INSERT INTO `Cliente` (`nombre`,`razonSocial`,`direccion`,`RFC`) VALUES ('PEPSI','PEPSI S.A.','Av. Consitucion','PSPS230223UP9');
INSERT INTO `Cliente` (`nombre`,`razonSocial`,`direccion`,`RFC`) VALUES ('COCACOLA','COCACOLA COMPANY S.A.','Av. Siempre Viva 345','PSPS230223UP9');

INSERT INTO `ElementoEstructuraEmpresa` (`nombre`,`tipoElementoEstructura`,`idCliente`) VALUES ('OXXO EMPRESA','Empresa',(Select idCliente from Cliente where nombre = 'OXXO'));
INSERT INTO `ElementoEstructuraEmpresa` (`nombre`,`tipoElementoEstructura`,`idCliente`) VALUES ('PEPSI EMPRESA','Empresa',(Select idCliente from Cliente where nombre = 'PEPSI'));
INSERT INTO `ElementoEstructuraEmpresa` (`nombre`,`tipoElementoEstructura`,`idCliente`) VALUES ('PEPSI PLANTA','Planta',(Select idCliente from Cliente where nombre = 'PEPSI'));
INSERT INTO `ElementoEstructuraEmpresa` (`nombre`,`tipoElementoEstructura`,`idCliente`) VALUES ('OXXO SUCURSAL','Sucursal',(Select idCliente from Cliente where nombre = 'OXXO'));
INSERT INTO `ElementoEstructuraEmpresa` (`nombre`,`tipoElementoEstructura`,`idCliente`) VALUES ('COCACOLA EMPRESA','Empresa',(Select idCliente from Cliente where nombre = 'COCACOLA'));

INSERT INTO Usuario (`userName`,`email`,`telefono`,`celular`,`RFC`,`CURP`,`nombre`,`apellidoPaterno`,`apellidoMaterno`,`password`,`passwordTemporal`,`idElementoEstructuraEmpresa`) VALUES ('salvador','salvador.contrerasgr@uanl.edu.mx','8114685878','8155874512','COGS8938RL2','COGS73839HNLNRLPL','Salvador','Contreras','Garcia','28376483','2938729373',(Select idElementoEstructuraEmpresa from ElementoEstructuraEmpresa where nombre = 'OXXO EMPRESA'));
INSERT INTO Usuario (`userName`,`email`,`telefono`,`celular`,`RFC`,`CURP`,`nombre`,`apellidoPaterno`,`apellidoMaterno`,`password`,`passwordTemporal`,`idElementoEstructuraEmpresa`) VALUES ('salvador','salvador.alejandros@uanl.edu.mx','8114685878','8155874512','COGS8938RL2','COGS73839HNLNRLPL','Salvador','Alejandro','Salcido','28376483','2938729373',(Select idElementoEstructuraEmpresa from ElementoEstructuraEmpresa where nombre = 'PEPSI EMPRESA'));


