--
-- Table structure for table `aud_productos`
--

DROP TABLE IF EXISTS `aud_productos`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TRIGGER IF EXISTS `svic`.`Productos_AFTER_INSERT`;
DELIMITER ;;
CREATE TRIGGER `Productos_AFTER_INSERT` AFTER INSERT ON `Productos` FOR EACH ROW BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdProducto,NEW.IdRubro, NEW.NombreProducto, NEW.Precio,'A');
END ;;
DELIMITER ;


DROP TRIGGER IF EXISTS `svic`.`Productos_AFTER_UPDATE`;
DELIMITER ;;
 CREATE TRIGGER `Productos_AFTER_UPDATE` AFTER UPDATE ON `Productos` FOR EACH ROW
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
END ;;
DELIMITER ;


DROP TRIGGER IF EXISTS `svic`.`Productos_AFTER_DELETE`;
DELIMITER ;;
CREATE TRIGGER `Productos_AFTER_DELETE` AFTER DELETE ON `Productos` FOR EACH ROW
BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdProducto,OLD.IdRubro, OLD.NombreProducto, OLD.Precio,OLD.EstadoProd);
END ;;
DELIMITER ;



SELECT * FROM Rubros;
SELECT * FROM aud_productos;

call ssp_alta_producto(1,'WD Elements 1TB', 1300.0 ,'facundoc', '192.168.2.1','firefox', 'SVIC');


call ssp_modifica_producto(1,1,'WD Elements 1TB',1350.00,'facundoc', '192.168.2.1','firefox', 'SVIC');

call ssp_listar_productos();

call ssp_dame_producto(1);

call ssp_activar_producto(1);
