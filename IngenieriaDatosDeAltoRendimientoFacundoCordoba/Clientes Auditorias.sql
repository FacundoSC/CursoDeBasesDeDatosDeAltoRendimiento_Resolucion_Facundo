--
-- Table structure for table `aud_clientes`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

SELECT * FROM aud_personasfisicas;

SELECT * FROM aud_clientes;


SELECT * FROM aud_personas;


DROP TRIGGER IF EXISTS `svic`.`Clientes_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Clientes_AFTER_INSERT` AFTER INSERT ON `Clientes` FOR EACH ROW BEGIN
	INSERT INTO aud_clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdCliente,NEW.Email);
END$$


call ssp_alta_cliente('Cordoba','Franco Emanuel','FCordoba@gmail.com','4922061','facundoc', '192.168.2.1','firefox', 'SVIC');

-- Trigger update
DROP TRIGGER IF EXISTS `Clientes_AFTER_UPDATE`;
DELIMITER $$
CREATE DEFINER = CURRENT_USER TRIGGER `Clientes_AFTER_UPDATE` AFTER UPDATE ON `Clientes` FOR EACH ROW
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
END$$
DELIMITER ;

SELECT * FROM Clientes;

call ssp_modifica_cliente(7,'Cordoba','Franco Emanuel','Franko22@gmail.com','4922061','facundoc', '192.168.2.1','firefox', 'SVIC');

call ssp_listar_clientes();

call ssp_dame_cliente(7);


call ssp_autocompletar_empleados( 'cord','S');

-- Trigger delete
DROP TRIGGER IF EXISTS `Clientes_AFTER_DELETE`;
DELIMITER $$
 CREATE TRIGGER `Clientes_AFTER_DELETE` AFTER DELETE ON `Clientes` FOR EACH ROW
BEGIN
	INSERT INTO aud_clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdCliente,OLD.Email);
END$$
DELIMITER ;


call ssp_borra_cliente(7,'facundoc', '192.168.2.1','firefox', 'SVIC');