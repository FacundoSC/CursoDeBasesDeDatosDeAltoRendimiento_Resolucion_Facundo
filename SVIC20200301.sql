-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: svic
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_rubros`
--

LOCK TABLES `aud_rubros` WRITE;
/*!40000 ALTER TABLE `aud_rubros` DISABLE KEYS */;
INSERT INTO `aud_rubros` VALUES (1,'2020-03-01 16:09:26','facundoc','localhost','firefox','SIS','BORRAR','B',8,'mouse','A'),(2,'2020-03-01 16:09:26','root','localhost',NULL,'localhost',NULL,'B',8,'mouse','A'),(3,'2020-03-01 16:28:05','facundoc','localhost','firefox','sis','CAMBIA','A',3,'pen','A'),(4,'2020-03-01 16:28:05','root','localhost',NULL,'localhost',NULL,'A',3,'pen','A'),(5,'2020-03-01 16:28:05','root','localhost',NULL,'localhost',NULL,'D',3,'mouse','A'),(6,'2020-03-01 16:28:05','facundoc','localhost','firefox','sis','CAMBIA','D',3,'mouse','A'),(7,'2020-03-01 16:39:05','root','localhost',NULL,'localhost',NULL,'I',5,'svsvsv','A'),(8,'2020-03-01 16:45:10','facundoc','localhost','firefox','sis','BORRAR','B',5,'svsvsv','A'),(9,'2020-03-01 16:45:10','root','localhost',NULL,'localhost',NULL,'B',5,'svsvsv','A'),(10,'2020-03-01 16:45:29','facundoc','localhost','firefox','sis','BORRAR','B',4,'svsvs','A'),(11,'2020-03-01 16:45:29','root','localhost',NULL,'localhost',NULL,'B',4,'svsvs','A'),(12,'2020-03-01 16:46:09','root','localhost',NULL,'localhost',NULL,'I',4,'svsvsv','A'),(13,'2020-03-01 16:47:05','facundoc','localhost','firefox','sis','BORRAR','B',4,'svsvsv','A'),(14,'2020-03-01 16:47:05','root','localhost',NULL,'localhost',NULL,'B',4,'svsvsv','A'),(15,'2020-03-01 16:50:28','root','localhost',NULL,'localhost',NULL,'I',4,'sdfvsvf','A'),(16,'2020-03-01 16:52:49','facundoc','localhost','firefox','sis','BORRAR','B',4,'sdfvsvf','A'),(17,'2020-03-01 16:52:49','root','localhost',NULL,'localhost',NULL,'B',4,'sdfvsvf','A'),(18,'2020-03-01 16:53:05','root','localhost',NULL,'localhost',NULL,'I',4,'teclados','A'),(19,'2020-03-01 16:53:05','facundoc','l91.168.1.1','firefox','sis',NULL,'I',4,'teclados','A');
/*!40000 ALTER TABLE `aud_rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(120) NOT NULL,
  PRIMARY KEY (`IdCliente`),
  UNIQUE KEY `UI_Email` (`Email`),
  KEY `IX_ApellidosClientes` (`Apellidos`),
  KEY `Ref24` (`IdCliente`),
  CONSTRAINT `RefPersonas43` FOREIGN KEY (`IdCliente`) REFERENCES `personas` (`IdPersonas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema  los clientes de la tienda  que vende insumos de computaci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `IdCompra` bigint(20) NOT NULL AUTO_INCREMENT,
  `IdEmpleado` int(11) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `FechaCompra` datetime NOT NULL,
  PRIMARY KEY (`IdCompra`,`IdEmpleado`,`IdProveedor`),
  UNIQUE KEY `UI_IdCompra` (`IdCompra`),
  KEY `IX_FechaCompra` (`FechaCompra`),
  KEY `Ref37` (`IdProveedor`),
  KEY `Ref48` (`IdEmpleado`),
  CONSTRAINT `RefEmpleados83` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`),
  CONSTRAINT `RefProveedores73` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`IdProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema  las compras  realizadas por los empleados a los proveedores.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprasproductos`
--

DROP TABLE IF EXISTS `comprasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprasproductos` (
  `IdCompra` bigint(20) NOT NULL,
  `IdProducto` smallint(6) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `PrecioCompra` decimal(10,0) NOT NULL,
  `CantidadCompra` smallint(6) NOT NULL,
  PRIMARY KEY (`IdCompra`,`IdProducto`,`IdEmpleado`,`IdProveedor`,`IdRubro`),
  KEY `Ref823` (`IdProveedor`,`IdEmpleado`,`IdCompra`),
  KEY `Ref1124` (`IdProducto`,`IdRubro`),
  KEY `RefCompras233` (`IdCompra`,`IdEmpleado`,`IdProveedor`),
  CONSTRAINT `RefCompras233` FOREIGN KEY (`IdCompra`, `IdEmpleado`, `IdProveedor`) REFERENCES `compras` (`IdCompra`, `IdEmpleado`, `IdProveedor`),
  CONSTRAINT `RefProductos243` FOREIGN KEY (`IdProducto`, `IdRubro`) REFERENCES `productos` (`IdProducto`, `IdRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema los productos  que se adquirieron en  una compra .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprasproductos`
--

LOCK TABLES `comprasproductos` WRITE;
/*!40000 ALTER TABLE `comprasproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprasproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `IdRol` tinyint(4) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Password` char(32) NOT NULL,
  `FechaIngreso` datetime NOT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `UI_Usuario` (`Usuario`),
  KEY `IX_Apellidos` (`Apellidos`),
  KEY `Ref22` (`IdEmpleado`),
  KEY `Ref99` (`IdRol`),
  CONSTRAINT `RefPersonas23` FOREIGN KEY (`IdEmpleado`) REFERENCES `personas` (`IdPersonas`),
  CONSTRAINT `RefRoles93` FOREIGN KEY (`IdRol`) REFERENCES `roles` (`IdRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema  los empleados de la tienda  que vende insumos de computaci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `IdPersonas` int(11) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Telefono` char(10) NOT NULL,
  `EstadoPer` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`IdPersonas`),
  KEY `IX_Nombres` (`Nombres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena las personas participantes del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Aurelea','8495260912','A'),(2,'Faydra','7004161197','A'),(3,'Osgood','5248337355','A'),(4,'Mabelle','1202897143','A'),(5,'Welbie','3157109443','A'),(6,'Goldie','5281451401','A'),(7,'Falito','1382575195','A'),(8,'Kiah','6728369979','A'),(9,'Calypso','8066124279','A'),(10,'Gayleen','6689741164','A'),(11,'Lodovico','7157413705','A'),(12,'Irvin','5067413092','A'),(13,'Eleonora','5885744822','A'),(14,'Free','3852269288','A'),(15,'Krysta','1554682114','A'),(16,'Georgie','6757808965','A'),(17,'Amie','1428260357','A'),(18,'Mitch','5911824215','A'),(19,'Manny','9111087487','A'),(20,'Abey','9551263967','A'),(21,'Claude','4098307131','A'),(22,'Sherilyn','3779169370','A'),(23,'Arel','9929379023','A'),(24,'Munroe','2042045246','A'),(25,'Laurette','4412185322','A'),(26,'Arnie','2036125932','A'),(27,'Adelaide','5582369524','A'),(28,'Waylon','4329673188','A'),(29,'Chris','7919615305','A'),(30,'Willabella','6996544094','A'),(31,'facundo','2342123','A'),(32,'franco','2342123','A'),(33,'Facundo','232341243','A'),(34,'ASUS','232341243','A');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `IdProducto` smallint(6) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `NombreProducto` varchar(30) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `EstadoProd` char(1) NOT NULL,
  PRIMARY KEY (`IdProducto`,`IdRubro`),
  UNIQUE KEY `UI_IdProducto` (`IdProducto`),
  UNIQUE KEY `UI_NombreProducto` (`NombreProducto`),
  KEY `Ref1627` (`IdRubro`),
  CONSTRAINT `RefRubros273` FOREIGN KEY (`IdRubro`) REFERENCES `rubros` (`IdRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena   en el sistema. los productos  se puede adquierir en  la tienda .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `IdProveedor` int(11) NOT NULL,
  PRIMARY KEY (`IdProveedor`),
  KEY `Ref21` (`IdProveedor`),
  CONSTRAINT `RefPersonas13` FOREIGN KEY (`IdProveedor`) REFERENCES `personas` (`IdPersonas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema los proveedores  de la tienda de ventas de insumos de computaci?n .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (34);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla del sistema que almacena los roles de los  empleados de la tienda de venta de insumos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrador del sistema','administrador'),(2,'supervisa a los empleados','supervisor'),(3,'vende a los clientes','empleado');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla del sistema que almacena los rubros de los  productos que se puede adquirir en la tienda .';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubros`
--

LOCK TABLES `rubros` WRITE;
/*!40000 ALTER TABLE `rubros` DISABLE KEYS */;
INSERT INTO `rubros` VALUES (1,'pendrive','A'),(2,'discos duros','A'),(3,'mouse','A'),(4,'teclados','A');
/*!40000 ALTER TABLE `rubros` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `Ref710` (`IdCliente`),
  KEY `Ref411` (`IdEmpleado`),
  CONSTRAINT `RefClientes103` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`IdCliente`),
  CONSTRAINT `RefEmpleados113` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema  las ventas realizadas por los empleados a los clientes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventasproductos`
--

DROP TABLE IF EXISTS `ventasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventasproductos` (
  `IdVenta` bigint(20) NOT NULL,
  `IdProducto` smallint(6) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `IdRubro` tinyint(4) NOT NULL,
  `PrecioVenta` decimal(10,0) NOT NULL,
  `CantidadVenta` smallint(6) NOT NULL,
  `Descuento` decimal(30,0) NOT NULL,
  PRIMARY KEY (`IdVenta`,`IdProducto`,`IdCliente`,`IdEmpleado`,`IdRubro`),
  KEY `Ref1025` (`IdEmpleado`,`IdCliente`,`IdVenta`),
  KEY `Ref1126` (`IdProducto`,`IdRubro`),
  KEY `RefVentas253` (`IdVenta`,`IdCliente`,`IdEmpleado`),
  CONSTRAINT `RefProductos263` FOREIGN KEY (`IdProducto`, `IdRubro`) REFERENCES `productos` (`IdProducto`, `IdRubro`),
  CONSTRAINT `RefVentas253` FOREIGN KEY (`IdVenta`, `IdCliente`, `IdEmpleado`) REFERENCES `ventas` (`IdVenta`, `IdCliente`, `IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema los productos  que se adquirieron en  una venta.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventasproductos`
--

LOCK TABLES `ventasproductos` WRITE;
/*!40000 ALTER TABLE `ventasproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventasproductos` ENABLE KEYS */;
UNLOCK TABLES;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_activar_persona`(pIdPersonas int)
SALIR:BEGIN

  /*
  Permite cambiar el estado de una persona   a A: Activo siempre y cuando no  esté activo ya. 
  Devuelve OK o el mensaje de error en Mensaje. 
  */
  
  
IF (SELECT EstadoPer FROM Personas WHERE IdPersonas = pIdPersonas) = 'A' THEN
		SELECT 'la persona ya está activa.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    -- Activa
    UPDATE	Personas
    SET		EstadoPer = 'A'
    WHERE	IdPersonas = pIdPersonas;
    
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
   Permite cambiar el estado del rubro  a A: Activo siempre y cuando no  esté activo ya.
   Devuelve OK o el mensaje de error en Mensaje. .
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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_persona`( pNombres varchar(30),pTelefono char (10))
SALIR:BEGIN
	/*
Permite dar de alta una persona controlando que el nombre y el telefono no sean vacios , ni  NULOS. 
La da de alta  con estado A: Activa. Devuelve OK  + Id o el mensaje de error en Mensaje    
    */
    
     DECLARE pIdPersonas int ;
    -- Manejo de error en la transacción
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
    
     -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
START TRANSACTION;
    	SET pIdPersonas = 1 + (SELECT COALESCE(MAX(IdPersonas),0)
								FROM Personas);
		INSERT INTO Personas VALUES(pIdPersonas, pNombres,pTelefono,'A');
        SELECT 'OK' AS Mensaje, pIdPersonas AS Id;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_proveedor`(pNombres varchar(30),pTelefono char (10))
SALIR:BEGIN
	/*
Permite dar de alta un proveedor controlando que el nombre y el telefono no sean vacios , ni  NULOS. 
La da de alta  con estado A: Activa. Devuelve OK  + Id o el mensaje de error en Mensaje    
    */
     DECLARE pIdPersonas int ;
    -- Manejo de error en la transacción
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
    
     -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    START TRANSACTION;
    	SET pIdPersonas = 1 + (SELECT COALESCE(MAX(IdPersonas),0)
								FROM Personas);
		INSERT INTO Personas VALUES(pIdPersonas, pNombres,pTelefono,'A');
        INSERT INTO Proveedores VALUES(pIdPersonas);
        SELECT 'OK' AS Mensaje, pIdPersonas AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
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
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
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
		SHOW ERRORS;
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
        -- Borra categorías
        DELETE FROM Rubros WHERE IdRubro = pIdRubro;
        SELECT 'OK' AS Mensaje;
	COMMIT;
    
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_inactivar_persona`(pIdPersonas int)
SALIR:BEGIN

	/*
    Permite cambiar el estado de la persona  a I: Inactiva siempre y cuando no 
    esté Inactiva 
    Devuelve OK o el mensaje de error en Mensaje.
    */

IF (SELECT EstadoPer FROM Personas WHERE IdPersonas = pIdPersonas) = 'I' THEN
		SELECT 'la persona ya está inactiva.' AS Mensaje;
        LEAVE SALIR;
	END IF;
  
    --  modificar el estado de la persona a inactiva
    UPDATE	Personas
    SET		EstadoPer = 'I'
    WHERE	IdPersonas = pIdPersonas;
    
    SELECT 'OK' AS Mensaje;

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
    Permite cambiar el estado de el rubro a I: inactivo  siempre y cuando no 
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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_personas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_personas`()
BEGIN
		/*
		Permite listar las peronas ordenados por nombre.
		*/
		SELECT * FROM Personas ORDER BY 2;
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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_tiposroles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_tiposroles`()
BEGIN
/*	
Permite listar los tipos de roles de un empleado ordenados por tipo rol.
*/
SELECT TipoRol,Rol FROM roles ORDER BY 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_persona`(pIdPersonas int, pNombres varchar(30), pTelefono char(10))
SALIR:BEGIN
	/*
    Permite modificar una persona existente, controlando que el nombre y el telefono no sean vacios , ni  NULO.
    Devuelve OK o el mensaje de error en Mensaje.
  */
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
      -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que no exista la posicion en la tabla personas a modificar
	IF  NOT EXISTS(SELECT Nombres FROM Personas WHERE IdPersonas = pIdPersonas) THEN
		SELECT 'No existe en la tabla personas la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
       START TRANSACTION;
    
			UPDATE Personas SET Nombres = pNombres, Telefono = pTelefono WHERE  IdPersonas = pIdPersonas;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_proveedor`(pIdPersonas int, pNombres varchar(30), pTelefono char(10))
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
      -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el proveedor' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT * FROM Proveedores WHERE IdProveedor = pIdPersonas) THEN
		SELECT 'No existe un proveedor en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
			UPDATE Personas SET Nombres = pNombres, Telefono = pTelefono WHERE  IdPersonas = pIdPersonas;
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
         COMMIT;       
		SELECT 'OK' AS Mensaje;


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

-- Dump completed on 2020-03-01 22:55:28
