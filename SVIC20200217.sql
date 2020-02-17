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
INSERT INTO `rubros` VALUES (1,'pendrive','A'),(2,'discos duros','A'),(3,'discos de estado solidos','A');
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_rubro`(pNombreRubro varchar(30))
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
        SELECT 'OK' AS Mensaje;
    COMMIT;
		

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_rubro`(pIdRubro tinyint, pNombreRubro varchar(30))
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
     
    
	UPDATE Rubros SET NombreRubro = pNombreRubro WHERE IdRubro = pIdRubro;
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

-- Dump completed on 2020-02-17  0:46:11
