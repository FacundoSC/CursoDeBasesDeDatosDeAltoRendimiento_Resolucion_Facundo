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
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(120) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_clientes`
--

LOCK TABLES `aud_clientes` WRITE;
/*!40000 ALTER TABLE `aud_clientes` DISABLE KEYS */;
INSERT INTO `aud_clientes` VALUES (1,'2020-03-03 22:38:51','root','localhost',NULL,'localhost',NULL,'I',56,'cordoba','mica@gmail.com'),(2,'2020-03-03 23:00:36','root','localhost',NULL,'localhost',NULL,'A',56,'cordoba','mica@gmail.com'),(3,'2020-03-03 23:00:36','root','localhost',NULL,'localhost',NULL,'D',56,'cordoba','miKa@gmail.com'),(4,'2020-03-03 23:31:38','root','localhost',NULL,'localhost',NULL,'B',20,'Birch','nbirchj@twitter.com');
/*!40000 ALTER TABLE `aud_clientes` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Apellidos` varchar(30) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Password` char(32) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_empleados`
--

LOCK TABLES `aud_empleados` WRITE;
/*!40000 ALTER TABLE `aud_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `aud_empleados` ENABLE KEYS */;
UNLOCK TABLES;

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
  `IdPersonas` int(11) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Telefono` char(10) NOT NULL,
  `EstadoPer` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_personas`
--

LOCK TABLES `aud_personas` WRITE;
/*!40000 ALTER TABLE `aud_personas` DISABLE KEYS */;
INSERT INTO `aud_personas` VALUES (1,'2020-03-02 12:23:42','root','localhost',NULL,'localhost',NULL,'I',36,'Calypso','8066124279','A'),(2,'2020-03-02 12:30:04','root','localhost',NULL,'localhost',NULL,'A',36,'Calypso','8066124279','A'),(3,'2020-03-02 12:30:04','root','localhost',NULL,'localhost',NULL,'D',36,'Facundo Sebastian','8066124279','A'),(4,'2020-03-02 12:37:56','root','localhost',NULL,'localhost',NULL,'I',37,'Franco','1231231345','A'),(5,'2020-03-02 12:37:57','facundo','192.168.3.2','Chrome V92.5','SVIC',NULL,'I',37,'Franco','1231231345','A'),(6,'2020-03-02 12:48:09','facundoc','192.168.0,1','firefox','SIS','CAMBIA','A',37,'Franco','1231231345','A'),(7,'2020-03-02 12:48:09','root','localhost',NULL,'localhost',NULL,'A',37,'Franco','1231231345','A'),(8,'2020-03-02 12:48:09','root','localhost',NULL,'localhost',NULL,'D',37,'Roman','1231451234','A'),(9,'2020-03-02 12:48:09','facundoc','192.168.0,1','firefox','SIS','CAMBIA','D',37,'Roman','1231451234','A'),(10,'2020-03-02 13:28:50','root','localhost',NULL,'localhost',NULL,'I',38,'ASROCK','1231231345','A'),(11,'2020-03-02 13:28:50','facundo','192.168.3.2','Chrome V92.5','SVIC',NULL,'I',38,'ASROCK','1231231345','A'),(12,'2020-03-02 13:48:00','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','A',38,'ASROCK','1231231345','A'),(13,'2020-03-02 13:48:00','root','localhost',NULL,'localhost',NULL,'A',38,'ASROCK','1231231345','A'),(14,'2020-03-02 13:48:00','root','localhost',NULL,'localhost',NULL,'D',38,'Roman','1231451234','A'),(15,'2020-03-02 13:48:00','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','D',38,'Roman','1231451234','A'),(19,'2020-03-02 13:57:52','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','A',38,'Roman','1231451234','A'),(20,'2020-03-02 13:57:52','root','localhost',NULL,'localhost',NULL,'A',38,'Roman','1231451234','A'),(21,'2020-03-02 13:57:52','root','localhost',NULL,'localhost',NULL,'D',38,'ASr','1231451234','A'),(22,'2020-03-02 13:57:52','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','D',38,'ASr','1231451234','A'),(23,'2020-03-02 19:35:12','facundoc','localhost','firefox','sis','BORRAR','B',38,'ASr','1231451234','A'),(24,'2020-03-02 19:35:12','root','localhost',NULL,'localhost',NULL,'B',38,'ASr','1231451234','A'),(25,'2020-03-02 19:52:23','facundoc','localhost','firefox','sis','CAMBIA','A',33,'Facundo','232341243','A'),(26,'2020-03-02 19:52:23','root','localhost',NULL,'localhost',NULL,'A',33,'Facundo','232341243','A'),(27,'2020-03-02 19:52:23','root','localhost',NULL,'localhost',NULL,'D',33,'Facundo','232341243','A'),(28,'2020-03-02 19:52:23','facundoc','localhost','firefox','sis','CAMBIA','D',33,'Facundo','232341243','A'),(29,'2020-03-02 19:58:47','root','localhost',NULL,'localhost',NULL,'A',33,'Facundo','232341243','A'),(30,'2020-03-02 19:58:47','root','localhost',NULL,'localhost',NULL,'D',33,'ASROCK','232341243','A'),(31,'2020-03-02 20:05:40','facundoc','localhost','firefox','sis','CAMBIA','A',33,'ASROCK','232341243','A'),(32,'2020-03-02 20:05:40','root','localhost',NULL,'localhost',NULL,'A',33,'ASROCK','232341243','A'),(33,'2020-03-02 20:05:40','root','localhost',NULL,'localhost',NULL,'D',33,'Facundo','232341243','A'),(34,'2020-03-02 20:05:40','facundoc','localhost','firefox','sis','CAMBIA','D',33,'Facundo','232341243','A'),(35,'2020-03-02 20:10:17','facundoc','localhost','firefox','sis','CAMBIA','A',37,'Roman','1231451234','A'),(36,'2020-03-02 20:10:17','root','localhost',NULL,'localhost',NULL,'A',37,'Roman','1231451234','A'),(37,'2020-03-02 20:10:17','root','localhost',NULL,'localhost',NULL,'D',37,'Facundo','232341243','A'),(38,'2020-03-02 20:10:17','facundoc','localhost','firefox','sis','CAMBIA','D',37,'Facundo','232341243','A'),(39,'2020-03-02 20:11:04','facundoc','localhost','firefox','sis','CAMBIA','A',37,'Facundo','232341243','A'),(40,'2020-03-02 20:11:04','root','localhost',NULL,'localhost',NULL,'A',37,'Facundo','232341243','A'),(41,'2020-03-02 20:11:04','root','localhost',NULL,'localhost',NULL,'D',37,'Facundo','232341243','A'),(42,'2020-03-02 20:11:04','facundoc','localhost','firefox','sis','CAMBIA','D',37,'Facundo','232341243','A'),(43,'2020-03-02 20:17:32','facundoc','localhost','firefox','sis','CAMBIA','A',37,'Facundo','232341243','A'),(44,'2020-03-02 20:17:32','root','localhost',NULL,'localhost',NULL,'A',37,'Facundo','232341243','A'),(45,'2020-03-02 20:17:32','root','localhost',NULL,'localhost',NULL,'D',37,'Faz','232341243','A'),(46,'2020-03-02 20:17:32','facundoc','localhost','firefox','sis','CAMBIA','D',37,'Faz','232341243','A'),(47,'2020-03-02 20:51:46','root','localhost',NULL,'localhost',NULL,'I',38,'Crist LLC','3045162274','A'),(48,'2020-03-02 20:53:05','root','localhost',NULL,'localhost',NULL,'I',39,'White-Romaguera','8464622579','A'),(49,'2020-03-02 21:05:03','root','localhost',NULL,'localhost',NULL,'B',31,'facundo','2342123','A'),(50,'2020-03-02 21:05:16','root','localhost',NULL,'localhost',NULL,'B',32,'franco','2342123','A'),(51,'2020-03-02 21:05:22','root','localhost',NULL,'localhost',NULL,'B',33,'Facundo','232341243','A'),(52,'2020-03-02 21:05:38','root','localhost',NULL,'localhost',NULL,'B',34,'ASUS','232341243','A'),(53,'2020-03-02 21:05:50','root','localhost',NULL,'localhost',NULL,'I',31,'Botsford-Terry','7017009318','A'),(54,'2020-03-02 21:05:55','root','localhost',NULL,'localhost',NULL,'I',32,'Crona, Kiehn and Schumm','6233018685','A'),(55,'2020-03-02 21:06:00','root','localhost',NULL,'localhost',NULL,'I',33,'Satterfield-Bartell','5326254966','A'),(56,'2020-03-02 21:06:07','root','localhost',NULL,'localhost',NULL,'I',34,'Waelchi-Sanford','1875369767','A'),(57,'2020-03-02 21:07:55','root','localhost',NULL,'localhost',NULL,'I',40,'Homenick and Sons','1912705510','A'),(58,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',41,'Sawayn-Zemlak','2632220538','A'),(59,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',42,'Fahey-Pfeffer','2502974002','A'),(60,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',43,'Smitham-Howell','6909740027','A'),(61,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',44,'Schimmel-Gulgowski','6118324703','A'),(62,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',45,'Padberg-Pacocha','5796276432','A'),(63,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',46,'O\'Conner LLC','7117869541','A'),(64,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',47,'Cormier and Sons','1722423421','A'),(65,'2020-03-02 21:08:06','root','localhost',NULL,'localhost',NULL,'I',48,'Grady Inc','8534888986','A'),(66,'2020-03-02 21:08:07','root','localhost',NULL,'localhost',NULL,'I',49,'Mosciski, Metz and Mosciski','3113270565','A'),(67,'2020-03-02 21:08:07','root','localhost',NULL,'localhost',NULL,'I',50,'Cartwright Group','6233913065','A'),(68,'2020-03-03 20:13:41','root','localhost',NULL,'localhost',NULL,'I',51,'roman','1231451237','A'),(69,'2020-03-03 20:16:01','root','localhost',NULL,'localhost',NULL,'I',52,'roman','1231451237','A'),(70,'2020-03-03 20:17:21','root','localhost',NULL,'localhost',NULL,'I',53,'roman','1231451237','A'),(71,'2020-03-03 20:23:56','root','localhost',NULL,'localhost',NULL,'I',54,'roman','1231451237','A'),(72,'2020-03-03 20:23:56','facundo','localhost','firefox','sicv',NULL,'I',54,'roman','1231451237','A'),(73,'2020-03-03 20:25:13','root','localhost',NULL,'localhost',NULL,'I',55,'roman','1231451237','A'),(74,'2020-03-03 22:38:51','root','localhost',NULL,'localhost',NULL,'I',56,'micaela','1231451234','A'),(75,'2020-03-03 22:38:51','facundo','localhost','firefox','sirv',NULL,'I',56,'micaela','1231451234','A'),(76,'2020-03-03 23:00:36','facundo','localhost','firefox','sirv','CAMBIA','A',56,'micaela','1231451234','A'),(77,'2020-03-03 23:00:36','root','localhost',NULL,'localhost',NULL,'A',56,'micaela','1231451234','A'),(78,'2020-03-03 23:00:36','root','localhost',NULL,'localhost',NULL,'D',56,'micaela','1231451234','A'),(79,'2020-03-03 23:00:36','facundo','localhost','firefox','sirv','CAMBIA','D',56,'micaela','1231451234','A'),(82,'2020-03-03 23:29:51','facundo','localhost','firefox','sirv','BORRAR','B',56,'micaela','1231451234','A'),(83,'2020-03-03 23:29:51','root','localhost',NULL,'localhost',NULL,'B',56,'micaela','1231451234','A'),(84,'2020-03-03 23:31:38','facundo','localhost','firefox','sirv','BORRAR','B',20,'Abey','9551263967','A'),(85,'2020-03-03 23:31:38','root','localhost',NULL,'localhost',NULL,'B',20,'Abey','9551263967','A');
/*!40000 ALTER TABLE `aud_personas` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Precio` decimal(10,0) NOT NULL,
  `EstadoProd` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_productos`
--

LOCK TABLES `aud_productos` WRITE;
/*!40000 ALTER TABLE `aud_productos` DISABLE KEYS */;
INSERT INTO `aud_productos` VALUES (1,'2020-03-03 17:58:22','root','localhost',NULL,'localhost',NULL,'I',11,1,'kinstong 16G',460,'A'),(2,'2020-03-03 18:25:11','root','localhost',NULL,'localhost',NULL,'A',10,1,'kinstong 8G',120,'A'),(3,'2020-03-03 18:25:11','root','localhost',NULL,'localhost',NULL,'D',10,1,'KINGSTON',240,'A');
/*!40000 ALTER TABLE `aud_productos` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_proveedores`
--

LOCK TABLES `aud_proveedores` WRITE;
/*!40000 ALTER TABLE `aud_proveedores` DISABLE KEYS */;
INSERT INTO `aud_proveedores` VALUES (1,'2020-03-02 13:18:58','root','localhost',NULL,'localhost',NULL,'I',1),(2,'2020-03-02 13:21:54','root','localhost',NULL,'localhost',NULL,'I',37),(3,'2020-03-02 13:28:50','root','localhost',NULL,'localhost',NULL,'I',38),(4,'2020-03-02 13:28:50','facundo','192.168.3.2','Chrome V92.5','SVIC',NULL,'I',38),(5,'2020-03-02 13:48:00','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','A',38),(6,'2020-03-02 13:48:00','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','D',38),(8,'2020-03-02 13:57:52','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','A',38),(9,'2020-03-02 13:57:52','facundoc','192.168.0,1','firroveeefox','SIS','CAMBIA','D',38),(10,'2020-03-02 19:11:26','root','localhost',NULL,'localhost',NULL,'B',38),(11,'2020-03-02 19:12:56','root','localhost',NULL,'localhost',NULL,'I',38),(12,'2020-03-02 19:35:12','facundoc','localhost','firefox','sis','BORRAR','B',38),(13,'2020-03-02 19:35:12','root','localhost',NULL,'localhost',NULL,'B',38),(14,'2020-03-02 20:10:17','facundoc','localhost','firefox','sis','CAMBIA','A',37),(15,'2020-03-02 20:10:17','facundoc','localhost','firefox','sis','CAMBIA','D',37),(16,'2020-03-02 20:11:04','facundoc','localhost','firefox','sis','CAMBIA','A',37),(17,'2020-03-02 20:11:04','facundoc','localhost','firefox','sis','CAMBIA','D',37),(18,'2020-03-02 20:17:32','facundoc','localhost','firefox','sis','CAMBIA','A',37),(19,'2020-03-02 20:17:32','root','localhost',NULL,'localhost',NULL,'A',37),(20,'2020-03-02 20:17:32','root','localhost',NULL,'localhost',NULL,'D',37),(21,'2020-03-02 20:17:32','facundoc','localhost','firefox','sis','CAMBIA','D',37),(22,'2020-03-02 21:11:12','root','localhost',NULL,'localhost',NULL,'B',1),(23,'2020-03-02 21:11:23','root','localhost',NULL,'localhost',NULL,'B',37),(24,'2020-03-02 21:11:33','root','localhost',NULL,'localhost',NULL,'I',31),(25,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',32),(26,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',33),(27,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',34),(28,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',35),(29,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',36),(30,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',37),(31,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',38),(32,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',39),(33,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',40),(34,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',41),(35,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',42),(36,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',43),(37,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',44),(38,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',45),(39,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',46),(40,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',47),(41,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',48),(42,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',49),(43,'2020-03-02 21:11:45','root','localhost',NULL,'localhost',NULL,'I',50);
/*!40000 ALTER TABLE `aud_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `aud_ventas`
--

DROP TABLE IF EXISTS `aud_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_ventas` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdVenta` bigint(20) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `FechaVenta` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_ventas`
--

LOCK TABLES `aud_ventas` WRITE;
/*!40000 ALTER TABLE `aud_ventas` DISABLE KEYS */;
INSERT INTO `aud_ventas` VALUES (1,'2020-03-02 22:48:55','root','localhost',NULL,'localhost',NULL,'I',3,1,29,'2020-03-02 22:48:55'),(2,'2020-03-02 23:13:37','root','localhost',NULL,'localhost',NULL,'A',3,1,29,'2020-03-02 22:48:55'),(3,'2020-03-02 23:13:37','root','localhost',NULL,'localhost',NULL,'D',3,1,29,'2020-03-02 23:13:37');
/*!40000 ALTER TABLE `aud_ventas` ENABLE KEYS */;
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
INSERT INTO `clientes` VALUES (1,'Muldoon','nmuldoon0@usnews.com'),(2,'Gearty','rgearty1@histats.com'),(3,'Collett','bcollett2@webnode.com'),(4,'Ripley','aripley3@plala.or.jp'),(5,'McLoughlin','omcloughlin4@nba.com'),(6,'Monkhouse','mmonkhouse5@comcast.net'),(7,'McComas','bmccomas6@youtu.be'),(8,'Tye','otye7@nih.gov'),(9,'Fermin','efermin8@godaddy.com'),(10,'Cape','tcape9@mediafire.com'),(11,'Parlott','cparlotta@fc2.com'),(12,'Berndtsson','mberndtssonb@illinois.edu'),(13,'Easson','leassonc@vinaora.com'),(14,'Scholes','pscholesd@apache.org'),(15,'Dionis','adionise@tripadvisor.com'),(16,'Stainsby','estainsbyf@go.com'),(17,'Macourek','lmacourekg@un.org'),(18,'Ropartz','cropartzh@jalbum.net'),(19,'MacGaughey','mmacgaugheyi@weibo.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
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
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdCliente,NEW.Apellidos,NEW.Email);
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
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
     OLD.IdCliente,OLD.Apellidos,OLD.Email);
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
      NEW.IdCliente,NEW.Apellidos,NEW.Email);
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
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
     OLD.IdCliente,OLD.Apellidos,OLD.Email);
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
INSERT INTO `empleados` VALUES (21,3,'Gouth','sgouth0','Y4i5R8Z1j','2018-08-17 00:00:00'),(22,3,'Nurny','cnurny1','hx8gPFx0uz','2018-06-29 00:00:00'),(23,3,'Shafier','bshafier2','1rYHuyPpSdv','2018-09-06 00:00:00'),(24,3,'Semerad','bsemerad3','yiZSrbL6','2019-04-03 00:00:00'),(25,3,'Yellep','byellep4','BgEnqQ','2020-01-18 00:00:00'),(26,3,'Pentony','jpentony5','4rcZ47Mc','2019-12-12 00:00:00'),(27,3,'Bastone','rbastone6','3L9b2G','2019-10-10 00:00:00'),(28,3,'Hudson','lhudson7','qSWJGXUsIl','2019-11-07 00:00:00'),(29,3,'Armer','earmer8','vA8K2ZU8db','2019-04-02 00:00:00'),(30,3,'Tunsley','ftunsley9','YsJW8q7N4a','2019-04-13 00:00:00'),(53,1,'cordoba','Roman2022','1c9180e6a273be7447e9eb77f8108119','2020-03-03 20:17:21'),(54,1,'cordoba','Roman2023','1c9180e6a273be7447e9eb77f8108119','2020-03-03 20:23:56');
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
INSERT INTO `personas` VALUES (1,'Aurelea','8495260912','A'),(2,'Faydra','7004161197','A'),(3,'Osgood','5248337355','A'),(4,'Mabelle','1202897143','A'),(5,'Welbie','3157109443','A'),(6,'Goldie','5281451401','A'),(7,'Falito','1382575195','A'),(8,'Kiah','6728369979','A'),(9,'Calypso','8066124279','A'),(10,'Gayleen','6689741164','A'),(11,'Lodovico','7157413705','A'),(12,'Irvin','5067413092','A'),(13,'Eleonora','5885744822','A'),(14,'Free','3852269288','A'),(15,'Krysta','1554682114','A'),(16,'Georgie','6757808965','A'),(17,'Amie','1428260357','A'),(18,'Mitch','5911824215','A'),(19,'Manny','9111087487','A'),(21,'Claude','4098307131','A'),(22,'Sherilyn','3779169370','A'),(23,'Arel','9929379023','A'),(24,'Munroe','2042045246','A'),(25,'Laurette','4412185322','A'),(26,'Arnie','2036125932','A'),(27,'Adelaide','5582369524','A'),(28,'Waylon','4329673188','A'),(29,'Chris','7919615305','A'),(30,'Willabella','6996544094','A'),(31,'Botsford-Terry','7017009318','A'),(32,'Crona, Kiehn and Schumm','6233018685','A'),(33,'Satterfield-Bartell','5326254966','A'),(34,'Waelchi-Sanford','1875369767','A'),(35,'Calypso','8066124279','A'),(36,'Facundo Sebastian','8066124279','A'),(37,'Faz','232341243','A'),(38,'Crist LLC','3045162274','A'),(39,'White-Romaguera','8464622579','A'),(40,'Homenick and Sons','1912705510','A'),(41,'Sawayn-Zemlak','2632220538','A'),(42,'Fahey-Pfeffer','2502974002','A'),(43,'Smitham-Howell','6909740027','A'),(44,'Schimmel-Gulgowski','6118324703','A'),(45,'Padberg-Pacocha','5796276432','A'),(46,'O\'Conner LLC','7117869541','A'),(47,'Cormier and Sons','1722423421','A'),(48,'Grady Inc','8534888986','A'),(49,'Mosciski, Metz and Mosciski','3113270565','A'),(50,'Cartwright Group','6233913065','A'),(51,'roman','1231451237','A'),(52,'roman','1231451237','A'),(53,'roman','1231451237','A'),(54,'roman','1231451237','A'),(55,'roman','1231451237','A');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;
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
    NEW.IdPersonas, NEW.Nombres,NEW.Telefono,NEW.EstadoPer);
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
    OLD.IdPersonas, OLD.Nombres,OLD.Telefono,OLD.EstadoPer);
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdPersonas, NEW.Nombres,NEW.Telefono,NEW.EstadoPer);
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
     OLD.IdPersonas, OLD.Nombres,OLD.Telefono,OLD.EstadoPer);
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
INSERT INTO `productos` VALUES (10,1,'KINGSTON',240,'A'),(11,1,'kinstong 16G',460,'A');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
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
INSERT INTO `proveedores` VALUES (31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
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
    NEW.IdProveedor);
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
    OLD.IdProveedor);
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdProveedor);
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
    OLD.IdProveedor);
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
  KEY `Ref710` (`IdCliente`),
  KEY `Ref411` (`IdEmpleado`),
  CONSTRAINT `RefClientes103` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`IdCliente`),
  CONSTRAINT `RefEmpleados113` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Tabla que almacena en el sistema  las ventas realizadas por los empleados a los clientes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (3,1,29,'2020-03-02 23:13:37');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Ventas_AFTER_INSERT` AFTER INSERT ON `Ventas` FOR EACH ROW BEGIN
	INSERT INTO aud_Ventas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdVenta, NEW.IdCliente,NEW.IdEmpleado,NEW.FechaVenta);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Ventas_AFTER_UPDATE` AFTER UPDATE ON `Ventas` FOR EACH ROW
BEGIN
	INSERT INTO aud_Ventas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdVenta, OLD.IdCliente,OLD.IdEmpleado,OLD.FechaVenta);
	INSERT INTO aud_Ventas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdVenta, NEW.IdCliente,NEW.IdEmpleado,NEW.FechaVenta);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_activar_producto`(pIdProducto smallint)
SALIR:BEGIN
	/*
    Permite cambiar el estado de un producto   a A: Activo siempre y cuando no  esté activo ya.
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_cliente`(pNombres varchar(30),pApellido varchar (30),pEmail varchar(120),pTelefono char (10), pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
	/*
    Permite dar de alta un cliente controlando que el Nombre,Apellido, Telefono y el email  no sean vacios , ni  NULOS. Controla que el email no exista.
Lo da de alta  con estado A: Activo. Devuelve OK  + Id o el mensaje de error en Mensaje 
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
		SELECT 'Debe proveer un nombre para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el apellido sea obligatorio 
	IF pApellido = '' OR pApellido IS NULL THEN
		SELECT 'Debe proveer un apellido para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el email sea obligatorio 
	IF pEmail = '' OR pEmail IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el exista un email  
	IF EXISTS(SELECT * FROM Clientes WHERE Email = pEmail) THEN
		SELECT 'Ya existe un cliente con ese email ' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
      START TRANSACTION;
    	SET pIdPersonas = 1 + (SELECT COALESCE(MAX(IdPersonas),0)
								FROM Personas);
		INSERT INTO Personas VALUES(pIdPersonas, pNombres,pTelefono,'A');
        INSERT INTO Clientes VALUES(pIdPersonas,pApellido,pEmail);
        
         -- Audita aud_Personas
       INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
         
        SELECT 'OK' AS Mensaje, pIdPersonas AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_empleado`(pNombres varchar(30),pTelefono char (10), pIdRol tinyint,pApellido varchar(30),pUsuario varchar(30), pPassword char(32), pFechaIngreso datetime, pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR:BEGIN
	/*
Permite dar de alta un empleado controlando que el Nombre,Apellido, Telefono,Usuario,Password,FechaIngreso y el idRol no sean vacios , ni  NULOS. Controla que el usuario no exista y codifica con MD5 el password para ser almacenarse.
Lao da de alta  con estado A: Activa. Devuelve OK  + Id o el mensaje de error en Mensaje     
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
		SELECT 'Debe proveer un nombre para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el apellido sea obligatorio 
	IF pApellido = '' OR pApellido IS NULL THEN
		SELECT 'Debe proveer un apellido para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el rol sea obligatorio 
	IF pIdRol = '' OR pIdRol IS NULL THEN
		SELECT 'Debe proveer un rol  para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el usuario sea obligatorio 
	IF pUsuario = '' OR pUsuario IS NULL THEN
		SELECT 'Debe proveer un nombre de usuario para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el exista un empleado  con ese usuario
	IF EXISTS(SELECT * FROM Empleados WHERE Usuario = pUsuario) THEN
		SELECT 'Ya existe un empleado con ese usuario ' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
      -- Controla que el password sea obligatorio 
	IF pPassword = '' OR pPassword IS NULL THEN
		SELECT 'Debe proveer un password  para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que la fecha de ingreso sea obligatoria 
	IF pFechaIngreso = '' OR pFechaIngreso IS NULL THEN
		SELECT 'Debe proveer una fecha de ingreso  para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
     START TRANSACTION;
    	SET pIdPersonas = 1 + (SELECT COALESCE(MAX(IdPersonas),0)
								FROM Personas);
		INSERT INTO Personas VALUES(pIdPersonas, pNombres,pTelefono,'A');
        INSERT INTO Empleados VALUES(pIdPersonas,pIdRol,pApellido,pUsuario,MD5(pPassword),pFechaIngreso);
        
         -- Audita aud_Personas
       INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
         
        SELECT 'OK' AS Mensaje, pIdPersonas AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
    COMMIT;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_persona`( pNombres varchar(30),pTelefono char (10),pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
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
        
         -- Audita
       INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
        SELECT 'OK' AS Mensaje, pIdPersonas AS Id;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_producto`(pIdRubro tinyint, pNombreProducto varchar(30),pPrecio decimal(10,0))
SALIR:BEGIN
	/*
    Permite dar de alta un producto controlando que el nombre no exista ya y que el nombre , el precio y el estadoProd no esten vacios , ni con el estado NULL. Lo da de alta  con estadoProd A: Activo.
    Devuelve OK + Id o el mensaje de error en Mensaje.
    */
     DECLARE pIdProducto smallint ;
    -- Manejo de error en la transacción

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		 SHOW ERRORS;
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
  IF EXISTS(SELECT * FROM Productos WHERE NombreProducto = pNombreProducto) THEN
		SELECT 'ya existe  un producto con ese nombre' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el precio del producto sea obligatorio 
	IF pPrecio = 0.0 OR pPrecio IS NULL THEN
		SELECT 'Debe proveer un precio para el producto' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    START TRANSACTION;
    	SET  pIdProducto = 1 + (SELECT COALESCE(MAX(IdProducto),0)
								FROM Productos);
		INSERT INTO Productos VALUES(pIdProducto,pIdRubro,pNombreProducto,pPrecio,'A');
	
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_proveedor`(pNombres varchar(30),pTelefono char (10),pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
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
        
         -- Audita aud_Personas
       INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
             -- Audita aud_Proveedores
       INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, NULL, 'I', 
			 Proveedores.* FROM Proveedores WHERE IdProveedor = pIdPersonas;
        
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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_alta_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_alta_venta`(pIdCliente int, pIdEmpleado int, pFechaVenta dateTime)
SALIR:BEGIN
     /*
     Permite dar de alta una venta controlando que la fecha y hora no exista ya y sean unicas .
     Devuelve OK + Id o el mensaje de error en Mensaje.
	
	 */
     
     DECLARE pIdVenta Bigint;
    -- Manejo de error en la transacción
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje,
				NULL AS Id;
	END;
    
    -- Controla que el identificador del cliente  sea obligatorio
	IF pIdEmpleado = '' OR pIdEmpleado IS NULL THEN
		SELECT 'Debe proveer un identificador de empleado obligatorio' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el identificador del cliente  sea obligatorio
	IF pIdCliente = '' OR pIdCliente IS NULL THEN
		SELECT 'Debe proveer un identificador de cliente obligatorio' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que la fecha sea obligatoria
	IF pFechaVenta = '' OR pFechaVenta IS NULL THEN
		SELECT 'Debe proveer una fecha para registrar la venta' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    START TRANSACTION;
    	
		INSERT INTO Ventas VALUES(LAST_INSERT_ID(), pIdCliente,pIdEmpleado,pFechaVenta);
        
        SELECT 'OK' AS Mensaje, LAST_INSERT_ID()  AS Id;
        -- SELECT CONCAT('OK', pIdCategoria) AS Mensaje;
    COMMIT;
    

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
		 SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT * FROM Clientes WHERE IdCliente = pIdCliente) THEN
		SELECT 'No existe un cliente en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que el proveedor no tenga compras asociadas
	IF EXISTS(SELECT * FROM Ventas  AS Ven JOIN Clientes AS Cl  ON Ven.IdCliente = pIdCliente) THEN
		SELECT 'No puede borrar el cliente. Existen ventas asociadas.' AS Mensaje;
		LEAVE SALIR;
    END IF;
   
     START TRANSACTION;
     
      
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Personas.* FROM Personas WHERE IdPersonas = pIdCliente;
         -- Borra Personas
         DELETE FROM Clientes WHERE IdCliente = pIdCliente;
        DELETE FROM Personas WHERE IdPersonas = pIdCliente;
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
    
         DECLARE pNombres varchar(30); 
         DECLARE pTelefono char(10);

     DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		-- SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que no exista la posicion en la tabla proveedor  a modificar
	IF  NOT EXISTS(SELECT * FROM Proveedores WHERE IdProveedor = pIdProveedor) THEN
		SELECT 'No existe un proveedor en  la posicion que se desea modificar' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
      -- Controla que el proveedor no tenga compras asociadas
	IF EXISTS(SELECT * FROM Compras  AS Com JOIN Proveedores  ON Com.IdProveedor = pIdProveedor) THEN
		SELECT 'No puede borrar el proveedor. Existen compras asociadas.' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
    SET pNombres = (SELECT Nombres FROM Personas WHERE IdPersonas = pIdProveedor);
	SET pTelefono = (SELECT Telefono FROM Personas WHERE IdPersonas = pIdProveedor);

    
     START TRANSACTION;
     
      -- Audita antes
        INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Proveedores.* FROM Proveedores WHERE IdProveedor = pIdProveedor;
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'BORRAR', 'B', 
				Personas.* FROM Personas WHERE IdPersonas = pIdProveedor;
     
        -- Borra Proveedores
        DELETE FROM Proveedores WHERE IdProveedor = pIdProveedor;
         -- Borra Personas
        DELETE FROM Personas WHERE IdPersonas = pIdProveedor;
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
SALIR:BEGIN
/*
 Procedimiento que sirve para instanciar un cliente desde la base de datos .
*/

-- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
       -- Controla que no exista la posicion en la tabla clientes  a modificar
	IF  NOT EXISTS(SELECT * FROM Clientes WHERE IdCliente = pIdCliente) THEN
		SELECT 'No existe un cliente  en  la posicion que se busca' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
	SELECT clientes.IdCliente,Personas.Nombres,Clientes.Apellidos,Clientes.Email,Personas.Telefono,Personas.EstadoPer
    FROM Personas JOIN Clientes ON personas.IdPersonas=clientes.IdCliente and clientes.IdCliente=pIdCliente;


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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_producto`(pIdProducto smallint)
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
    
    SELECT Pro.IdProveedor,Per.Nombres,Per.Telefono,Per.EstadoPer
    FROM Personas AS Per JOIN Proveedores AS Pro ON Per.IdPersonas= pIdProveedor;

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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_dame_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_dame_venta`(pIdVenta bigint)
BEGIN
      /*
       Procedimiento que sirve para instanciar una venta desde la base de datos
      */
	SELECT	*
    FROM	Ventas
    WHERE	IdVenta = pIdVenta;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_inactivar_producto`(pIdProducto smallint)
SALIR:BEGIN
/*
Permite cambiar el estado de el producto a I: inactivo  siempre y cuando no 
    esté inactivo y  cantidades de un producto sea 0 . 
    Devuelve OK o el mensaje de error en Mensaje
*/
IF (SELECT EstadoProd FROM Productos WHERE IdProducto = pIdProducto) = 'I' THEN
		SELECT 'el producto ya está inactivo.' AS Mensaje;
        LEAVE SALIR;
	END IF;
      -- Verifico que no existan cantidades distintas de cero
IF (SELECT CP.CantidadCompra FROM Productos As Pro JOIN Comprasproductos AS CP on CP.IdProducto = pIdProducto) = 0 THEN
		SELECT 'No puede dejar inactivo a este producto .Existen cantidades distintas de 0 (cero).' AS Mensaje;
        LEAVE SALIR; 
--  modificar el estado a inactivo
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
    Permite listar los clientes  ordenados por email .
    */
    -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
	SELECT Cli.IdCliente,Per.Nombres,Cli.Apellidos,Per.Telefono,Cli.Email,Per.EstadoPer
    FROM Personas AS Per JOIN Clientes AS Cli ON Per.IdPersonas = Cli.IdCliente;

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
  SELECT		*
    FROM		Productos
    ORDER BY NombreProducto ;
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
  
    SELECT Pro.IdProveedor,Per.Nombres,Per.Telefono,Per.EstadoPer
    FROM Personas AS Per JOIN Proveedores AS Pro ON Per.IdPersonas = Pro.IdProveedor;
 

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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_listar_ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_ventas`()
BEGIN
	/*
	Permite listar las ventas ordenados por FechaVenta  
    */
    SELECT		*
    FROM		Ventas
    ORDER BY	4;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_cliente`(pIdPersonas int, pNombres varchar(30),pApellido varchar (30),pEmail varchar(120),pTelefono char (10), pCuenta varchar(60), pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR: BEGIN
/*
   Permite modificar un cliente existente, controlando que el Nombre,Apellido, Telefono y el email  no sean vacios , ni  NULOS. Controla que el email no exista
    Devuelve OK o el mensaje de error en Mensaje.
*/

  DECLARE pIdCliente int;
  -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
    -- Controla que el nombre sea obligatorio 
	IF pNombres = '' OR pNombres IS NULL THEN
		SELECT 'Debe proveer un nombre para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el apellido sea obligatorio 
	IF pApellido = '' OR pApellido IS NULL THEN
		SELECT 'Debe proveer un apellido para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    -- Controla que el telefono sea obligatorio 
	IF pTelefono = '' OR pTelefono IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    -- Controla que el email sea obligatorio 
	IF pEmail = '' OR pEmail IS NULL THEN
		SELECT 'Debe proveer un numero telefonico para el empleado' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el exista un email  
	IF EXISTS(SELECT * FROM Clientes WHERE Email = pEmail) THEN
		SELECT 'Ya existe un cliente con ese email ' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    START TRANSACTION;
    
  SET pIdCliente = (SELECT IdPersonas FROM Personas WHERE IdPersonas = pIdPersonas);
     -- Audita antes
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
              
    
		   UPDATE Personas SET Nombres = pNombres, Telefono = pTelefono WHERE  IdPersonas = pIdPersonas;
           UPDATE Clientes SET IdCliente = pIdCliente,Apellidos = pApellido,Email = pEmail WHERE IdCliente = pIdPersonas;
            
			SELECT 'OK' AS Mensaje;
                 -- Audita después
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
			    
            
            
		COMMIT;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_persona`(pIdPersonas int, pNombres varchar(30), pTelefono char(10), pCuenta varchar(60), 
        pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
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
       -- Audita antes
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
    
			UPDATE Personas SET Nombres = pNombres, Telefono = pTelefono WHERE  IdPersonas = pIdPersonas;
			SELECT 'OK' AS Mensaje;
             -- Audita después
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
         COMMIT;       
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_producto`(pIdProducto smallint,pIdRubro tinyint, pNombreProducto varchar(30), pPrecio decimal(10,0))
SALIR:BEGIN
 /*
 Permite modificar un producto existente, controlando que el nombre no exista y que tanto este como el precio y el rubro no sean vacios, ni nulos.
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
    
    -- Controla que no exista un producto con el mismo nombre
	IF EXISTS(SELECT NombreProducto FROM Productos WHERE NombreProducto = pNombreProducto AND IdRubro != pIdRubro ) THEN
		SELECT 'Ya existe un producto con ese nombre' AS Mensaje;
		LEAVE SALIR;
    END IF;
    -- Controla que el rubro sea obligatorio 
	IF pIdRubro = '' OR pIdRubro IS NULL THEN
		SELECT 'Debe proveer un nombre para la persona' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
     -- Controla que el precio del producto sea obligatorio 
	IF pPrecio = 0.0 OR pPrecio IS NULL THEN
		SELECT 'Debe proveer un precio para el producto' AS Mensaje, NULL AS Id;
		LEAVE SALIR;
    END IF;
    
    START TRANSACTION;

			UPDATE Productos SET IdRubro = pIdRubro , NombreProducto = pNombreProducto, Precio = pPrecio WHERE IdProducto = pIdProducto;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_proveedor`(pIdPersonas int, pNombres varchar(30), pTelefono char(10), pCuenta varchar(60), 
        pIP varchar(40), pUserAgent varchar(255), pAplicacion varchar(50))
SALIR: BEGIN
/*
    Permite modificar un proveedor existente, controlando que el nombre y el telefono no sean vacios , ni  NULO.
    Devuelve OK o el mensaje de error en Mensaje.
  */
  
  DECLARE pIdProveedor int;
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
       
       
	START TRANSACTION;
    
  SET pIdProveedor = (SELECT IdPersonas FROM Personas WHERE IdPersonas = pIdPersonas);
     -- Audita antes
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
                -- Audita antes
        INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'A', 
				Proveedores.* FROM Proveedores WHERE IdProveedor = pIdPersonas;
    
		   UPDATE Personas SET Nombres = pNombres, Telefono = pTelefono WHERE  IdPersonas = pIdPersonas;
           UPDATE Proveedores SET IdProveedor = pIdProveedor WHERE IdProveedor = pIdPersonas;
            
			SELECT 'OK' AS Mensaje;
                 -- Audita después
        INSERT INTO aud_Personas
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Personas.* FROM Personas WHERE IdPersonas = pIdPersonas;
			     -- Audita después
        INSERT INTO aud_Proveedores
        SELECT	0, NOW(), pCuenta, pIP, pUserAgent, pAplicacion, 'CAMBIA', 'D', 
				Proveedores.* FROM Proveedores WHERE IdProveedor = pIdPersonas;
            
            
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
/*!50003 DROP PROCEDURE IF EXISTS `ssp_modifica_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modifica_venta`( pIdVenta bigint, pFechaVenta dateTime)
SALIR:BEGIN
  /*
	Permite modificar la fecha de una venta existente, controlando que la fecha no este vacia , ni  nula.
    Devuelve OK o el mensaje de error en Mensaje.
  */
   -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		 SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
		ROLLBACK;
	END;
     -- Controla que el venta exista 
	IF NOT EXISTS(SELECT * FROM Ventas WHERE IdVenta = pIdVenta )  THEN
		SELECT 'la venta que intenta modificar no existe' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
     -- Controla que la fecha  sea obligatoria 
	IF pFechaVenta = '' OR pFechaVenta IS NULL THEN
		SELECT 'Debe proveer una fecha para la venta' AS Mensaje;
		LEAVE SALIR;
    END IF;
    
	START TRANSACTION;

		UPDATE Ventas SET FechaVenta = pFechaVenta WHERE IdVenta = pIdVenta;
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

-- Dump completed on 2020-03-04  0:09:33
