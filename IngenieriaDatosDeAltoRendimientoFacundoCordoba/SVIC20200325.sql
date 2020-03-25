CREATE DATABASE  IF NOT EXISTS `svic` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `svic`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: svic
-- ------------------------------------------------------
-- Server version	5.6.46-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aud_clientes`
--

DROP TABLE IF EXISTS `aud_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_clientes` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `Email` varchar(120) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_compras`
--

DROP TABLE IF EXISTS `aud_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_compras` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdCompra` bigint(20) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `FechaCompra` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_empleados`
--

DROP TABLE IF EXISTS `aud_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_empleados` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `IdRol` tinyint(4) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Password` char(32) NOT NULL,
  `FechaIngreso` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_personas`
--

DROP TABLE IF EXISTS `aud_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_personas` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdPersona` int(11) NOT NULL,
  `Telefono` char(10) NOT NULL,
  `EstadoPer` char(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_personasfisicas`
--

DROP TABLE IF EXISTS `aud_personasfisicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_personasfisicas` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdPersonaFisica` int(11) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_productos`
--

DROP TABLE IF EXISTS `aud_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_productos` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdProducto` smallint(6) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `NombreProducto` varchar(30) NOT NULL,
  `Precio` decimal(12,2) NOT NULL,
  `EstadoProd` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_proveedores`
--

DROP TABLE IF EXISTS `aud_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_proveedores` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aud_rubros`
--

DROP TABLE IF EXISTS `aud_rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rubros` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `NombreRubro` varchar(30) NOT NULL,
  `EstadoRubro` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `Email` varchar(120) NOT NULL,
  PRIMARY KEY (`IdCliente`),
  UNIQUE KEY `UI_Email` (`Email`),
  CONSTRAINT `RefPersonasFisicas38` FOREIGN KEY (`IdCliente`) REFERENCES `personasfisicas` (`IdPersonaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Clientes_AFTER_INSERT` AFTER INSERT ON `Clientes` FOR EACH ROW BEGIN
	INSERT INTO aud_clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdCliente,NEW.Email);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Clientes_AFTER_UPDATE` AFTER UPDATE ON `Clientes` FOR EACH ROW
BEGIN
	INSERT INTO aud_clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdCliente,OLD.Email);
    
	INSERT INTO aud_clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D',
     NEW.IdCliente,NEW.Email);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Clientes_AFTER_DELETE` AFTER DELETE ON `Clientes` FOR EACH ROW
BEGIN
	INSERT INTO aud_clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdCliente,OLD.Email);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `IdCompra` bigint(20) NOT NULL AUTO_INCREMENT,
  `IdProveedor` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `FechaCompra` datetime NOT NULL,
  PRIMARY KEY (`IdCompra`,`IdProveedor`,`IdEmpleado`),
  UNIQUE KEY `UI_IdCompra` (`IdCompra`),
  KEY `IX_FechaCompra` (`FechaCompra`),
  KEY `RefProveedores7` (`IdProveedor`),
  KEY `RefEmpleados8` (`IdEmpleado`),
  CONSTRAINT `RefEmpleados8` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`),
  CONSTRAINT `RefProveedores7` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`IdProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Compras_AFTER_INSERT` AFTER INSERT ON `Compras` FOR EACH ROW BEGIN
	INSERT INTO aud_Compras VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdCompra, NEW.IdProveedor, NEW.IdEmpleado , NEW.FechaCompra);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comprasproductos`
--

DROP TABLE IF EXISTS `comprasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprasproductos` (
  `IdCompra` bigint(20) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `PrecioCompra` decimal(12,2) NOT NULL,
  `CantidadCompra` smallint(6) NOT NULL,
  PRIMARY KEY (`IdCompra`,`IdProducto`,`IdRubro`,`IdProveedor`,`IdEmpleado`),
  KEY `RefCompras23` (`IdCompra`,`IdProveedor`,`IdEmpleado`),
  KEY `RefProductos24` (`IdProducto`,`IdRubro`),
  CONSTRAINT `RefCompras23` FOREIGN KEY (`IdCompra`, `IdProveedor`, `IdEmpleado`) REFERENCES `compras` (`IdCompra`, `IdProveedor`, `IdEmpleado`),
  CONSTRAINT `RefProductos24` FOREIGN KEY (`IdProducto`, `IdRubro`) REFERENCES `productos` (`IdProducto`, `IdRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `IdRol` tinyint(4) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Contraseña` char(32) NOT NULL,
  `FechaIngreso` datetime NOT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `UI_Usuario` (`Usuario`),
  KEY `RefRoles9` (`IdRol`),
  CONSTRAINT `RefPersonasFisicas39` FOREIGN KEY (`IdEmpleado`) REFERENCES `personasfisicas` (`IdPersonaFisica`),
  CONSTRAINT `RefRoles9` FOREIGN KEY (`IdRol`) REFERENCES `roles` (`IdRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Empleados_AFTER_INSERT` AFTER INSERT ON `Empleados` FOR EACH ROW BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdEmpleado,NEW.IdRol,NEW.Usuario,NEW.Contraseña,NEW.FechaIngreso);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Empleados_AFTER_UPDATE` AFTER UPDATE ON `Empleados` FOR EACH ROW
BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdEmpleado,OLD.IdRol,OLD.Usuario,OLD.Contraseña, OLD.FechaIngreso);
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D',
    NEW.IdEmpleado,NEW.IdRol,NEW.Usuario,NEW.Contraseña,NEW.FechaIngreso);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Empleados_AFTER_DELETE` AFTER DELETE ON `Empleados` FOR EACH ROW
BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
	OLD.IdEmpleado,OLD.IdRol,OLD.Usuario,OLD.Contraseña, OLD.FechaIngreso);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `IdPersona` int(11) NOT NULL,
  `Telefono` char(10) NOT NULL,
  `EstadoPer` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personas_AFTER_INSERT` AFTER INSERT ON `Personas` FOR EACH ROW BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdPersona, NEW.Telefono, NEW.EstadoPer);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personas_AFTER_UPDATE` AFTER UPDATE ON `Personas` FOR EACH ROW
BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdPersona, OLD.Telefono, OLD.EstadoPer);
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
	NEW.IdPersona, NEW.Telefono, NEW.EstadoPer);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personas_AFTER_DELETE` AFTER DELETE ON `Personas` FOR EACH ROW
BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
     OLD.IdPersona,OLD.Telefono,OLD.EstadoPer);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personasfisicas`
--

DROP TABLE IF EXISTS `personasfisicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personasfisicas` (
  `IdPersonaFisica` int(11) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  PRIMARY KEY (`IdPersonaFisica`),
  KEY `IX_ApellidosNombres` (`Apellidos`,`Nombres`),
  CONSTRAINT `RefPersonas40` FOREIGN KEY (`IdPersonaFisica`) REFERENCES `personas` (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personasfisicas_AFTER_INSERT` AFTER INSERT ON `Personasfisicas` FOR EACH ROW BEGIN
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdPersonaFisica,NEW.Apellidos,NEW.Nombres);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personasfisicas_AFTER_UPDATE` AFTER UPDATE ON `personasfisicas` FOR EACH ROW
BEGIN
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdPersonaFisica,OLD.Apellidos,OLD.Nombres);
    
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D',
     NEW.IdPersonaFisica,NEW.Apellidos,NEW.Nombres);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personasfisicas_AFTER_DELETE` AFTER DELETE ON `PersonasFisicas` FOR EACH ROW
BEGIN
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdPersonaFisica,OLD.Apellidos,OLD.Nombres);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `NombreProducto` varchar(30) NOT NULL,
  `Precio` decimal(12,2) NOT NULL,
  `EstadoProd` char(1) NOT NULL,
  PRIMARY KEY (`IdProducto`,`IdRubro`),
  UNIQUE KEY `UI_NombreProducto` (`NombreProducto`),
  UNIQUE KEY `UI_IdProducto` (`IdProducto`),
  KEY `RefRubros27` (`IdRubro`),
  CONSTRAINT `RefRubros27` FOREIGN KEY (`IdRubro`) REFERENCES `rubros` (`IdRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Productos_AFTER_INSERT` AFTER INSERT ON `Productos` FOR EACH ROW BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdProducto,NEW.IdRubro, NEW.NombreProducto, NEW.Precio,'A');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Productos_AFTER_UPDATE` AFTER UPDATE ON `Productos` FOR EACH ROW
BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdProducto,OLD.IdRubro, OLD.NombreProducto, OLD.Precio,OLD.EstadoProd);
    
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdProducto,NEW.IdRubro, NEW.NombreProducto, NEW.Precio,NEW.EstadoProd);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Productos_AFTER_DELETE` AFTER DELETE ON `Productos` FOR EACH ROW
BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdProducto,OLD.IdRubro, OLD.NombreProducto, OLD.Precio,OLD.EstadoProd);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `IdProveedor` int(11) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `NombreProveedor_UNIQUE` (`NombreProveedor`),
  KEY `IX_NombreProveedor` (`NombreProveedor`),
  CONSTRAINT `RefPersonas30` FOREIGN KEY (`IdProveedor`) REFERENCES `personas` (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Proveedores_AFTER_INSERT` AFTER INSERT ON `Proveedores` FOR EACH ROW BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdProveedor, NEW.NombreProveedor);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Proveedores_AFTER_UPDATE` AFTER UPDATE ON `Proveedores` FOR EACH ROW
BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdProveedor, OLD.NombreProveedor);
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdProveedor, NEW.NombreProveedor);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Proveedores_AFTER_DELETE` AFTER DELETE ON `Proveedores` FOR EACH ROW
BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdProveedor,OLD.NombreProveedor);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `IdRol` tinyint(4) NOT NULL,
  `Rol` varchar(30) NOT NULL,
  `TipoRol` varchar(30) NOT NULL,
  PRIMARY KEY (`IdRol`),
  UNIQUE KEY `UI_RolTipoRol` (`Rol`,`TipoRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rubros`
--

DROP TABLE IF EXISTS `rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubros` (
  `IdRubro` tinyint(4) NOT NULL,
  `NombreRubro` varchar(30) NOT NULL,
  `EstadoRubro` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`IdRubro`),
  UNIQUE KEY `UI_NombreRubro` (`NombreRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Rubros_AFTER_INSERT` AFTER INSERT ON `Rubros` FOR EACH ROW BEGIN
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdRubro, NEW.NombreRubro, NEW.EstadoRubro);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Rubros_AFTER_UPDATE` AFTER UPDATE ON `Rubros` FOR EACH ROW
BEGIN
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdRubro, OLD.NombreRubro, OLD.EstadoRubro);
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdRubro, NEW.NombreRubro, NEW.EstadoRubro);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Rubros_AFTER_DELETE` AFTER DELETE ON `Rubros` FOR EACH ROW
BEGIN
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdRubro, OLD.NombreRubro, OLD.EstadoRubro);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `IdVenta` bigint(20) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `FechaVenta` datetime NOT NULL,
  PRIMARY KEY (`IdVenta`,`IdCliente`,`IdEmpleado`),
  UNIQUE KEY `UI_IdVenta` (`IdVenta`),
  KEY `IX_FechaVenta` (`FechaVenta`),
  KEY `RefClientes10` (`IdCliente`),
  KEY `RefEmpleados11` (`IdEmpleado`),
  CONSTRAINT `RefClientes10` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`IdCliente`),
  CONSTRAINT `RefEmpleados11` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ventasproductos`
--

DROP TABLE IF EXISTS `ventasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventasproductos` (
  `IdVenta` bigint(20) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `PrecioVenta` decimal(12,2) NOT NULL,
  `CantidadVenta` smallint(6) NOT NULL,
  `Descuento` decimal(12,2) NOT NULL,
  PRIMARY KEY (`IdVenta`,`IdProducto`,`IdRubro`,`IdCliente`,`IdEmpleado`),
  KEY `RefVentas25` (`IdVenta`,`IdCliente`,`IdEmpleado`),
  KEY `RefProductos26` (`IdProducto`,`IdRubro`),
  CONSTRAINT `RefProductos26` FOREIGN KEY (`IdProducto`, `IdRubro`) REFERENCES `productos` (`IdProducto`, `IdRubro`),
  CONSTRAINT `RefVentas25` FOREIGN KEY (`IdVenta`, `IdCliente`, `IdEmpleado`) REFERENCES `ventas` (`IdVenta`, `IdCliente`, `IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'svic'
--

--
-- Dumping routines for database 'svic'
--
/*!50003 DROP PROCEDURE IF EXISTS `ssp_activar_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_activar_persona`(pIdPersona int)
SALIR:BEGIN
			/*
			Permite cambiar el estado de una persona en A: Activa siempre y cuando no  esté activa ya.
			Devuelve OK o el mensaje de error en Mensaje.  
			*/
    IF (SELECT EstadoPer FROM Personas WHERE IdPersona = pIdPersona) = 'A' THEN
		SELECT 'la Persona  ya está activa.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    -- Activa
    UPDATE	Personas
    SET		EstadoPer = 'A'
    WHERE	IdPersona = pIdPersona;
    SELECT 'OK' AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_activar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_activar_producto`(pIdProducto int)
SALIR:BEGIN
	/*
    Permite cambiar el estado de un producto en A: Activo siempre y cuando no  esté activo ya.
    Devuelve OK o el mensaje de error en Mensaje. 
    */
    IF (SELECT EstadoProd FROM Productos WHERE IdProducto = pIdProducto) = 'A' THEN
		SELECT 'el producto ya está activo.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    -- Activa
    UPDATE	Productos
    SET		EstadoProd = 'A'
    WHERE	IdProducto = pIdProducto;
    SELECT 'OK' AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_activar_rubro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_activar_rubro`(pIdRubro tinyint)
SALIR:BEGIN
	/*
   Permite cambiar el estado del rubro A: Activo siempre y cuando no  esté activo ya.
   Devuelve OK o el mensaje de error en Mensaje.
    */

IF (SELECT EstadoRubro FROM Rubros WHERE IdRubro = pIdRubro) = 'A' THEN
		SELECT 'El rubro ya está activo.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    -- Activa
    UPDATE	Rubros
    SET		EstadoRubro = 'A'
    WHERE	IdRubro = pIdRubro;
    
    SELECT 'OK' AS Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_cliente`(pApellidos varchar (30),pNombres varchar(30),pEmail varchar(120),pTelefono char (10), pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
			/*
			Permite dar de alta un cliente controlando que el Nombre,Apellido, Telefono y el email  no sean vacios , ni  NULOS. Controla que el email no exista.
			Lo da de alta  con estado A: Activo. Devuelve OK  + Id o el mensaje de error en Mensaje 
			*/
     DECLARE pIdPersona int ;
    -- Manejo de error en la transacción
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
		NULL AS Id;
	END;
    -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el cliente' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el apellido sea obligatorio 
	IF pApellidos = '' OR pApellidos IS NULL THEN
		SELECT 'Debe proveer un apellido para el cliente' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el cliente' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el email sea obligatorio 
	IF pEmail = '' OR pEmail IS NULL THEN
		SELECT 'Debe proveer un email para el cliente' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el exista un email  
	IF EXISTS(SELECT Email FROM Clientes WHERE Email = pEmail) THEN
		SELECT 'Ya existe un cliente con ese email ' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
      START TRANSACTION;
    	SET pIdPersona = 1 + (SELECT COALESCE(MAX(IdPersona),0)
								FROM Personas);
		INSERT INTO Personas VALUES(pIdPersona,pTelefono,'A');
		INSERT INTO PersonasFisicas VALUES(pIdPersona,pApellidos,pNombres);
        INSERT INTO Clientes VALUES(pIdPersona,pEmail);
          -- Audita aud_Personas
       INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Personas.* FROM Personas WHERE IdPersona = pIdPersona;
             -- Audita aud_PersonasFisicas
       INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 personasfisicas.* FROM personasfisicas WHERE IdPersonaFisica = pIdPersona;
              -- Audita aud_clientes
       INSERT INTO aud_clientes
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Clientes.* FROM Clientes WHERE IdCliente = pIdPersona;
        SELECT 'OK' AS Mensaje, pIdPersona AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_compra`(pIdProveedor int,pIdEmpleado int,pFechaCompra datetime)
SALIR:BEGIN
			/*
			Permite dar de alta una compra controlando que el proveedor y el empleado existan y que la fecha de compra sea distinta al ' ' vacio o a NULL. 
			La da de alta  con el valor de la fecha asignado. 
			Devuelve OK o el mensaje de error en Mensaje.
			*/
	DECLARE pIdCompra bigint ;
	-- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		 SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
		ROLLBACK;
	END;
    -- Controla que exista el empleado en la tabla empleados
	IF NOT EXISTS(SELECT IdEmpleado FROM Empleados WHERE IdEmpleado = pIdEmpleado) THEN
		SELECT 'Empleado inexistente' AS Mensaje;
		LEAVE SALIR;
    END IF;    
-- Controla que exista el proveedor en la tabla proveedores
	IF NOT EXISTS(SELECT IdProveedor FROM Proveedores WHERE IdProveedor = pIdProveedor) THEN
		SELECT 'Proveedor inexistente' AS Mensaje;
		LEAVE SALIR;
    END IF;
     -- Controla que la fecha sea obligatoria
	IF pFechaCompra = '' OR pFechaCompra IS NULL THEN
		SELECT 'Debe proveer una fecha para registrar la compra' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
	START TRANSACTION;
     SET pIdCompra= LAST_INSERT_ID();
		INSERT INTO Compras VALUES(pIdCompra,pIdProveedor,pIdEmpleado,pFechaCompra);
        
          -- Audita
       INSERT INTO aud_Compras
         SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion,'INSERTAR', 'I', 
			 Compras.* FROM Compras WHERE IdCompra = pIdCompra;
        SELECT 'OK' AS Mensaje, pIdCompra AS Id;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_empleado`( pApellidos varchar(30),pNombres varchar(30),pTelefono char (10),pIdRol tinyint,pUsuario varchar(30), pContraseña char(32), pFechaIngreso datetime, pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
			/*
			Permite dar de alta un empleado controlando que el Nombre,Apellido, Telefono,Usuario,Password,FechaIngreso y el idRol no sean vacios , ni  NULOS. Controla que el usuario no exista y codifica con MD5 el password para ser almacenarse.
			Da de alta al empleado con estado A: Activa. Devuelve OK  + Id o el mensaje de error en Mensaje     
			*/
     DECLARE pIdPersona int ;
    -- Manejo de error en la transacción
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
    
     -- Controla que el apellido sea obligatorio 
	IF pApellidos = '' OR pApellidos IS NULL THEN
		SELECT 'Debe proveer un apellido para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
      -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el rol sea obligatorio 
	IF  pIdRol = 0 OR pIdRol = '' OR pIdRol IS NULL THEN
		SELECT 'Debe proveer un rol  para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el usuario sea obligatorio 
	IF pUsuario = '' OR pUsuario IS NULL THEN
		SELECT 'Debe proveer un nombre de usuario para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que  exista un empleado  con ese usuario
	IF EXISTS(SELECT * FROM Empleados WHERE Usuario = pUsuario) THEN
		SELECT 'Ya existe un empleado con ese usuario ' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
      -- Controla que el password sea obligatorio 
	IF pContraseña = '' OR pContraseña IS NULL THEN
		SELECT 'Debe proveer un password  para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que la fecha de ingreso sea obligatoria 
	IF pFechaIngreso = '' OR pFechaIngreso IS NULL THEN
		SELECT 'Debe proveer una fecha de ingreso  para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
     START TRANSACTION;
    	SET pIdPersona = 1 + (SELECT COALESCE(MAX(IdPersona),0)
								FROM Personas);
		INSERT INTO Personas VALUES(pIdPersona,pTelefono,'A');
		INSERT INTO personasfisicas VALUES(pIdPersona,pApellidos,pNombres);
        INSERT INTO Empleados VALUES(pIdPersona,pIdRol,pUsuario,MD5(pContraseña),pFechaIngreso);
        
         -- Audita aud_Personas
       INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Personas.* FROM Personas WHERE IdPersona = pIdPersona;
             -- Audita aud_PersonasFisicas
       INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 personasfisicas.* FROM personasfisicas WHERE IdPersonaFisica = pIdPersona;
         -- Audita aud_PersonasFisicas
       INSERT INTO aud_Empleados
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Empleados.* FROM Empleados WHERE IdEmpleado = pIdPersona;
         
        SELECT 'OK' AS Mensaje, pIdPersona AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_producto`(pIdRubro tinyint, pNombreProducto varchar(30),pPrecio decimal(12,2),pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), 
            pAplicacion varchar(50))
SALIR:BEGIN
	/*
    Permite dar de alta un producto controlando que el nombre no exista ya y que el nombre , el precio y el estadoProd no esten vacios , ni con el estado NULL. Lo da de alta  con estadoProd A: Activo.
    Devuelve OK + Id o el mensaje de error en Mensaje.
    */
     DECLARE pIdProducto int ;
    -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
     -- Controla que el rubro sea obligatorio 
	IF pIdRubro = '' OR pIdRubro IS NULL THEN
		SELECT 'Debe proveer un nombre para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el nombre del producto sea obligatorio 
	IF pNombreProducto = '' OR pNombreProducto IS NULL THEN
		SELECT 'Debe proveer un nombre para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- controla la existencia de un producto con ese nombre
  IF EXISTS(SELECT NombreProducto FROM Productos WHERE NombreProducto = pNombreProducto) THEN
		SELECT 'ya existe  un producto con ese nombre' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el precio del producto sea obligatorio 
	IF pPrecio = 0.00 OR pPrecio IS NULL THEN
		SELECT 'Debe proveer un precio para el producto' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    START TRANSACTION;
    	SET  pIdProducto = 1 + (SELECT COALESCE(MAX(IdProducto),0)
								FROM Productos);
		INSERT INTO Productos VALUES(pIdProducto,pIdRubro,pNombreProducto,pPrecio,'A');
         -- Audita tabla productos leven 3
		INSERT INTO aud_productos
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion,'INSERTAR', 'I', 
			 Productos.* FROM Productos WHERE IdProducto = pIdProducto;
        SELECT 'OK' AS Mensaje, pIdProducto AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_proveedor`(pNombreProveedor varchar(30),pTelefono char (10),pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), 
            pAplicacion varchar(50))
SALIR:BEGIN
			/*
			Permite dar de alta un proveedor controlando que el nombre del proveedor y el telefono no sean vacios , ni  NULOS. 
			Lo da de alta  con estado A: Activo. Devuelve OK  + Id o el mensaje de error en Mensaje  
			*/
    DECLARE pIdPersona int ;
    -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
     -- Controla que el proveedor sea obligatorio 
	IF pNombreProveedor = '' OR pNombreProveedor IS NULL THEN
		SELECT 'Debe proveer un nombre para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un telefono para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que no exista el proveedor con el mismo nombre
	IF EXISTS(SELECT NombreProveedor FROM Proveedores WHERE NombreProveedor = pNombreProveedor) THEN
		SELECT 'Ya existe un proveedor  con ese nombre' AS Mensaje ,NULL AS Id;
		LEAVE SALIR;
    END IF;
     START TRANSACTION;
		SET pIdPersona = 1 + (SELECT COALESCE(MAX(IdPersona),0)
								FROM Personas);
       INSERT INTO Personas VALUES(pIdPersona,pTelefono,'A');
	   INSERT INTO Proveedores VALUES(pIdPersona,pNombreProveedor);
       -- Audita tabla personas leven 3
		INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'INSERTAR', 'I', 
			 Personas.* FROM Personas WHERE IdPersona = pIdPersona;
             
             -- Audita tabla proveedores leven 3
		INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'INSERTAR', 'I', 
			 Proveedores.* FROM Proveedores WHERE IdProveedor = pIdPersona;
       
		SELECT 'OK' AS Mensaje, pIdPersona AS Id;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_rubro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_rubro`(pNombreRubro varchar(30),pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), 
            pAplicacion varchar(50))
SALIR:BEGIN
	/*
    Permite dar de alta un rubro, controlando que el nombre no exista ya.
    Lo da de alta  con estado A: Activo. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    DECLARE pIdRubro tinyint ;
    -- Manejo de error en la transacción

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
     -- Controla que el rubro sea obligatorio 
	IF pNombreRubro = '' OR pNombreRubro IS NULL THEN
		SELECT 'Debe proveer un nombre para el rubro' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que no exista un rubro con el mismo nombre
	IF EXISTS(SELECT NombreRubro FROM Rubros WHERE NombreRubro = pNombreRubro) THEN
		SELECT 'Ya existe un rubro con ese nombre' AS Mensaje ,NULL AS Id;
		LEAVE SALIR;
    END IF;
     START TRANSACTION;
		SET pIdRubro = 1 + (SELECT COALESCE(MAX(IdRubro),0)
								FROM Rubros);
	   INSERT INTO Rubros VALUES(pIdRubro, pNombreRubro,'A');
        -- Audita
       INSERT INTO aud_Rubros
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion,'INSERTAR', 'I', 
			 Rubros.* FROM Rubros WHERE IdRubro = pIdRubro;
        SELECT 'OK' AS Mensaje, pIdRubro AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_autocompletar_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_autocompletar_clientes`(
								pCadena varchar(60), pIncluyeBajas char(1))
BEGIN
	/*
     Permite listar todos los clientes que cumplan con la condición de 
    autocompletar de la cadena de búsqueda que coincida con el apellido del cliente. Puede o no incluir los rubros dadas de baja según 
    pIncluyeBajas (S: Si - N: No). Busca a partir del cuarto caracter y 
    ordena por apellido.
	*/
	SELECT Cli.IdCliente,CONCAT(PerF.Apellidos,PerF.Nombres) AS ApellidoYNombre,Per.Telefono,Cli.Email,Per.EstadoPer FROM Personas AS Per JOIN PersonasFisicas AS PerF on Per.IdPersona = PerF.IdPersonaFisica
	JOIN Clientes AS Cli on PerF.IdPersonaFisica = Cli.IdCliente AND PerF.Apellidos LIKE CONCAT('%',pCadena,'%') AND
	(pIncluyeBajas = 'S' OR (pIncluyeBajas = 'N' AND Per.EstadoPer = 'A')) AND CHAR_LENGTH(pCadena) > 3
	ORDER BY ApellidoYNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_autocompletar_empleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_autocompletar_empleados`(
								pCadena varchar(60), pIncluyeBajas char(1))
BEGIN
	/*
    Permite listar todos los empleados que cumplan con la condición de 
    autocompletar de la cadena de búsqueda que coincida con el apellido del empleado. Puede o no incluir los rubros dadas de baja según 
    pIncluyeBajas (S: Si - N: No). Busca a partir del cuarto caracter y 
    ordena por apellido.
	*/
	SELECT Emp.IdEmpleado,CONCAT(PerF.Apellidos,PerF.Nombres)AS ApellidoNombre,Per.Telefono,Emp.Usuario,Emp.FechaIngreso,Emp.IdRol,Per.EstadoPer FROM 
    (Personas AS Per JOIN PersonasFisicas AS PerF ON Per.IdPersona = PerF.IdPersonaFisica) JOIN Empleados AS Emp ON PerF.IdPersonaFisica = Emp.IdEmpleado
     AND PerF.Apellidos LIKE CONCAT('%',pCadena,'%') AND
				(pIncluyeBajas = 'S' OR (pIncluyeBajas = 'N' AND Per.EstadoPer = 'A')) AND
				CHAR_LENGTH(pCadena) > 3
	ORDER BY ApellidoNombre;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_autocompletar_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_autocompletar_productos`(pCadena varchar(60), pIncluyeBajas char(1))
BEGIN
	/*
    Permite listar todos las productos que cumplan con la condición de 
    autocompletar de la cadena de búsqueda que coincida con el nombre de 
    el producto. Puede o no incluir los productos dados de baja según 
    pIncluyeBajas (S: Si - N: No). Busca a partir del cuarto caracter y 
    ordena por nombre.
	*/
    SELECT		*
    FROM		productos
    WHERE		NombreProducto LIKE CONCAT('%',pCadena,'%') AND
				(pIncluyeBajas = 'S' OR (pIncluyeBajas = 'N' AND EstadoProd = 'A')) AND
				CHAR_LENGTH(pCadena) > 3
	ORDER BY	NombreProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_autocompletar_proveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_autocompletar_proveedores`(pCadena varchar(60), pIncluyeBajas char(1))
BEGIN
	/*
    Permite listar todos los proveedores que cumplan con la condición de 
    autocompletar de la cadena de búsqueda que coincida con el nombre del proveedor. Puede o no incluir los proveedores dados de baja según 
    pIncluyeBajas (S: Si - N: No). Busca a partir del cuarto caracter y 
    ordena por nombre de proveedor.
	*/
    SELECT Pro.IdProveedor,Pro.NombreProveedor,Per.Telefono,Per.EstadoPer AS EstadoPersona FROM Personas AS Per JOIN Proveedores AS Pro ON Per.IdPersona = Pro.IdProveedor AND Pro.NombreProveedor LIKE CONCAT('%',pCadena,'%') AND
				(pIncluyeBajas = 'S' OR (pIncluyeBajas = 'N' AND Per.EstadoPer = 'A')) AND
				CHAR_LENGTH(pCadena) > 3
	ORDER BY	Pro.NombreProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_autocompletar_rubros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_autocompletar_rubros`(
								pCadena varchar(60), pIncluyeBajas char(1))
BEGIN
	/*
    Permite listar todos los rubros que cumplan con la condición de 
    autocompletar de la cadena de búsqueda que coincida con el nombre de 
    el rubro. Puede o no incluir los rubros dadas de baja según 
    pIncluyeBajas (S: Si - N: No). Busca a partir del cuarto caracter y 
    ordena por nombre.
	*/
    SELECT		*
    FROM		Rubros
    WHERE		NombreRubro LIKE CONCAT('%',pCadena,'%') AND
				(pIncluyeBajas = 'S' OR (pIncluyeBajas = 'N' AND EstadoRubro = 'A')) AND
				CHAR_LENGTH(pCadena) > 3
	ORDER BY	NombreRubro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_borra_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_borra_cliente`(pIdCliente int, pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
    /*
    Permite borrar un cliente controlando que no tenga ventas asociadas.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que no exista la posicion en la tabla clientes a modificar
	IF  NOT EXISTS(SELECT * FROM Clientes WHERE IdCliente = pIdCliente) THEN
		SELECT 'No existe un cliente en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que el cliente no tenga compras asociadas
	IF EXISTS(SELECT * FROM Ventas  AS Ven JOIN Clientes AS Cl  ON Ven.IdCliente = pIdCliente) THEN
		SELECT 'No puede borrar el cliente. Existen ventas asociadas.' AS Mensaje;
		LEAVE SALIR;
    END IF;
     START TRANSACTION;
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Personas.* FROM Personas WHERE IdPersona = pIdCliente;
                     -- Audita aud_PersonasFisicas
       INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
			 personasfisicas.* FROM personasfisicas WHERE IdPersonaFisica = pIdCliente;
              -- Audita aud_clientes
       INSERT INTO aud_clientes
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion,'BORRAR', 'B', 
			 Clientes.* FROM Clientes WHERE IdCliente = pIdCliente;
                
         -- Borra Personas
         DELETE FROM Clientes WHERE IdCliente = pIdCliente;
         DELETE FROM personasfisicas WHERE IdPersonaFisica = pIdCliente;
		 DELETE FROM Personas WHERE IdPersona = pIdCliente;
         
        SELECT 'OK' AS Mensaje;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_borra_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_borra_empleado`(pIdEmpleado int, pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
			/*
			Permite borrar un empleado controlando que no tenga ventas, ni compras  asociadas.
			Devuelve OK o el mensaje de error en Mensaje.
			*/
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		 -- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT IdEmpleado FROM Empleados WHERE IdEmpleado = pIdEmpleado) THEN
		SELECT 'No existe un empleado en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
      -- Controla que el empleado no tenga compras asociadas
	IF EXISTS(SELECT * FROM Compras  AS Com JOIN Empleados AS Emp  ON Com.IdEmpleado = pIdEmpleado) THEN
		SELECT 'No puede borrar el empleado. Existen compras asociadas.' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que el empleado no tenga ventas asociadas
	IF EXISTS(SELECT * FROM Ventas  AS Ven JOIN Empleados AS Emp  ON Ven.IdEmpleado = pIdEmpleado) THEN
		SELECT 'No puede borrar el empleado. Existen ventas asociadas.' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
     START TRANSACTION;
     
     -- Audita antes tabla auditoria Personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Personas.* FROM Personas WHERE IdPersona = pIdEmpleado;
				-- Audita antes tabla auditoria PersonasFisicas
        INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				PersonasFisicas.* FROM PersonasFisicas WHERE IdPersonaFisica = pIdEmpleado;   
				-- Audita antes tabla auditoria Empleados
        INSERT INTO aud_Empleados
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Empleados.* FROM Empleados WHERE IdEmpleado = pIdEmpleado;   
       
        -- Borra empleados
        DELETE FROM Empleados WHERE IdEmpleado = pIdEmpleado;
		-- Borra PersonasFisicas
        DELETE FROM PersonasFisicas WHERE IdPersonaFisica = pIdEmpleado;
         -- Borra Personas
        DELETE FROM Personas WHERE IdPersona = pIdEmpleado;
        SELECT 'OK' AS Mensaje;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_borra_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_borra_proveedor`(pIdProveedor int, pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
	/*
    Permite borrar un proveedor controlando que no tenga compras asociadas.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		 -- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT IdProveedor FROM Proveedores WHERE IdProveedor = pIdProveedor) THEN
		SELECT 'No existe un proveedor en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
      -- Controla que el proveedor no tenga compras asociadas
	IF EXISTS(SELECT * FROM Compras  AS Com JOIN Proveedores  ON Com.IdProveedor = pIdProveedor) THEN
		SELECT 'No puede borrar el proveedor. Existen compras asociadas.' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
     START TRANSACTION;
      -- Audita antes
        INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Proveedores.* FROM Proveedores WHERE IdProveedor = pIdProveedor;
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Personas.* FROM Personas WHERE IdPersona = pIdProveedor;
     
        -- Borra Proveedores
        DELETE FROM Proveedores WHERE IdProveedor = pIdProveedor;
         -- Borra Personas
        DELETE FROM Personas WHERE IdPersona = pIdProveedor;
        SELECT 'OK' AS Mensaje;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_borra_rubro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_borra_rubro`(pIdRubro tinyint,pCuenta varchar(60),pIP varchar(40), pUserAgent varchar(255), 
            pAplicacion varchar(50))
SALIR:BEGIN
/*
Permite borrar un rubro controlando que no tenga productos asociadas.
 Reordena. Devuelve OK o el mensaje de error en Mensaje.*/
 
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    
       -- Controla que el rubro no tenga productos
	IF EXISTS(SELECT IdProducto FROM Productos WHERE IdRubro = pIdRubro) THEN
		SELECT 'No puede borrar el rubro. Existen productos asociados.' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
    START TRANSACTION;
    
     -- Audita antes
        INSERT INTO aud_rubros
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Rubros.* FROM rubros WHERE IdRubro = pIdRubro;
        -- Borra rubros
        DELETE FROM Rubros WHERE IdRubro = pIdRubro;
        SELECT 'OK' AS Mensaje;
	COMMIT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_dame_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_cliente`(pIdCliente int)
BEGIN
	/*
	Procedimiento que sirve para instanciar un cliente desde la base de datos. 
    */
	SELECT Cli.IdCliente,CONCAT(PerF.Apellidos,PerF.Nombres) AS ApellidoYNombre,Per.Telefono,Cli.Email,Per.EstadoPer FROM ((Personas AS Per JOIN PersonasFisicas AS PerF on Per.IdPersona = PerF.IdPersonaFisica) 
	JOIN Clientes AS Cli on PerF.IdPersonaFisica = pIdCliente)
	ORDER BY ApellidoYNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_dame_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_empleado`(pIdEmpleado int)
BEGIN
	/*
	procedimiento que sirve para instanciar un empleado de la base de datos o un mensaje de error. 
    */
	SELECT Emp.IdEmpleado,CONCAT(PerF.Apellidos,PerF.Nombres) AS ApellidoYNombre,Per.Telefono,Emp.Usuario,Emp.FechaIngreso,Emp.IdRol,Per.EstadoPer FROM ((Personas AS Per JOIN PersonasFisicas AS PerF on Per.IdPersona = PerF.IdPersonaFisica) 
	JOIN Empleados AS Emp  on PerF.IdPersonaFisica = pIdEmpleado)
	ORDER BY ApellidoYNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_dame_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_producto`(pIdProducto int)
BEGIN
	 /*
    Procedimiento que sirve para instanciar un producto desde la base de datos.
    */
    SELECT * FROM Productos WHERE IdProducto=pIdProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_dame_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_proveedor`(pIdProveedor int)
SALIR: BEGIN
			/*Procedimiento que sirve para instanciar
			un proveedor desde la base de datos o  o el mensaje de error en Mensaje.
			*/
    -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		 SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
       -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT * FROM Proveedores WHERE IdProveedor = pIdProveedor) THEN
		SELECT 'No existe un proveedor en  la posicion que se busca' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
     SELECT Pro.IdProveedor,Pro.NombreProveedor,Per.Telefono,Per.EstadoPer
   FROM Personas AS Per JOIN Proveedores AS Pro  ON Per.IdPersona=Pro.IdProveedor and Pro.IdProveedor=pIdProveedor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_dame_rubro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_rubro`(pIdRubro tinyint)
BEGIN
	/*
	Procedimiento que sirve para instanciar un rubro desde la base de datos.
    */
	SELECT	*
    FROM	Rubros
    WHERE	IdRubro = pIdRubro;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_inactivar_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_inactivar_persona`(pIdPersona int)
SALIR:BEGIN
			/*
			Permite cambiar el estado de ela persona  a I: inactiva  siempre y cuando no 
			esté inactiva .
			Devuelve OK o el mensaje de error en Mensaje.
			*/
       -- Verifico si el Estado de la persona  se encuentra en estado Inactiva.     
	IF (SELECT EstadoPer FROM Personas WHERE IdPersona = pIdPersona) = 'I' THEN
		SELECT 'la Persona  ya está inactiva.' AS Mensaje;
        LEAVE SALIR;
	END IF;
	 -- Inactiva
    UPDATE	Personas
    SET		EstadoPer = 'I'
    WHERE	IdPersona = pIdPersona;
    SELECT 'OK' AS Mensaje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_inactivar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_inactivar_producto`(pIdProducto int)
SALIR:BEGIN
			/*
			Permite cambiar el estado de el producto a I: inactivo  siempre y cuando no 
			esté inactivo y  cantidades de un producto sea 0 . 
			Devuelve OK o el mensaje de error en Mensaje
			*/
       -- Verifico si el EstadoProd se encuentra en estado Inactivo     
IF (SELECT EstadoProd FROM Productos WHERE IdProducto = pIdProducto) = 'I' THEN
		SELECT 'el producto ya está inactivo.' AS Mensaje;
        LEAVE SALIR;
	END IF;
      -- Verifico que no existan cantidades distintas de cero
IF (SELECT CP.CantidadCompra FROM Productos As Pro JOIN Comprasproductos AS CP on CP.IdProducto = pIdProducto) = 0 THEN
		SELECT 'No puede dejar inactivo a este producto .Existen cantidades distintas de 0 (cero).' AS Mensaje;
        LEAVE SALIR; 
	-- modificar el estado a inactivo
    UPDATE	Productos
    SET		EstadoProd = 'I'
    WHERE	IdProducto = pIdProducto;
    SELECT 'OK' AS Mensaje;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_inactivar_rubro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_inactivar_rubro`(pIdRubro tinyint)
SALIR:BEGIN

	/*
    Permite cambiar el estado de el rubro a I: Inactivo  siempre y cuando no 
    esté Inactivo ya ni existan productos asociadas en estado activo. 
    Devuelve OK o el mensaje de error en Mensaje.
    */

IF (SELECT EstadoRubro FROM Rubros WHERE IdRubro = pIdRubro) = 'I' THEN
		SELECT 'el rubro ya está inactivo.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    -- Verifica si todos los productos esten inactivos 
    IF EXISTS(SELECT IdProducto FROM Productos WHERE IdRubro = pIdRubro AND
				EstadoProd = 'A') THEN
		SELECT 'No puede dejar inactivo al rubro.Existen productos activos.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    --  modificar el estado a inactivo
    UPDATE	Rubros
    SET		EstadoRubro = 'I'
    WHERE	IdRubro = pIdRubro;
    
    SELECT 'OK' AS Mensaje;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_clientes`()
BEGIN
		/*
		Permite listar los clientes ordenados por el apellido y nombre.
		*/
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
	SELECT Cli.IdCliente,CONCAT(PerF.Apellidos,PerF.Nombres) AS ApellidoYNombre,Per.Telefono,Cli.Email,Per.EstadoPer FROM ((Personas AS Per JOIN PersonasFisicas AS PerF on Per.IdPersona = PerF.IdPersonaFisica) 
	JOIN Clientes AS Cli on PerF.IdPersonaFisica = Cli.IdCliente)
	ORDER BY ApellidoYNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_empleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_empleados`()
BEGIN
		/*
		Permite listar los empleados ordenados por el apellido.
		*/
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
	SELECT Emp.IdEmpleado,CONCAT(PerF.Apellidos,PerF.Nombres) AS ApellidoYNombre,Per.Telefono,Emp.Usuario,Emp.FechaIngreso,Emp.IdRol,Per.EstadoPer FROM ((Personas AS Per JOIN PersonasFisicas AS PerF on Per.IdPersona = PerF.IdPersonaFisica) 
	JOIN Empleados AS Emp  on PerF.IdPersonaFisica = Emp.IdEmpleado)
	ORDER BY ApellidoYNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_productos`()
BEGIN
	 /*
       Permite listar los productos  ordenados por nombre .
	*/
	SELECT * FROM Productos ORDER BY NombreProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_proveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_proveedores`()
BEGIN
		/*
		Permite listar los proveedores ordenados por nombre.
		*/
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    SELECT Pro.IdProveedor,Pro.NombreProveedor,Per.Telefono,Per.EstadoPer
    FROM Personas AS Per JOIN Proveedores AS Pro ON Per.IdPersona = Pro.IdProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_roles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_roles`()
BEGIN
/*	
Permite listar los roles de un empleado ordenados por tipo rol.
*/
SELECT TipoRol,Rol FROM roles ORDER BY 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_rubros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_rubros`()
BEGIN
	 /*
     Permite listar los rubros de los productos ordenados por nombre .

     */
     
     SELECT		*
    FROM		Rubros
    ORDER BY	2;
     

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_cliente`(pIdCliente int,pApellidos varchar (30), pNombres varchar(30),pEmail varchar(120),pTelefono char (10), pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR: BEGIN
			/*
			   Permite modificar un cliente existente, controlando que el Apellido,Nombre, Telefono y el email  no sean vacios , ni  NULOS. Controla que el email no exista.
			   Devuelve OK o el mensaje de error en Mensaje.
			*/
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    
    -- Controla que el cliente sea obligatorio 
	IF NOT EXISTS(SELECT IdCliente FROM Clientes WHERE IdCliente = pIdCliente) THEN
		SELECT 'Debe proveer un Cliente existen.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
      -- Controla que el apellido sea obligatorio 
	IF pApellidos = '' OR pApellidos IS NULL THEN
		SELECT 'Debe proveer un apellido para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el email sea obligatorio. 
	IF pEmail = '' OR pEmail IS NULL THEN
		SELECT 'Debe proveer un email para el cliente.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que  exista un cliente con ese email.
	IF  EXISTS(SELECT Email FROM Clientes WHERE Email = pEmail) THEN
		SELECT 'Ya existe un cliente con ese email.' AS Mensaje;
		LEAVE SALIR ;
	END IF;
    
  	START TRANSACTION;
	-- Audita antes tabla auditoria Personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Personas.* FROM Personas WHERE IdPersona = pIdCliente;
				-- Audita antes tabla auditoria PersonasFisicas
        INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				PersonasFisicas.* FROM PersonasFisicas WHERE IdPersonaFisica = pIdCliente;   
				-- Audita antes tabla auditoria Clientes
        INSERT INTO aud_clientes
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Clientes.* FROM Clientes WHERE IdCliente = pIdCliente;       
                
		UPDATE Personas SET Telefono = pTelefono WHERE  IdPersona = pIdCliente;
        
		UPDATE PersonasFisicas SET Apellidos = pApellidos, Nombres = pNombres WHERE  IdPersonaFisica = pIdCliente;
        
		UPDATE Clientes SET Email = pEmail WHERE IdCliente = pIdCliente;
        
       -- Audita antes tabla auditoria Clientes
        INSERT INTO aud_clientes
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Clientes.* FROM Clientes WHERE IdCliente = pIdCliente; 
          		-- Audita antes tabla auditoria PersonasFisicas
        INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				PersonasFisicas.* FROM PersonasFisicas WHERE IdPersonaFisica = pIdCliente;        
                -- Audita antes tabla auditoria Personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Personas.* FROM Personas WHERE IdPersona = pIdCliente;
		SELECT 'OK' AS Mensaje;
		COMMIT;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_empleado`(pIdEmpleado int,pIdRol tinyint ,pApellidos varchar (30),pNombres varchar(30),pTelefono char (10),pUsuario varchar(30),pContraseña char(32) ,pFechaIngreso datetime,pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR: BEGIN
			/*
			Permite modificar un empleado existente, controlando que el Apellido, Nombre,Telefono,Usuario,Contraseña y FechaIngreso  no sean vacios , ni  NULOS. Controla que el usuario no exista
			Devuelve OK o el mensaje de error en Mensaje.
			*/
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    
    -- Controla que el empleado a modificar exista
	IF NOT EXISTS(SELECT Usuario FROM Empleados WHERE IdEmpleado = pIdEmpleado) THEN
		SELECT 'No existe un empleado en  la posicion que se desea modificar.' AS Mensaje;
		LEAVE SALIR;
    END IF; 
    -- Controla que el rol sea obligatorio 
	IF pIdRol = '' OR pIdRol IS NULL OR pIdRol = 0 THEN
		SELECT 'Debe proveer un rol para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
      -- Controla que el apellido sea obligatorio 
	IF pApellidos = '' OR pApellidos IS NULL THEN
		SELECT 'Debe proveer un apellido para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el usuario sea obligatorio 
	IF pUsuario = '' OR pUsuario IS NULL THEN
		SELECT 'Debe proveer un numero usuario para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que  exista un empleado con ese usuario
	IF  EXISTS(SELECT Usuario FROM Empleados WHERE Usuario = pUsuario) THEN
		SELECT 'Ya existe un empleado con ese nombre de usuario.' AS Mensaje;
		LEAVE SALIR ;
	END IF;
        -- Controla que la contraseña  sea obligatorio 
	IF pContraseña = '' OR pContraseña IS NULL THEN
		SELECT 'Debe proveer una contraseña para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;   
    -- Controla que la fecha de ingreso  sea obligatorio 
	IF pFechaIngreso = '' OR pFechaIngreso IS NULL THEN
		SELECT 'Debe proveer la ff para el empleado.' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;   
  	START TRANSACTION;
	-- Audita antes tabla auditoria Personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Personas.* FROM Personas WHERE IdPersona = pIdEmpleado;
				-- Audita antes tabla auditoria PersonasFisicas
        INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				PersonasFisicas.* FROM PersonasFisicas WHERE IdPersonaFisica = pIdEmpleado;   
				-- Audita antes tabla auditoria Empleados
        INSERT INTO aud_Empleados
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Empleados.* FROM Empleados WHERE IdEmpleado = pIdEmpleado;       
                
		UPDATE Personas SET Telefono = pTelefono WHERE  IdPersona = pIdEmpleado;
        
		UPDATE PersonasFisicas SET Apellidos = pApellidos, Nombres = pNombres WHERE  IdPersonaFisica = pIdEmpleado;
        
		UPDATE Empleados SET IdRol = pIdRol, Usuario = pUsuario ,Contraseña = MD5(pContraseña) , FechaIngreso = pFechaIngreso WHERE IdEmpleado = pIdEmpleado;
        
             	-- Audita antes tabla auditoria Empleados
        INSERT INTO aud_Empleados
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Empleados.* FROM Empleados WHERE IdEmpleado = pIdEmpleado;   
				-- Audita antes tabla auditoria PersonasFisicas
        INSERT INTO aud_PersonasFisicas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				PersonasFisicas.* FROM PersonasFisicas WHERE IdPersonaFisica = pIdEmpleado;  
			     -- Audita después tabla auditoria personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Personas.* FROM Personas WHERE IdPersona = pIdEmpleado;
		SELECT 'OK' AS Mensaje;
		COMMIT;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_producto`(pIdProducto int,pIdRubro tinyint, pNombreProducto varchar(30), pPrecio decimal(12,2),pCuenta varchar(60), 
        pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
			/*
			Permite modificar un producto existente, controlando que el nombre , el precio y el rubro no sean vacios, ni nulos y controla  que si el nombre del producto existe , no lo agregue.
			Devuelve OK o el mensaje de error en Mensaje.
			*/
		-- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
      -- Controla que el producto sea obligatoria 
	IF pNombreProducto = '' OR pNombreProducto IS NULL THEN
		SELECT 'Debe proveer un nombre para el producto' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que  exista un producto con el mismo nombre
	IF EXISTS(SELECT NombreProducto FROM Productos WHERE NombreProducto = pNombreProducto AND IdRubro != pIdRubro ) THEN
		SELECT 'Ya existe un producto con ese nombre' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que el rubro sea obligatorio 
	IF pIdRubro = '' OR pIdRubro IS NULL THEN
		SELECT 'Debe proveer un rubro existente para el producto' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el precio del producto sea obligatorio 
	IF pPrecio = 0.00 OR pPrecio IS NULL THEN
		SELECT 'Debe proveer un precio para el producto' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    START TRANSACTION;
      -- Audita antes
        INSERT INTO aud_productos
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Productos.* FROM Productos WHERE IdProducto = pIdProducto;
		UPDATE Productos SET IdRubro = pIdRubro , NombreProducto = pNombreProducto, Precio = pPrecio WHERE IdProducto = pIdProducto;
            -- Audita después
        INSERT INTO aud_productos
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Productos.* FROM Productos WHERE IdProducto = pIdProducto;
		SELECT 'OK' AS Mensaje;
    COMMIT;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_proveedor`(pIdProveedor int, pNombreProveedor varchar(30), pTelefono char(10), pCuenta varchar(60), 
        pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR: BEGIN
			/*
			Permite modificar un proveedor existente, controlando que el nombre y el telefono no sean vacios , ni  NULO.
			Devuelve OK o el mensaje de error en Mensaje.
			*/
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que el proveedor a modificar exista
	IF pIdProveedor = 0 OR pIdProveedor IS NULL THEN
		SELECT 'Debe proveer un proveedor que exista' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
      -- Controla que el nombre sea obligatorio 
	IF pNombreProveedor = '' OR pNombreProveedor IS NULL THEN
		SELECT 'Debe proveer un nombre para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT IdProveedor FROM Proveedores WHERE IdProveedor = pIdProveedor) THEN
		SELECT 'No existe un proveedor en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
	START TRANSACTION;
				-- Audita antes tabla auditoria personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Personas.* FROM Personas WHERE IdPersona = pIdProveedor;
                -- Audita antes tabla auditoria proveedores
        INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Proveedores.* FROM Proveedores WHERE IdProveedor = pIdProveedor;
		UPDATE Personas SET Telefono = pTelefono WHERE  IdPersona = pIdProveedor;
		UPDATE Proveedores SET NombreProveedor = pNombreProveedor WHERE IdProveedor = pIdProveedor;
                 -- Audita después tabla autoria proveedores
        INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Proveedores.* FROM Proveedores WHERE IdProveedor = pIdProveedor;
			     -- Audita después tabla auditoria personas
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Personas.* FROM Personas WHERE IdPersona = pIdProveedor;
		SELECT 'OK' AS Mensaje;
		COMMIT;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_rubro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_rubro`(pIdRubro tinyint, pNombreRubro varchar(30), pCuenta varchar(60), 
        pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
	/*
    Permite modificar un rubro existente, controlando que el nombre no exista ya.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
     -- Controla que el rubro sea obligatoria 
	IF pNombreRubro = '' OR pNombreRubro IS NULL THEN
		SELECT 'Debe proveer un nombre para el rubro' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
    -- Controla que no exista un rubro con el mismo nombre
	IF EXISTS(SELECT NombreRubro FROM Rubros WHERE NombreRubro = pNombreRubro AND IdRubro != pIdRubro ) THEN
		SELECT 'Ya existe un rubro con ese nombre' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que no exista la posicion en la tabla rubro a modificar
	IF  NOT EXISTS(SELECT NombreRubro FROM Rubros WHERE IdRubro = pIdRubro) THEN
		SELECT 'No existe en la tabla rubros la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
        START TRANSACTION;
     -- Audita antes
        INSERT INTO aud_Rubros
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Rubros.* FROM Rubros WHERE IdRubro = pIdRubro;
			UPDATE Rubros SET NombreRubro = pNombreRubro WHERE IdRubro = pIdRubro;
            -- Audita después
        INSERT INTO aud_Rubros
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Rubros.* FROM Rubros WHERE IdRubro = pIdRubro;
                SELECT 'OK' AS Mensaje;
         COMMIT;       

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 18:30:31
