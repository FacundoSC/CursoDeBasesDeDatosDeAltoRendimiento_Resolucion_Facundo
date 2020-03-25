
CREATE TABLE `aud_Proveedores` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdProveedor` int NOT NULL,
`NombreProveedor` varchar(30) NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

CREATE TABLE `aud_Personas` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdPersona` int NOT NULL,
`Telefono`  char(10) NOT NULL,
`EstadoPer`  char(1) NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Personas`;
SELECT * FROM `aud_Proveedores`;
SELECT * FROM proveedores;

DROP TRIGGER IF EXISTS `svic`.`Personas_AFTER_INSERT`;
DROP TRIGGER IF EXISTS `svic`.`Proveedores_AFTER_INSERT`;


DELIMITER $$
CREATE TRIGGER `Personas_AFTER_INSERT` AFTER INSERT ON `Personas` FOR EACH ROW BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdPersona, NEW.Telefono, NEW.EstadoPer);
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `Proveedores_AFTER_INSERT` AFTER INSERT ON `Proveedores` FOR EACH ROW BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdProveedor, NEW.NombreProveedor);
END$$
DELIMITER ;
call ssp_listar_proveedores();
call ssp_dame_proveedor(1);



-- Trigger update
DROP TRIGGER IF EXISTS `Proveedores_AFTER_UPDATE`;
DELIMITER $$
CREATE DEFINER = CURRENT_USER TRIGGER `Proveedores_AFTER_UPDATE` AFTER UPDATE ON `Proveedores` FOR EACH ROW
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
END$$
DELIMITER ;


-- Trigger update
DROP TRIGGER IF EXISTS `Personas_AFTER_UPDATE`;
DELIMITER $$
CREATE DEFINER = CURRENT_USER TRIGGER `Personas_AFTER_UPDATE` AFTER UPDATE ON `Personas` FOR EACH ROW
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
END$$
DELIMITER ;

call ssp_alta_proveedor('Mercado','4922061', 'facundoc', '192.168.2.1','firefox', 'SVIC');

call ssp_modifica_proveedor(3,'amazon','3815935909', 'facundoc', '192.168.2.1','firefox', 'SVIC');

call ssp_borra_proveedor(4,'facundoc', '192.168.2.1','firefox', 'SVIC');

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

call ssp_autocompletar_proveedores('Merc','N');



